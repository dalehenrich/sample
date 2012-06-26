versions
version092: spec
    "<version: '0.9.2'>"

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
                groups: #('Core' 'Tests') from: 'Sample';
                group: 'TravisCI' with: #('Tests') from: 'Sample' ]