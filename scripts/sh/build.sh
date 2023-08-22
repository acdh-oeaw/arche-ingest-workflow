# bash/bin

# build ARCHE's RDF locally
echo "local build"
apt-get update && apt-get install openjdk-11-jre-headless ant -y --no-install-recommend
./scripts/sh/script.sh && pip install -r requirements.txt

echo "create ARCHE's RDF"
ant -f scripts/ant/build_arche.xml

echo "done building"
echo "build location: /arche/arche.rdf (if not defined otherwise see 'scripts/ant/build_arche.xml')"