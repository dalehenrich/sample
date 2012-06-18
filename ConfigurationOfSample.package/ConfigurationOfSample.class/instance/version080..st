versions
version080: spec
    <version: '0.8'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'release'.
            spec description: 'initial release of Sample project'.
            spec author: 'dkh'.
            spec timestamp: '6/17/2012 17:06'.
            spec
                baseline: 'Core'
                    with: [ 
                            spec
                                className: 'BaselineOfSample';
                                loads: 'Sample-Core';
                                repository:
                                        'github://dalehenrich/sample:03fb7e433448fbdb91eb94d596cdd5890dcb32dd/repository' ];
                project: 'Tests' copyFrom: 'Core' with: [ spec loads: 'Sample-Tests' ].
            spec group: 'default' with: #('Core') ]