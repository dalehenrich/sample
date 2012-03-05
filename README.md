To install the latest working copy of the 'master' branch in your image:

```Smalltalk
Metacello new
  project: 'Sample';
  repository: 'github://dalehenrich/sample:master/core';
  load.
```

To download the latest working copy of the 'master' branch to your github-cache directory:

```Smalltalk
Metacello new
  project: 'Sample';
  repository: 'github://dalehenrich/sample:master/core';
  get.
```

If you have cloned the git repository to your local disk, then use the following to load the cloned version into your image:

```Smalltalk
Metacello new
  project: 'Sample';
  repository: 'filetree://, pathToClonedRepository, '/core';
  load.
```

