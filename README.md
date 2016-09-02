# README #
=================================
[![codecov](https://codecov.io/gh/speedwork/app/branch/master/graph/badge.svg)](https://codecov.io/gh/speedwork/app)
[![StyleCI](https://styleci.io/repos/37180608/shield)](https://styleci.io/repos/37180608)
[![Latest Stable Version](https://poser.pugx.org/speedwork/app/v/stable)](https://packagist.org/packages/speedwork/app)
[![Latest Unstable Version](https://poser.pugx.org/speedwork/app/v/unstable)](https://packagist.org/packages/speedwork/app)
[![License](https://poser.pugx.org/speedwork/app/license)](https://packagist.org/packages/speedwork/app)
[![Total Downloads](https://poser.pugx.org/speedwork/app/downloads)](https://packagist.org/packages/speedwork/app)
[![Build status](https://ci.appveyor.com/api/projects/status/10aw52t4ga4kek27?svg=true)](https://ci.appveyor.com/project/2stech/app)
[![Build Status](https://travis-ci.org/speedwork/app.svg?branch=master)](https://travis-ci.org/speedwork/app)


Rename .evn.example to .env and change necessary settings.

# Install 
composer create-project --no-dev --stability=dev speedwork/app fb

# Database

Create database and load `.sql` files in schema folder in following order
    1. users.sql
    2. core.sql
    3. themes.sql
    4. addons.sql

You can remove few tables if you don't want that perticual functionality. 
Make sure disable those features in applications aswell.

# Assests
    bower install
