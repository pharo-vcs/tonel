tests
testTypeDefWithPackageAndTag

	self
		assertParse: '
"
this is a test
"
Class {
	#name: ''X'',
	#superclass: ''Y'',
	#package: ''Z'',
	#tag: ''Tag''
}'
		rule: #typeDef
		equals: ((MCClassDefinition named: 'X')
				 superclassName: 'Y';
				 packageName: 'Z';
				 tagName: 'Tag';
				 comment: 'this is a test';
				 yourself)