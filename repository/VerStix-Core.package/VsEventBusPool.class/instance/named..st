actions
named: aString
	| eb |
	eb := self busMap at: aString ifAbsent: [^nil].
	eb isStale ifTrue: [ self removeNamed: aString. ^nil ].
	^eb