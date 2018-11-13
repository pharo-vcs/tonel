private
prepareToScan
	result := String new writeStream.
	isFinished := false.
	char := prevChar := nil.
	count := 0
	