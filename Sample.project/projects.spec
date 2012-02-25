"
project: spec 
    <project: 'NameofProject'>
"
    spec
        for: #'common'
        do: [ 
            spec
                projectReference: 'Seaside30' 
                with: [ 
                    spec
                        version: '3.0.6.3';
                        repository: 'github://Seaside/Seaside30/Seaside30.source' ] ]
