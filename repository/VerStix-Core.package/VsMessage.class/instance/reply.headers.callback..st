replying
reply: aDictionary headers: headerDict callback: callback
	^self replyCallback cull: aDictionary cull: headerDict cull: callback 