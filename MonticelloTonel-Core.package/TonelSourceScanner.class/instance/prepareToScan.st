private
prepareToScan
	result := String new writeStream.
	isFinished := isComment := isString := false.
	char := prevChar := prevPrevChar := nil.
	count := 0
	