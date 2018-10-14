*ston-squeak-tests
testMimeType
	self 
		assert: (self materialize: 'MimeType[''application/json'']') 
		equals: MIMEType applicationJson.
	self 
		assert: (self materialize: 'MimeType[''text/plain'']') 
		equals: MIMEType textPlain.
