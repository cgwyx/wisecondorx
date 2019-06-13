FROM continuumio/miniconda3

RUN conda update --all -y &&\
    conda config --add channels conda-forge &&\
    conda config --add channels r &&\
    conda config --add channels bioconda &&\
    conda config --set show_channel_urls yes &&\
    conda create -y -n wisecondorx &&\
    conda install -y -n wisecondorx -c bioconda bwa bowtie2 hisat2 samtools
    conda install  -y -n wisecondorx -f -c conda-forge -c bioconda wisecondorx

CMD ["/bin/bash"]
