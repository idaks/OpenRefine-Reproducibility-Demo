FROM ontang/openrefine-provenance-demo:latest

# update orprov-cli
user root
RUN ["/bin/bash", "-c" , "source activate ipykernel_py2 && pip install --upgrade -i https://test.pypi.org/simple/ orprov-cli==0.0.6 && source deactivate"]
RUN ["/bin/bash", "-c" , "source activate ipykernel_py2 && pip install --upgrade jsondiff && source deactivate"]
user jovyan
RUN ln -s /opt/conda/envs/ipykernel_py2/bin/orprov-cli /opt/conda/bin/

# Copy Notebook file
COPY *.ipynb ./
COPY *.md ./

MAINTAINER Nikolaus Parulian <nikolaus.nova@gmail.com>
