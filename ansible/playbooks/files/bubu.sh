#!/bin/bash
brew prune ; brew tap --repair ; brew update ; brew outdated ; brew upgrade ; brew cleanup --force ; brew cask cleanup
