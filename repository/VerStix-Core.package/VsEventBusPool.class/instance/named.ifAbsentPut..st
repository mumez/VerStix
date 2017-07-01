actions
named: aString ifAbsentPut: aBlock
	| eb |
	eb := self named: aString.
	eb ifNil: [ ^ self named: aString put: aBlock value ].
	^eb