*ston-squeak-core
stonString
	"Convenience method especially for debugging."
	^ String streamContents: [:stream |
		self stonOn: (STONWriter new on: stream)]
