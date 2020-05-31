FROM gitpod/workspace-full-vnc:latest

RUN bash -c ". .nvm/nvm.sh \
    && nvm install 8 \
    && nvm use 8 \
    && nvm alias default 8"

RUN echo "nvm use default >/dev/null" >> /home/gitpod/.bashrc.d/51-nvm-fix
