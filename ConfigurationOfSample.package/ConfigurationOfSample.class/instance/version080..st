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
                                        'github://dalehenrich/sample:cc46e15368c6b7cf3667427faaf6167d35044f78/repository' ];
                import: 'Sample' ]