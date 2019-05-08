FROM ontang/openrefine-provenance-demo:latest

# update orprov-cli
RUN ["/bin/bash", "-c" , "source activate ipykernel_py2 && pip install --upgrade -i https://test.pypi.org/simple/ orprov-cli==0.0.5 && source deactivate"]
RUN ln -s /opt/conda/envs/ipykernel_py2/bin/orprov-cli /opt/conda/bin/

# Copy Notebook file
COPY *.ipynb .

MAINTAINER Nikolaus Parulian <nikolaus.nova@gmail.com>
