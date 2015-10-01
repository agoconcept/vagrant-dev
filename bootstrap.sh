#!/bin/bash

apt-get update

# Provision git
apt-get install -y git

# Provision pip
apt-get install -y python-pip python3-pip

# Provision pyaudio
apt-get install -y python-pyaudio python3-pyaudio

pip install SpeechRecognition
pip3 install SpeechRecognition

# Clone dotfile repository
su vagrant <<'EOF'
  mkdir -p /home/vagrant/git
  cd /home/vagrant/git
  git clone https://github.com/agoconcept/dotfiles.git

  # Setup environment
  cd /home/vagrant/git/dotfiles
  make
EOF

