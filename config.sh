#! /usr/bin/env bash

GIT_ROOT=$(cd "$(dirname $0)"; pwd)
DOT_ROOT=$GIT_ROOT/dots

HOME=~/shit
echo "creating symlinks from $DOT_ROOT to $HOME"

for sf in $(find $DOT_ROOT -type f); do
  df=$HOME/$(basename $sf)
  ln -sf $sf $df
done

