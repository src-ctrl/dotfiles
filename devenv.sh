#!/usr/bin/env bash

# Laravel
composer global require hirak/prestissimo
composer global require laravel/installer
composer global require laravel/valet
valet install

mkdir ~/projects
valet park ~/projects
