#!/bin/sh
mkdir $1
cd $1
mkdir "Frontend"
cd "Frontend"
flutter create $1
cd ..
mkdir "Backend"
cd "Backend"
mkdir "backbone"
cd ..
git init
echo "# $1">> README.md
echo "Initial commits on the project $1" >> README.md
git add .
git commit -m "Project created"