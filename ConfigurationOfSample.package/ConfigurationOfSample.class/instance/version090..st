versions
version090: spec
    <version: '0.9'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'development'.
            spec description: 'working on the railroad'.
            spec author: 'dkh'.
            spec timestamp: '6/17/2012 17:10'.
            spec
                baseline: 'Sample'
                    with: [ 
                            spec
                                className: 'BaselineOfSample';
                                loads: #();
                                repository: 'github://dalehenrich/sample:master/repository' ];
                project: 'Core' copyFrom: 'Sample' with: [ spec loads: 'Core' ];
                project: 'Tests' copyFrom: 'Sample' with: [ spec loads: 'Tests' ].
            spec group: 'default' with: #('Core') ]