versions
version080: spec
    <version: '0.8'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'release'.
            spec description: 'initial release of Sample project'.
            spec author: 'dkh'.
            spec timestamp: '6/17/2012 16:38' ].
    spec
        for: #'pharo'
        do: [ 
            spec
                baseline: 'Sample'
                with: [ 
                    spec
                        loads: 'ALL';
                        repository: 'github://dalehenrich/sample:03fb7e433448fbdb91eb94d596cdd5890dcb32dd/repository' ] ]