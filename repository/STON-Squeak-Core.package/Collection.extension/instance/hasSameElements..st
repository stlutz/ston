*ston-squeak-core
hasSameElements: otherCollection

	| diff |
	self size ~= otherCollection size ifTrue: [^ false].
	diff := Bag new: self size.
	self associationsDo: [:each | diff add: each].
	otherCollection associationsDo: [:each |
		diff remove: each ifAbsent: [^ false]].
	^ true
