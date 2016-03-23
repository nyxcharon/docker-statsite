FROM debian:8.3
RUN apt-get update && apt-get install -y \
    git \
    make \
    gcc \
    python-pip \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --egg SCons
RUN mkdir /code && cd /code && git clone  https://github.com/armon/statsite.git
RUN cd /code/statsite && make && cp statsite /usr/bin/statsite
ENTRYPOINT [ "/usr/bin/statsite" ]
