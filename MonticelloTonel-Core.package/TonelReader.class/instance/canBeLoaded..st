private
canBeLoaded: aFileReference
	| fileName |
	fileName := self fileUtils fileName: aFileReference. 
	^ fileName ~= 'package.st' and: [ fileName endsWith: '.st' ]