FROM mafintosh/docker-adventure-time
RUN apt-get install -qy docker.io libncurses5-dev
RUN npm install -g docker-run@1.3.0 bionode-sam@1.0.1 bionode-ncbi@1.0.2 bionode-sra@1.0.1 bionode-bwa@0.0.9
RUn npm install -g dat@6.8.4
RUN npm install -g tool-stream gasket mafintosh/picture-tube#patch-1 serve json
RUN mkdir -p /pictures

## Installing and Making Samtools
run apt-get install -y build-essential git wget make libgcrypt11-dev zlib1g-dev

run wget 'http://sourceforge.net/projects/samtools/files/samtools/0.1.19/samtools-0.1.19.tar.bz2'

run tar xfv samtools-0.1.19.tar.bz2

run touch .bashrc; echo export "SAMTOOLS_HOME=/samtools-0.1.19" >> .bashrc

run echo export PATH=$SAMTOOLS_HOME:$PATH >> .bashrc

run cd /samtools-0.1.19; make;ln -s /samtools-0.1.19/samtools /usr/local/bin/samtools
ADD welcome.txt /
ADD bob.png /pictures/
ADD .bashrc /root/
ADD .bashrc /
