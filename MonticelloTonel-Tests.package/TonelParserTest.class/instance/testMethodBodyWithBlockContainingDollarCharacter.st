tests
testMethodBodyWithBlockContainingDollarCharacter
	"https://github.com/pharo-vcs/tonel/issues/44"

	self 
		assertParse: '[ $$ ]' rule: #methodBody equals: ' $$';
		assertParse: '[$$ ]' rule: #methodBody equals: '$$';
		assertParse: '[ $$]' rule: #methodBody equals: ' $$';
		assertParse: '[$$]' rule: #methodBody equals: '$$'