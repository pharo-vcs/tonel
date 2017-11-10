testing
isStartingComment
	"I'm starting a comment if char is $"" and previous char is not a dollar (which would mark the 
	 character $"". I have to take into account too that if previous character is dollar, it can be 
	 also the character dollar $$. 
	 So, I accept "" and also $$"", but I reject $""  
	"
	^ char = $" and: [ prevChar ~= $$ or: [ prevPrevChar == $$ ] ]