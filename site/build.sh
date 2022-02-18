#!/usr/bin/env bash

set -e

make html
rm -rf ../docs
mv build/html ../docs
touch ../docs/.nojekyll
echo -n 'drugsniffer.org' > ../docs/CNAME
