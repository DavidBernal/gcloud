FROM google/dart

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y git curl build-essential
RUN apt-get install -y python2.7 python-pip

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
  curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
  apt-get update -y && apt-get install google-cloud-sdk -y
