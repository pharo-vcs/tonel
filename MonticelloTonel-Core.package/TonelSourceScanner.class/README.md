I'm a scanner to get correct sources from method definitions.
Is important to follow this remarks:

Since a method body can contain enclosing brackets we need to be sure we will skip them and
	 correctly read the method. For that, I have to take into account: 
		- I can mention [] in comments
		- I can mention [] in strings
		- I can mention [] in array literals
		- I can use $[, $] 
		- I can have inner blocks
		- I can mention a comment of the form ""$"" or a comment of the form '$'
	 all that needs to be skipped 