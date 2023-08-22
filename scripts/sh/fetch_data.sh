# bin/bash

## fetch data from two Github/Gitlab repositories
## one for editions, one for indexes
## editions might container ./data/editions and ./data/meta (optional) folder with TEI/XML files

# remove old data
echo "remove old data"
rm -rf ./data
mkdir ./data

echo "create data folder"
# fetch editions data
wget https://github.com/YOUR-PROJECT-BRANCH-URL-EDITIONS
unzip main
mv YOUR-PROJECT-main/data ./data
rm -rf YOUR-PROJECT-main
rm main.zip

echo "fetch indexes data"
# fetch indexes data
mkdir ./data/indexes
wget https://github.com/YOUR-PROJECT-BRANCH-URL-INDEXES
unzip main
mv YOUR-PROJECT-INDEXES-main/out/*.xml ./data/indexes
rm -rf YOUR-PROJECT-INDEXES-main
rm main.zip

echo "done fetching data"