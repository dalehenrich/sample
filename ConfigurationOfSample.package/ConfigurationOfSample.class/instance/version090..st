versions
version090: spec
    <version: '0.9'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'development'.
            spec description: 'add ability to load groups, make it #common ... no platform-specific code involved'.
            spec author: 'dkh'.
            spec timestamp: '6/17/2012 16:51'.
            spec
                baseline: 'Core'
                    with: [ 
                            spec
                                className: 'BaselineOfSample';
                                loads: 'Core';
                                repository: 'github://dalehenrich/sample:master/repository' ];
                project: 'Tests' copyFrom: 'Core' with: [ spec loads: 'Tests' ].
            spec group: 'default' with: 'Core' ]