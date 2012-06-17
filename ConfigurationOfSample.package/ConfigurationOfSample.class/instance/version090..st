versions
version090: spec
    <version: '0.9'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'release'.
            spec description: 'initial release of Sample project'.
            spec author: 'dkh'.
            spec timestamp: '6/17/2012 16:38' ].
    spec
        for: #'pharo'
        do: [ spec baseline: 'Sample' with: [ spec repository: 'github://dalehenrich/sample:master/repository' ] ]