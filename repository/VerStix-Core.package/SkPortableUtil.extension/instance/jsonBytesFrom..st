*VerStix-Core-actions
jsonBytesFrom: anObject
	^self utf8BytesFromString: (self jsonStringFrom: anObject)