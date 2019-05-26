# dotfiles

My very personal dot-files. 

Of course, you are free to use them in any way but please [let me know](https://github.com/jrobinsonc/dotfiles/issues/new) if you find something wrong or have an improvement you'd like to share.

> WARNING: Please, don’t just take these settings carte blanche; they work for me but might not be the best for you. Use at your own risk. These dot-files are intended to work under macOS Mojave.

## Installation

1. Install [Homebrew](https://brew.sh/).
1. Clone this repo and run `bash ./install.sh`.

You can run the same file `./install.sh` to update your dotfiles with the latest in the repo. And that also will update your brew's formulae.

**Modifying `.bash_profile`?**

Each time you run the installation script you are overwriting `.bash_profile`. So, if you need to add something that should prevail, you should create `.bash_profile-extra` alongside the `.bash_profile`. That extra file is automatically loaded by `.bash_profile`.