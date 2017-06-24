publishing
publish: aDictionary to: address headers: headers
	self stick publishTo: address headers: (self mergeHeaders: headers) body: (self portableUtil asDictionary: aDictionary)