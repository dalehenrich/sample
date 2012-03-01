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
  | +-metacello.st
  | +-Sample-Core.pkg\
  | | +-snapshot\
  | | | +-classes\
  | | | | +-SampleCore.class\
  | | | |   +-SampleCore.st
  | | | |   +-instance\
  | | | |     +-author.st
  | | | +-extensions\
  | | |   +-Object.class\
  | | |     +-instance\
  | | |       +-isSample.st
  | | +-.filetree
  | | +-categories.st
  | | +-initializers.st
  | | +-package
  | | +-version
  | +-Sample-Platform.gemstone.pkg\
  | +-Sample-Platform.pharo.pkg\
  | +-Sample-Platform.squeak.pkg\
  | +-Sample-Tests.pkg\
  +-doc/
  +-license.txt
  +-README.md
```

