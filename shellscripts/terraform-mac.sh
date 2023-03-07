#!/bin/bash


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/simonraw/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"


brew tap hashicorp/tap


brew install hashicorp/tap/terraform


terraform version
