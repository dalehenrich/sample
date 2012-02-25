
!VersionOfSample methodsFor: 'packages'!
packagePlatformPharo: spec name: name
    <project: 'Sample' package: 'Platform.pharo'>
    spec
        for: #'pharo'
        do: [ 
            spec package: 'Sample-Core' includes: name.
            spec package: name with: [ spec requires: 'Sample-Core' ] ]! !
