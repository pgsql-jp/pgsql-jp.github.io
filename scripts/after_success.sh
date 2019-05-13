#!/bin/bash

openssl aes-256-cbc -K $encrypted_ca29f2670d31_key -iv $encrypted_ca29f2670d31_iv -in scripts/deploy_key.enc -out ~/.ssh/id_rsa -d
chmod 600 ~/.ssh/id_rsa
echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
git config --global user.email "jpug-doc@ml.postgresql.jp"
git config --global user.name "Travis CI"
git remote set-url origin git@github.com:pgsql-jp/pgsql-jp.github.io.git
git checkout master

mkdir -p current
rm -R current/*
cp -aR travis/jpug-doc/doc/src/sgml/html current/
cp -a travis/jpug-doc/doc/src/sgml/postgres-A4.pdf current/
