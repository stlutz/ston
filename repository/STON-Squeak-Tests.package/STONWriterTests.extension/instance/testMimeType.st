*ston-squeak-tests
testMimeType
	self
		assert: (self serialize: MIMEType applicationJson)
		equals: 'MimeType[''application/json'']'.
	self
		assert: (self serialize: MIMEType textPlain)
		equals: 'MimeType[''text/plain'']'.
