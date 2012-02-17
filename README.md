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