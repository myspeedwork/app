# README #

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