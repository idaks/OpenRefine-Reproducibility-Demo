FROM ontang/openrefine-provenance-demo:latest


# Copy Notebook file
RUN ln -s /opt/conda/envs/ipykernel_py2/bin/orprov-cli /opt/conda/bin/
COPY *.ipynb .

MAINTAINER Nikolaus Parulian <nikolaus.nova@gmail.com>
