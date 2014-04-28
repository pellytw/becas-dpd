#!/bin/bash
# Script para arrancar unicorn en el RVM que tiene las gemas del proyecto (default gemset)
#source ~/.rvm/scripts/rvm
export GEM_HOME=/home/ubuntu/.rvm/gems/ruby-1.9.3-p286
export GEM_PATH=/home/ubuntu/.rvm/gems/ruby-1.9.3-p286:/home/ubuntu/.rvm/gems/ruby-1.9.3-p286@becas
export MY_RUBY_HOME=/home/ubuntu/.rvm/rubies/ruby-1.9.3-p286
export RUBY_VERSION=ruby-1.9.3-p286

BUNDLE=/home/ubuntu/.rvm/gems/ruby-1.9.3-p286/bin/bundle
$BUNDLE exec unicorn -c config/unicorn.rb
