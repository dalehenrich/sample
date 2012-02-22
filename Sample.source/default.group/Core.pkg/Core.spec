    ^ [ :spec | 
    spec
        for: #'common'
        do: [ 
            spec
                includes: 'platform';
                references: 'Seaside' with: #('Base' 'Seaside-Email') ] ]
