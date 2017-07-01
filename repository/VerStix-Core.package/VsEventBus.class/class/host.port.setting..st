instance creation
host: host port: portnumber setting: aBlock
	| inst |
	inst := self new.
	aBlock value: inst.
	inst host: host port: portnumber.
	^inst