*ston-squeak-tests
testSetWithReferenceElements
	| elementsCollection set ston object |
	elementsCollection := OrderedCollection streamContents: [ :out |
		10 timesRepeat: [ out nextPut: Random new next ] ].
	set := Set withAll: elementsCollection.
	object := Array with: elementsCollection with: set.
	ston := STON toStringPretty: object.
	object := STON fromString: ston readStream.
	object first do: [ :each |
		self assert: (object second includes: each) ].
	self assert: object second isHealthy 
