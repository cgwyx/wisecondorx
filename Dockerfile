FROM conda/miniconda3
#FROM continuumio/miniconda3

RUN conda update --all -y &&\
    conda config --add channels bioconda &&\
    conda config --add channels conda-forge &&\
    conda config --add channels r &&\
    conda install -y -c bioconda/label/cf201901 wisecondorx
    #conda install -y -c bioconda wisecondorx

CMD ["/bin/bash"]
