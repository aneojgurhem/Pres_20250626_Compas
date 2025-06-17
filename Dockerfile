FROM ubuntu

RUN apt-get update && apt-get install texlive-full latexmk -y 
RUN apt-get update && apt-get install just vim git python-is-python3 inkscape -y
RUN apt-get update && apt-get install python3.12-venv python3-pip -y
RUN apt-get update && apt-get install python3-pygments -y
