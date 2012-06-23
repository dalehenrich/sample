versions
version080: spec
    <version: '0.8.0'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'release'.
            spec description: 'initial release of Sample project'.
            spec author: 'dkh'.
            spec timestamp: '6/17/2012 17:06'.
            spec
                baseline: 'Sample'
                    with: [ 
                            spec
                                className: 'BaselineOfSample';
                                loads: #();
                                repository:
                                        'github://dalehenrich/sample:03fb7e433448fbdb91eb94d596cdd5890dcb32dd/repository' ];
                project: 'Core' copyFrom: 'Sample' with: [ spec loads: 'Core' ];
                project: 'Tests' copyFrom: 'Sample' with: [ spec loads: 'Tests' ].
            spec group: 'default' with: #('Core') ]