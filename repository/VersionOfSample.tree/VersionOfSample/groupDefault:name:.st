
!VersionOfSample methodsFor: 'groups'!
groupDefault: spec name: name
    <project: 'Sample' group: 'default'>
    spec for: #'common' do: [ spec group: name with: #('Base') ]! !
