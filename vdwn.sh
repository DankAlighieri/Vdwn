#!/bin/bash

#cd YOUR/DESIRED/PATH

echo "De qual plataforma está fazendo download? (use apenas 'Youtube' ou 'Instagram')"
read PLATAFORMA

if [[ $PLATAFORMA == "Instagram" ]]; then

	echo "Nome de usuário:"
	read USERNAME
	echo "Link de download:"
	read LINK
	yt-dlp --username $USERNAME $LINK
	echo "Feito."

elif [[ $PLATAFORMA == "Youtube" ]]; then

	echo "Link de download:"
	read LINK
	yt-dlp --remux-video mp4>mkv $LINK
	echo "Feito."
fi
