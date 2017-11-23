private
readNext
	prevPrevChar := prevChar.
	prevChar := char.
	result nextPut: (char := stream next)
