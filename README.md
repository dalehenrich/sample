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

