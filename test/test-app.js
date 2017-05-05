/* global describe, beforeEach, it*/

const path = require('path');
const fs = require('fs');
const fse = require('fs-extra');
const assert = require('yeoman-assert');
const helpers = require('yeoman-test');

const Generator = require('../generators/app/index.js');
const DBH_CONSTANTS = require('../generators/dbh-constants.js');
const TEST_CONSTANTS = require('../generators/dbh-test-constants.js');

const testPath = path.join(__dirname, '../generators/app');

// mock the dependent generator
const deps = [
    [helpers.createDummyGenerator(), 'jhipster:modules']
];

describe('Post app hook', function () {
    beforeEach(function () {
        return helpers.run(testPath)
        .inTmpDir((dir) => {
            return fse.copySync(path.join(__dirname, '../test/templates/default/usingMaven'), dir);
        })
        .withOptions({testmode: true})
        .withGenerators(deps)
        .then(onResolve => console.log(onResolve), onError => console.log(onError))
        ;
    });
    it('says foo', function () {
        assert.textEqual(Generator.prototype._sayFoo(), 'foo');
    });
    /*
    it('replaces the naming strategies', function () {
        const arr = TEST_CONSTANTS.templateFilesWithNamingStrategy.usingMaven;
        arr.forEach((value, index, array) => {
           console.log(value);
           assert.file(__dirname+'/'+value);
        });
    });
    */
});
