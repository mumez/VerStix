accessing
removeNamed: aString
	^self busMap removeKey: aString ifAbsent: [  ]