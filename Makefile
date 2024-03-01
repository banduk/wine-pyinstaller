all: build

build: python.exe wine.tar.gz
	docker build -t banduk/wine-pyinstaller:latest .

python.exe:
	wget -O python.exe "https://www.python.org/ftp/python/3.11.7/python-3.11.7.exe"

wine.tar.gz:
	wget -O wine.tar.xz "https://dl.winehq.org/wine/source/9.x/wine-9.3.tar.xz"

publish:
	docker tag 1.0 banduk/wine-pyinstaller
	docker tag latest banduk/wine-pyinstaller
	docker push banduk/wine-pyinstaller
