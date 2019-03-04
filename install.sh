#!/usr/bin/env bash

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
# LCYAN='\033[1;36m'
NC='\033[0m' # No Color

end_script() {
  echo $2
  echo ""
  exit $1
}

configure_git() {
  local actual_user_name="$1"
  local actual_user_email="$2"

  echo ""

  echo -en "${YELLOW}What's your name? ${NC}[$actual_user_name] "
  read user_name </dev/tty

  if [ "$user_name" = "" ]; then
    user_name=$actual_user_name
  fi
  
  git config --global user.name "$user_name"

  echo -en "${YELLOW}What's your email? ${NC}[$actual_user_email] "
  read user_email </dev/tty

  if [ "$user_email" = "" ]; then
    user_email=$actual_user_email
  fi

  git config --global user.email "$user_email"
}

clear

echo -en "${YELLOW}This may overwrite your existing files. Are you sure? ${NC}[y/N] "
read reply </dev/tty

if ! [[ "$reply" =~ ^[Yy]$ ]]; then
  end_script 1 "Installation cancelled."
fi

actual_user_name=`git config --global user.name`
actual_user_email=`git config --global user.email`

git pull origin master

rsync -avh ./home/ ~

configure_git "$actual_user_name" "$actual_user_email"

bash ./utils/macos.sh
bash ./utils/brew.sh

echo ""
echo -e "${GREEN}Done! ${NC}"
echo ""
