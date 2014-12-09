# Pull base image.
FROM ciandtsoftware/appengine-java-maven
MAINTAINER Fábio Uechi <fabio.uechi@gmail.com>

ENV D1_USER deeone
ENV HOME /home/${D1_USER}
RUN useradd --create-home --home-dir ${HOME} --user-group -u 1000 ${D1_USER}

# Install zsh and oh-my-zhs
RUN apt-get install -y zsh
ENV ZSH ${HOME}/.oh-my-zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ${HOME}/.oh-my-zsh
ADD home/.zshrc ${HOME}/.zshrc
RUN chown -R ${D1_USER}:${D1_USER} ${HOME}

# Install fasd
RUN \
  git clone https://github.com/clvv/fasd.git /usr/local/fasd &&\ 
  ln -s /usr/local/fasd/fasd /usr/bin/fasd

WORKDIR /workspace

EXPOSE 8080

# Define default command.
CMD ["zsh"]