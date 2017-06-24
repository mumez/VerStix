dispatching
dispatchSubscription: vsMessage callback: aBlock
	vsMessage isError ifTrue: [ vsMessage ensureAsError ].
	aBlock cull: vsMessage 