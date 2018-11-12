private
readNext
	prevChar := char.
	result nextPut: (char := stream next)
