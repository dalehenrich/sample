versions
version091: spec
  <version: '0.9.1'>
  spec
    for: #'common'
    do: [ 
      spec blessing: #'development'.
      spec description: '- fix Issue #3
  https://github.com/dalehenrich/sample/issues/3'.
      spec author: 'dkh'.
      spec timestamp: '4/3/2013 16:26'.
      spec
        baseline: 'Sample'
          with: [ spec repository: 'github://dalehenrich/sample:master/repository' ];
        import: 'Sample' ]