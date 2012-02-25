
!VersionOfSample methodsFor: 'packages'!
packagePlatformSqueak: spec name: name
    <project: 'Sample' package: 'Platform.squeak'>
    spec
        for: #'squeak'
        do: [ 
            spec package: 'Sample-Core' includes: name.
            spec package: name with: [ spec requires: 'Sample-Core' ] ]! !
