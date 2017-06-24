*VerStix-Core-actions
objectFromJsonBytes: jsonBytes
	^self objectFromJsonString: (self stringFromUtf8Bytes: jsonBytes).
	