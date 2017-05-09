#!/bin/bash
set -ev
yarn install
# This doubles `npm test` so I'm removing it for the moment.
# yarn test
yarn link
