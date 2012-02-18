To install the latest working copy in your image:

```Smalltalk
Metacello new
  project: 'Sample';
  repository: 'github://dalehenrich/sample:master';
  load.
```

The **repository** directory is a Monticello repository in [filetree] [1] format.

The **doc** directory contains directories for **examples**, **scripts**, and **tutorials**. 

[1]: https://github.com/dalehenrich/filetree
