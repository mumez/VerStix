accessing
messageReader
	^ messageReader ifNil: [ messageReader := VsMessageFrameReader new ]