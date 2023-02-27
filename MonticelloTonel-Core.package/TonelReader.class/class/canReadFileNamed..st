testing
canReadFileNamed: fileName
	"We validate that fileName does not contains dot, but that's the only thing we can do
	 at this point."
	^ fileName noneSatisfy: [ :each | each = $. ]