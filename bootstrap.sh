#!/bin/bash

apt-get update

# Provision git
apt-get install -y git

# Clone dotfile repository
su vagrant <<'EOF'
  mkdir -p /home/vagrant/git
  cd /home/vagrant/git
  git clone https://github.com/agoconcept/dotfiles.git

  # Setup environment
  cd /home/vagrant/git/dotfiles
  make
EOF

