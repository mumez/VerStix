reading
readFrameFrom: aStream
	| size jsonBytes |
	size := self portableUtil readUInt32From: aStream.
	jsonBytes := aStream next: size.
	^self portableUtil objectFromJsonBytes: jsonBytes