accessing
contents

	^ contents ifNil: [ contents := fileReference contents ]