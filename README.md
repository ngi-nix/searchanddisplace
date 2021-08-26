This repository contains a flake declaration for [Search and
Displace](https://git.law/newroco/searchanddisplace-core)

## Generate node dep with node2nix
```terminal
$ node2nix -i ../searchanddisplace-core/package.json
```

NB: searchdisplace-core is a clone of https://git.law/newroco/searchanddisplace-core

## Generate php dep with composer2nix

```terminal
$ composer2nix --config-file ../composer2nix/composer.json --lock-file ../searchanddisplace-core/composer.lock --output ./php/php-packages.nix
```

NB: searchdisplace-core is a clone of https://git.law/newroco/searchanddisplace-core

NB: For some reason I can specify output only for php-packages.nix the other file are generated in root. I had to move them manually.
