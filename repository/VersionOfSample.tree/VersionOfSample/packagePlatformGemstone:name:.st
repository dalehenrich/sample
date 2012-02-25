
!VersionOfSample methodsFor: 'packages'!
packagePlatformGemstone: spec name: name
    <project: 'Sample' package: 'Platform.gemstone'>
    spec
        for: #'gemstone'
        do: [ 
            spec package: 'Core' includes: name.
            spec package: name with: [ spec requires: 'Core' ] ]! !
