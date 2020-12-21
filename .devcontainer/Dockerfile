# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.145.1/containers/cpp/.devcontainer/base.Dockerfile

# [Choice] Debian / Ubuntu version: debian-10, debian-9
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-${VARIANT}

# [Optional] Uncomment this section to install additional packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install build-essential cmake cppcheck valgrind \
    && apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - 2>/dev/null \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    && apt-get update \
    && apt-get -y install docker-ce-cli \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*