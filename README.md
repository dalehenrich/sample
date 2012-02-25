To install the latest working copy in your image:

```Smalltalk
Metacello new
  project: 'Sample';
  repository: 'github://dalehenrich/sample:master';
  load.
```

## Basic directory structure

```
+-sample
  +-doc/
  +-license.txt
  +-metacello.json
  +-metacello.st
  +-README.md
  +-repository/
  +-src/
```

The **doc** directory contains directories for **examples**, **scripts**, and **tutorials**. 

The **metacello.json** file is the metacello dependency information in json format.

The **metacello.st** file is the metacello dependency information in metacello spec format.

The **repository** is a filetree Monticello repository for utility packages not directly used in the project. See the 
[README.md](repository/README.md) in the [repository](repository) directory for more information.

The **src** directory contains the package structure and source for the project. 
See the [README.md file](src/README.md) in the [src](src) directory for more information.
