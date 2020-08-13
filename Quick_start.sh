#!/bin/sh
welcomemsg() { \
	dialog --title "Welcome!" --msgbox "This script will set you up with any project you need ;)" 10 60
	}
getprojectname(){\
	name=$(dialog --inputbox "Enter The project name" 10 60 3>&1 1>&2 2>&3 3>&1) || exit
	mkdir "$name"
	cd "$name"
}
getprojectframework(){\
	FRAMEWORK=$(dialog --inputbox "Enter The project framework \\n\\ Type framework F : flutter , R : react" 10 60 3>&1 1>&2 2>&3 3>&1) || exit
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
}
gitcommit(){/
	git init
	echo "# $name">> README.md
	echo "Initial commits on the project $name" >> README.md
	git add .
	git commit -m "Project created"
}
welcomemsg
getprojectname
getprojectframework
gitcommit




