#!/usr/bin/env bash
rm -rf dist/
parcel build src/test.html --public-url . &&
cd dist
git init
git add .
git commit -m 'init' &&
git remote add origin git@gitee.com:LeahDizon/pikachu.git &&
git branch -M main &&
git push -u origin main -f &&
cd -
