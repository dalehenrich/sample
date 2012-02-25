
!VersionOfSample methodsFor: 'packages'!
packageTests: spec name: name
    <project: 'Sample' package: 'Tests'>
    spec
        for: #'common'
        do: [ 
            spec
                package: name
                with: [ 
                    spec
                        requires: 'Core';
                        groups: #('Tests') ] ]! !
