# DEPRECATED

FROM gitpod/workspace-full

# Install Boost lib
RUN sudo apt-get update \
 && sudo apt-get install -y \
    libboost-all-dev

# Install FFTSS lib
RUN wget https://www.ssisc.org/fftss/dl/fftss-3.0-20071031.tar.gz \
 && tar xfv fftss-3.0-20071031.tar.gz \
 && cd fftss-3.0-20071031/ \
 && ./configure \
 && make \
 && sudo make install


# Install tokyocabinet lib
RUN git clone git://github.com/etrepum/tokyo-cabinet.git \
&& cd tokyocabinet \
&& ./configure \
&& make \
&& sudo make install
