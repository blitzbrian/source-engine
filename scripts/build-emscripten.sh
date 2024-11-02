sudo apt-get update
sudo apt-get install -y aptitude
sudo aptitude install -y libopenal-dev:i386 libpng-dev:i386 libjpeg-dev:i386 libfreetype6-dev:i386 libfontconfig1-dev:i386 libcurl4-gnutls-dev:i386 libsdl2-dev:i386 zlib1g-dev:i386 libbz2-dev:i386 libedit-dev:i386
emconfigure bash -c "./waf configure -T release -j 16 --emscripten --togles --disable-warns --32bits" &&
./waf build -j 16
