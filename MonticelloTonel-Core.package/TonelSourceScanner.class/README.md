I'm a scanner to get correct sources from method definitions in Tonel format.

Implementation details:
Method body is delineated by square brackets in Tonel format, thus I just have to detect enclosing square brackets [].
Since a method body can include nested blocks and ByteArray literals, I have to maintain a count of opened and closed brackets in order to correctly detect the end of method body.
But method body can also contain isolated brackets (which are not necessarily paired) in following patterns:
		- comments like "["
		- strings like ']'
		- array literals like #( [ )
		- literal characters like $] 
Therefore, I need to be aware of syntax for the four cases above, in order to correctly skip those potentially isolated brackets.