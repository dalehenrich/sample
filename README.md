Note that there are two Monticello repositories in this project:

 * one in the root of the project
 * one in the Repo directory

The Metacello script that you use to access the root repository for the *master* branch:

```Smalltalk
Metacello new 
  project: 'Sample';
  repository: 'github://dalehenrich/sample:master'; 
  get.
```

To access the repository in the Repo directory for the *master* branch:

```Smalltalk
Metacello new 
  project: 'Sample'; 
  repository: 'github://dalehenrich/sample:master/Repo'; 
  get.
```

To load version 1.1 of the project (see [project tags] [1]):

```Smalltalk
Metacello new 
  project: 'Sample';
  repository: 'github://dalehenrich/sample:1.1';
  load.
```

To load an arbitrary commit for the project:

```Smalltalk
Metacello new 
  project: 'Sample';
  repository: 'github://dalehenrich/sample:9ad1438cf44688940a8c7840897a567d0d20e341';
  load.
```

[1]: https://github.com/dalehenrich/sample/tags