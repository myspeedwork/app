# Application Skeleton
=================================

Rename .evn.example to .env and change necessary settings.

Installation with Composer
--------------------------

```shell
curl -s http://getcomposer.org/installer | php
composer create-project --no-dev -s dev speedwork/app fb
```

# Database

Create database and load `.sql` files in schema folder in following order
    1. users.sql
    2. core.sql
    3. themes.sql
    4. addons.sql

You can remove few tables if you don't want that perticual functionality. 
Make sure disable those features in applications aswell.

# Assests

```shell
    bower install
```

#Contributing
=============================================

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Make your changes
4. Run the tests, adding new ones for your own code if necessary (`phpunit`)
5. Commit your changes (`git commit -am 'Added some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create new Pull Request
