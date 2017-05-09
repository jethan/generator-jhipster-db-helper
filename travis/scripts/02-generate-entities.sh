#!/bin/bash
set -ev
#-------------------------------------------------------------------------------
# Functions
#-------------------------------------------------------------------------------
moveEntity() {
  local entity="$1"
  mv "$JHIPSTER_SAMPLES"/.jhipster/"$entity".json "$HOME"/app/.jhipster/
}

generateEntity() {
  local entity="$1"
  if [ -a .jhipster/"$entity".json ]; then
    yo jhipster:entity "$entity" --force --no-insight
  fi
}

#-------------------------------------------------------------------------------
# Copy entities json
#-------------------------------------------------------------------------------
mkdir -p "$HOME"/app/.jhipster/

if [[ ("$JHIPSTER" == "app-mysql") || ("$JHIPSTER" == "app-psql-es-noi18n") ]]; then
  moveEntity BankAccount
  moveEntity Label
  moveEntity Operation

  moveEntity FieldTestEntity
  moveEntity FieldTestMapstructEntity
  moveEntity FieldTestServiceClassEntity
  moveEntity FieldTestServiceImplEntity
  moveEntity FieldTestInfiniteScrollEntity
  moveEntity FieldTestPagerEntity
  moveEntity FieldTestPaginationEntity

  moveEntity TestEntity
  moveEntity TestMapstruct
  moveEntity TestServiceClass
  moveEntity TestServiceImpl
  moveEntity TestInfiniteScroll
  moveEntity TestPager
  moveEntity TestPagination
  moveEntity TestManyToOne
  moveEntity TestManyToMany
  moveEntity TestOneToOne
  moveEntity TestCustomTableName

  moveEntity EntityWithDTO
  moveEntity EntityWithPagination
  moveEntity EntityWithPaginationAndDTO
  moveEntity EntityWithServiceClass
  moveEntity EntityWithServiceClassAndDTO
  moveEntity EntityWithServiceClassAndPagination
  moveEntity EntityWithServiceClassPaginationAndDTO
  moveEntity EntityWithServiceImpl
  moveEntity EntityWithServiceImplAndDTO
  moveEntity EntityWithServiceImplAndPagination
  moveEntity EntityWithServiceImplPaginationAndDTO

else
  moveEntity BankAccount
  moveEntity Label
  moveEntity Operation

  moveEntity FieldTestEntity
  moveEntity FieldTestMapstructEntity
  moveEntity FieldTestServiceClassEntity
  moveEntity FieldTestServiceImplEntity
  moveEntity FieldTestInfiniteScrollEntity
  moveEntity FieldTestPagerEntity
  moveEntity FieldTestPaginationEntity

  moveEntity EntityWithDTO
  moveEntity EntityWithPagination
  moveEntity EntityWithPaginationAndDTO
  moveEntity EntityWithServiceClass
  moveEntity EntityWithServiceClassAndDTO
  moveEntity EntityWithServiceClassAndPagination
  moveEntity EntityWithServiceClassPaginationAndDTO
  moveEntity EntityWithServiceImpl
  moveEntity EntityWithServiceImplAndDTO
  moveEntity EntityWithServiceImplAndPagination
  moveEntity EntityWithServiceImplPaginationAndDTO
fi

ls -l "$HOME"/app/.jhipster/

#-------------------------------------------------------------------------------
# Generate the entities with yo jhipster:entity
#-------------------------------------------------------------------------------
cd "$HOME"/app
generateEntity BankAccount
generateEntity Label
generateEntity Operation

generateEntity FieldTestEntity
generateEntity FieldTestMapstructEntity
generateEntity FieldTestServiceClassEntity
generateEntity FieldTestServiceImplEntity
generateEntity FieldTestInfiniteScrollEntity
generateEntity FieldTestPagerEntity
generateEntity FieldTestPaginationEntity

generateEntity TestEntity
generateEntity TestMapstruct
generateEntity TestServiceClass
generateEntity TestServiceImpl
generateEntity TestInfiniteScroll
generateEntity TestPager
generateEntity TestPagination
generateEntity TestManyToOne
generateEntity TestManyToMany
generateEntity TestOneToOne
generateEntity TestCustomTableName

generateEntity EntityWithDTO
generateEntity EntityWithPagination
generateEntity EntityWithPaginationAndDTO
generateEntity EntityWithServiceClass
generateEntity EntityWithServiceClassAndDTO
generateEntity EntityWithServiceClassAndPagination
generateEntity EntityWithServiceClassPaginationAndDTO
generateEntity EntityWithServiceImpl
generateEntity EntityWithServiceImplAndDTO
generateEntity EntityWithServiceImplAndPagination
generateEntity EntityWithServiceImplPaginationAndDTO