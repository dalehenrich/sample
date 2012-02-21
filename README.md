To install the latest working copy in your image:

```Smalltalk
Metacello new
  project: 'Sample';
  repository: 'github://dalehenrich/sample:master';
  load.
```

The **Sample.source** directory contains the source and *Metacello project structure* for the project. For further information on the *Metacello project structure*, see the [README.md file](Sample.source/README.md) in the [Sample.source](Sample.source) directory.

The **doc** directory contains directories for **examples**, **scripts**, and **tutorials**. 

[1]: https://github.com/dalehenrich/filetree
