#!/usr/bin/sh

source /Users/ttsang/.rvm/scripts/rvm

function get_repo () {
  git clone git@github.com:thomaswtsang/$1.git
  cd $1
  git remote add orchard git@github.com:theorchard/$1.git
  git remote set-url --push orchard cant_touch_this
}

function pyclean() {
  find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf
}
