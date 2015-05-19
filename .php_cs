<?php

$finder = \Symfony\CS\Finder\DefaultFinder::create()
    ->files()
    ->name('*.php')
    ->in(__DIR__)
    ->in(__DIR__.'/system');

return \Symfony\CS\Config\Config::create()
    ->fixers(array('-psr0'))
    ->finder($finder)
;