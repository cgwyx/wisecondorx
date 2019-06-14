FROM conda/miniconda3
#FROM continuumio/miniconda3

RUN conda update --all -y &&\
    conda config --add channels bioconda &&\
    conda config --add channels conda-forge &&\
    conda config --add channels r &&\
    conda install -y -c bioconda wisecondorx bwa bowtie2 hisat2 biobambam samtools

CMD ["/bin/bash"]
