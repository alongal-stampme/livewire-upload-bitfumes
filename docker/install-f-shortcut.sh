#!/bin/bash

# phpunit alias
phpunitFilter() {
    ./vendor/phpunit/phpunit/phpunit --filter $1
}

phpunitFilter $1