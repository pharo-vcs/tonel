private
prepareToScan
	result := String new writeStream.
	isFinished := isComment := isString := isLiteralArray := false.
	char := prevChar := prevPrevChar := nil.
	count := 0
	