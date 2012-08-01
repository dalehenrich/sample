## INSTALL Sample

Install [MetacelloPreview 1.0-beta.32][1], then:

```Smalltalk
Metacello new
  configuration: 'Sample';
  version: #stable;
  repository: 'github://dalehenrich/sample:configuration';
  load.
```

###TravisCI Status
**master**: [![Build Status](https://secure.travis-ci.org/dalehenrich/sample.png?branch=master)](http://travis-ci.org/dalehenrich/sample)

**configuration**: [![Build Status](https://secure.travis-ci.org/dalehenrich/sample.png?branch=configuration)](http://travis-ci.org/dalehenrich/sample)

[1]: https://github.com/dalehenrich/metacello-work/blob/master/README.md