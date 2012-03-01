
!SamplePlatform classSide methodsFor: 'accessing'!
current
    Current ifNil: [ Current := self new ].
    ^ Current! !
