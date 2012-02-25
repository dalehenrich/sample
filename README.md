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
  +-core/
  +-doc/
  +-license.txt
  +-README.md
```

The **core** directory contains all of the packages  for this project. 
See the [README.md file](core/README.md) in the [core](core) directory for more information.

The **doc** directory contains directories for **examples**, **scripts**, and **tutorials**. 

