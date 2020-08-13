#!/bin/sh
mkdir $1
cd $1

echo "select framework F : flutter , R : react"
read FRAMEWORK
mkdir "Frontend"
cd "Frontend"
case $FRAMEWORK in
	f)
		echo "initializing flutter app"
        flutter create $1
        break
		;;
	r)
		echo "initializing react app"
        npx create-react-app $1
		break
		;;
	*)
		echo "Sorry, I don't understand"
		;;
esac
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