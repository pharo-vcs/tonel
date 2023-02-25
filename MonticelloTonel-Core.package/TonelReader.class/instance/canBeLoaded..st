private
canBeLoaded: aFileReference
	| fileName |
	fileName := self fileUtils fileName: aFileReference.

	"If the file begins with a `.` then it is an hidden file and should not be loaded."
	(fileName beginsWith: '.') ifTrue: [ ^ false ].

	^ fileName ~= 'package.st' and: [ fileName endsWith: '.st' ]