#!/bin/bash
set -ev
#-------------------------------------------------------------------------------
# Update npm
#-------------------------------------------------------------------------------
#npm install -g npm
#-------------------------------------------------------------------------------
# Install yeoman, bower and gulp
#-------------------------------------------------------------------------------
#yarn global install yo
#yarn global install bower
#yarn global install gulp-cli
#yarn global install generator-jhipster
#-------------------------------------------------------------------------------
# Install the latest version of JHipster
#-------------------------------------------------------------------------------
cd "$TRAVIS_BUILD_DIR"/
#yarn install
yarn link
