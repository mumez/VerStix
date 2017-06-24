private
mergeHeaders: headerDict
	| dic |
	dic := self defaultHeaders copy.
	headerDict ifNotNil: [  
		headerDict keysAndValuesDo: [:k :v | dic at: k put: v ].
	].
	^dic