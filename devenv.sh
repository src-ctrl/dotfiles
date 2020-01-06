#!/usr/bin/env bash

# Laravel
composer global require hirak/prestissimo
composer global require laravel/installer
composer global require laravel/valet
composer global require deployer/deployer
valet install

mkdir ~/projects
valet park ~/projects
