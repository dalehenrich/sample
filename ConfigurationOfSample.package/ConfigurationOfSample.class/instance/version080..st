versions
version080: spec
    <version: '0.8'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'release'.
            spec description: 'initial release of Sample project'.
            spec author: 'dkh'.
            spec timestamp: '6/17/2012 16:08' ].
    spec
        for: #'pharo'
        do: [ spec baseline: 'Metacello' with: [ spec repository: 'github://dalehenrich/sample:master/repository' ] ]