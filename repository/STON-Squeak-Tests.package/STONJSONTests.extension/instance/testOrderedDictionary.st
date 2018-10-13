*ston-squeak-tests
testOrderedDictionary
	| odictClass odict json dict |
	
	odictClass := Smalltalk at: #OrderedDictionary ifAbsent: [ ^ self skip ].
		
	odict := odictClass newFrom: { 
		'a' -> 42 . 'b' -> 1. 'aa' -> 4. 'c' -> 23 
	}.
	
	"assert that the order is not equal in the dictionary hash table".
	self assert: (odict associations hasSameElements: odict asDictionary associations).
	self deny: odict associations = odict asDictionary associations.
		
	"ordered presevered when encoding:"
	json := STONJSON toString: odict.
	self assert: json equals: '{"a":42,"b":1,"aa":4,"c":23}'.
	
	"lost when decoding"
	dict := STONJSON fromString: json.

	self 
		assert: (dict associations hasSameElements: odict associations);
		assert: dict equals: odict asDictionary;
		deny: dict asArray = odict asArray

