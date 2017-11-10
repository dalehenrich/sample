## INSTALL Sample

Install [Metacello][1], then:

```Smalltalk
Metacello new
  baseline: 'Sample';
  repository: 'github://dalehenrich/sample/repository';
  load.
```

###TravisCI Status
**master**: [![Build Status](https://secure.travis-ci.org/dalehenrich/sample.png?branch=master)](http://travis-ci.org/dalehenrich/sample)

**configuration**: [![Build Status](https://secure.travis-ci.org/dalehenrich/sample.png?branch=configuration)](http://travis-ci.org/dalehenrich/sample)

[1]: https://github.com/Metacello/metacello/blob/master/README.md
