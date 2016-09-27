# Application Skeleton
=================================

## Installation

1. Clone the repository

```shell
$ git clone git@github.com:speedwork/app.git
```

1. Using Composer

```shell
curl -s http://getcomposer.org/installer | php
composer create-project --prefer-dist --no-dev -s dev speedwork/app

2. Install dependencies

```shell
$ composer install -o --no-dev --prefer-dist
$ bower install --production
```

3. Make sure the storage and upload directories are writable

```shell
$ chmod -R 777 storage
$ chmod -R 777 public/cache
$ chmod -R 777 public/upload
```

4. Make additional configuration changes

```shell
$ editor .env
```

5. Run Migration

```shell
$ php ./console migrate
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
