running
removeTestData
	"Remove the package filled by the tests, with its classes, trait and extension methods."

	(self packageOrganizer packageNamed: self dataPackageName ifAbsent: [ nil ]) ifNotNil: [ :package | package removeFromSystem ]