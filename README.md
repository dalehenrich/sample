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
  +-README.md
  +-repository/
  +-Sample.source/
```

The **doc** directory contains directories for **examples**, **scripts**, and **tutorials**. 

The **repository** is a filetree Monticello repository for utility packages not directly used in the project. See the 
[README.md](repository/README.md) in the [repository](repository) directory for more information.

The **Sample.source** directory contains the source and *Metacello project structure* for the project. 
See the [README.md file](Sample.source/README.md) in the [Sample.source](Sample.source) directory for more information.
