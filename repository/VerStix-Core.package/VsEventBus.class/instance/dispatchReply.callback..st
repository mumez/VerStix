dispatching
dispatchReply: vsMessage callback: aBlock
	| addr |
	addr := vsMessage address.
	vsMessage isError ifTrue: [ vsMessage ensureAsError ].
	[aBlock cull: vsMessage ] ensure: [ self replyHandlers removeKey: addr ifAbsent:[] ]