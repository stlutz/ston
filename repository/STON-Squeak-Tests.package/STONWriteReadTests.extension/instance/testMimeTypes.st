*ston-squeak-tests
testMimeTypes
	| mimeTypes |
	mimeTypes := STON listClass withAll: { 
		MIMEType applicationJson.
		MIMEType textPlain }.
	self serializeAndMaterialize: mimeTypes
