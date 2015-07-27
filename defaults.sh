#!/usr/bin/env bash

defaults write com.apple.Safari NSUserKeyEquivalents -dict
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add "Show Previous Tab" "@~\\U2190"
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add "Show Next Tab" "@~\\U2192"
