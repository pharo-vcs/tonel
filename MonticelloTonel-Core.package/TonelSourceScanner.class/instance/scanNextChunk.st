scanning
scanNextChunk
	self readNext.	
	self scanForBlock or: [
	self scanForComment or: [
	self scanForString or: [
	self scanForLiteralCharacter or: [
	self scanForLiteralArray ]]]]