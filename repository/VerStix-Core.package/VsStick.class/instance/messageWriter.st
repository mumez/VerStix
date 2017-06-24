accessing
messageWriter
	^ messageWriter ifNil: [ messageWriter := VsMessageFrameWriter new ]