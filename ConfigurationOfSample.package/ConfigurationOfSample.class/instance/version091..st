versions
version091: spec
    "<version: '0.9.1'>"

    spec
        for: #'common'
        do: [ 
            spec blessing: #'development'.
            spec description: 'shiny new group spec "group:in:load:"'.
            spec author: 'dkh'.
            spec timestamp: 'dkh 6/25/2012 16:55'.
            spec baseline: 'Sample' with: [ spec repository: 'github://dalehenrich/sample:master/repository' ].
            spec
                group: 'default' with: #('Core');
                group: 'Core' in: 'Sample' load: #('Core');
                group: 'Tests' in: 'Sample' load: #('Tests') ]