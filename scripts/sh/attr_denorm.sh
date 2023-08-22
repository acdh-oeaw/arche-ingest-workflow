# bin/bash

echo "add attributes"
add-attributes -g "./data/editions/*.xml" -b "https://id.acdh.oeaw.ac.at/PROJECT-NAME"
# echo "denormalize indices"
# denormalize-indices -f "data/editions/*.xml" -i "data/indexes/*.xml" -m './/tei:rs[@ref]/@ref' -x ".//tei:title[@type='main']/text()"