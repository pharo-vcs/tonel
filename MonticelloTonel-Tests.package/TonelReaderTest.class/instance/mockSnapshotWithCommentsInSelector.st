mocks
mockSnapshotWithCommentsInSelector
	"HACK: since the serialization test changes the method definition (and it does not restores to 
	 previous value), validation fails randomly. And since what I will test does not needs that 
	 method, I will just remove it."
	^ STON fromString: self class mockSnapshotSTONWithCommentsInSelector