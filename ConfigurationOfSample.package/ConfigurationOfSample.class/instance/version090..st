versions
version090: spec
  <version: '0.9.0'>
  spec
    for: #'common'
    do: [ 
      spec blessing: #'development'.
      spec description: 'working on the railroad:
- fix Issue #3
  https://github.com/dalehenrich/sample/issues/3'.
      spec author: 'dkh'.
      spec timestamp: '4/3/2013 16:26'.
      spec
        baseline: 'Sample'
          with: [ 
              spec
                className: 'BaselineOfSample';
                loads: #();
                repository: 'github://dalehenrich/sample:master/repository' ];
        import: 'Sample' ]