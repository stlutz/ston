*ston-squeak-core
readTimezoneOffsetFrom: aStream
	"Implementation extracted from DateAndTime>>readFrom:"
	^ (aStream atEnd or: [('+-Z' includes: aStream peek) not])
		ifTrue: [self localOffset]
		ifFalse: [(aStream peekFor: $Z)
			ifTrue: [Duration zero]
			ifFalse: [
				| ch |
				ch := aStream next.
				ch = $+ ifTrue: [ch := Character space].
				Duration fromString: ch asString, '0:', aStream upToEnd, ':0']]
