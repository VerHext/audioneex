# DEPRECATED

FROM gitpod/workspace-full

# Install Boost lib
RUN sudo apt-get update \
 && sudo apt-get install -y \
 libboost-all-dev \
