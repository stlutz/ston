*ston-squeak-core
fromSton: stonReader
	^ self fromMIMEString: stonReader parseListSingleton
