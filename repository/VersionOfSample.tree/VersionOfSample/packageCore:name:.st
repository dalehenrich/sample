
!VersionOfSample methodsFor: 'packages'!
packageCore: spec name: name
    <project: 'Sample' package: 'Core'>
    spec
        for: #'common'
        do: [ 
            spec
                package: name
                with: [ 
                    spec
                        requires: 'Seaside' with: #('Base' 'Seaside-Email');
                        groups: #('Base') ] ]! !
