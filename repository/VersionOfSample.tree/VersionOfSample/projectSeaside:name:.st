
!VersionOfSample methodsFor: 'project references'!
projectSeaside: spec name: name
    <project: 'Sample' reference: 'Seaside'>
    spec
        for: #'common'
        do: [ 
            spec
                projectReference: name
                with: [ 
                    spec
                        version: '3.0.6.3';
                        repository: 'github://Seaside/Seaside30/Seaside30.source' ] ]! !
