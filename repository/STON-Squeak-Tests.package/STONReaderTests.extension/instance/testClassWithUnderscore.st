*ston-squeak-tests
testClassWithUnderscore

	| cls data reader |

	cls := STONTestClassWith_U_n_der___scores.

	data := STON toString: cls new.
	reader := STONReader on: data readStream.

	(reader instVarNamed: #classes) 
		at: cls name 
		put: cls.

	self assert: reader next class equals: cls
