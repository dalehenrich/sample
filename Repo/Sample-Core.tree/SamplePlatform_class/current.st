
!SamplePlatform class methodsFor: 'accessing'!
current
    Current ifNil: [ Current := self new ].
    ^ Current! !
