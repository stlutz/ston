*ston-squeak-core
= anotherObject

	self == anotherObject ifTrue: [^ true].
	self asString = anotherObject asString ifTrue: [^ true].
	^ false
