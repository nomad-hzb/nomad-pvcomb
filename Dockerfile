FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair:develop-hzb
USER root
RUN apt-get update
RUN apt-get -y install git
RUN pip install pycurl
USER nomad
COPY plugins.txt plugins.txt
RUN pip install -r plugins.txt
