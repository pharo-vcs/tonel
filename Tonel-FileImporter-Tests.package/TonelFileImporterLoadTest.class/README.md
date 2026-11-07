I test how `TonelFileImporter` installs code: as a whole with `load`, or one definition at a time with `MCDefinition >> import` as `TonelChangesBrowser` does. My tests change the image: they install classes, a trait and an extension method in the package `TonelFileImporterTestData`, which `tearDown` removes.

## Responsibility:

- I check that loaded classes and traits get their package, tag, comment, variables and methods in the right protocols.
- I check that extension methods are installed in their `*Package` protocol.
- I check the browser protocol on definitions whose class exists after loading.

## Collaborators: 

- `TonelFileImporter`: the tool under test.
- `PackageOrganizer`: used to find and remove the test-data package.

## Public API and Key Messages

- Run me with the test runner, or `TonelFileImporterLoadTest suite run`.