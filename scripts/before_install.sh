#!/bin/bash

mkdir travis
git clone --depth=1 https://github.com/pgsql-jp/jpug-doc.git travis/jpug-doc

mkdir -p ~/.fonts/
cp scripts/fonts/* ~/.fonts/
fc-cache -f -v
