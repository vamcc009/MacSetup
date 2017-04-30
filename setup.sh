#!/bin/bash -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Download and install Command Line Tools
if [[ ! -x /usr/bin/gcc ]]; then
    xcode-select --install
fi

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

export PATH=/usr/local/bin:$PATH

if [[ ! -x /usr/local/bin/ansible ]]; then
    brew install ansible
fi


ansible-playbook -i "localhost," -c local "$DIR"/ansible/playbooks/site.yml

brew list --versions > brew.log
