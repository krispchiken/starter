FROM python:3.13.1-slim-bullseye

RUN apt-get update; apt-get install -y git nodejs  ripgrep wget build-essential 

RUN git clone https://github.com/NvChad/starter ~/.config/nvim

RUN wget https://github.com/neovim/neovim/releases/download/v0.10.4/nvim-linux-x86_64.tar.gz && tar xzvf nvim-linux-x86_64.tar.gz && ln -s /nvim-linux-x86_64/bin/nvim /bin/nvim

RUN wget https://go.dev/dl/go1.23.6.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.6.linux-amd64.tar.gz 

ENV PATH="/usr/local/go/bin:$PATH"
ENTRYPOINT ["/bin/bash"]
