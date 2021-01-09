FROM conda/miniconda3
#FROM continuumio/miniconda3

RUN conda update --all -y &&\
    conda update -n base -c defaults conda &&\
    conda config --add channels bioconda &&\
    conda config --add channels conda-forge &&\
    conda config --add channels r &&\
    conda create -y python=3.6 &&\
    conda install -y -c bioconda wisecondorx
    #conda install -y -c bioconda/label/cf201901 wisecondorx
    

CMD ["/bin/bash"]
