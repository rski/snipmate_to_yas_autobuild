# snipmate_to_yas_autobuild #

This repository provides make recipes to convert vim snippets to YASnippets using
[snimate_to_yas](https://github.com/cartolari/snipmate_to_yas).

## Available tasks ##

* make convert: clone the latest master from
 https://github.com/honza/vim-snippets and convert it to YASnippets.
* make push: push the converted snippets to a repository.

## Getting Started ##

    git clone https://github.com/rski/snimate_to_yas_autobuild
    cd snimate_to_yas_autobuild
    bundle install
    bundle exec make clone
    bundle exec make convert
    bundle exec make push

## Current State ##
This project mostly works, there are some issues with `snipmate_to_yas` that
need to be resolved upstream.
