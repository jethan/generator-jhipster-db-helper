#!/bin/bash
set -ev
#-------------------------------------------------------------------------------
# Installing JHipster stack
#-------------------------------------------------------------------------------
yarn global add yo
yarn global add bower
yarn global add gulp-cli
yarn global add generator-jhipster
yarn global upgrade generator-jhipster