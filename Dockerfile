FROM ubuntu:18.04 
RUN apt-get -y update \
	&& apt-get install -y vim \
	&& apt-get install -y python3.7 \
	&& apt-get install -y python3-pip \
	&& apt-get install -y curl \
	
	&& pip3 install jupyterlab tqdm plotly pandas ipywidgets \
	&& pip3 install jupyterlab "ipywidgets==7.5"

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN jupyter labextension install jupyterlab-plotly
RUN jupyter labextension install jupyterlab-plotly@4.8.1
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.8.1
ENTRYPOINT jupyterfiles/start_jupyterlab.sh
