*ston-squeak-core
named: stringOrSymbol
	"This would actually be a pretty useful addition to Squeak in general..."
	^ self perform: (ColorNames 
						detect: [:colorSymbol | stringOrSymbol sameAs: colorSymbol]
						ifNone: [ #white ])
