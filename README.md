# ubuntu_jupyterlab
docker ubuntu 18.04 with python3.7 and jupyter lab

start:
docker run --rm -it -v ~/ubuntu_jupyterlab/:/jupyterfiles -p 8888:8888 trunovpavel/ubuntu_jupyterlab:1
