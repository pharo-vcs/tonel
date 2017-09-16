# Tonel [![Build Status](https://travis-ci.org/pharo-vcs/tonel.svg)](https://travis-ci.org/pharo-vcs/tonel.svg)

Tonel is a file-per-class format for monticello repositories.

## Installing

### Pharo

```Smalltalk
Metacello new 
	repository: 'github://pharo-vcs/tonel';
	baseline: 'Tonel';
	load.
```

## Tonel Spec

    [comment]
    type { typeDefinition }
    (
        [{ methodMetadata }]
        method [
            methodBody ] 
    )*


1. comment
a comment declaration as this:

    "
    comment string
    "

is optional (but it should be there, in good design ;)

2. type
Class|Trait|Extension

3. typeDefinition
a STON file with class/trait/extension metadata

4. methodMetadata
a STON file with method metadata
is optional (but also, recommended)

5. method
method declaration as this: 

    Class[ class] >> selector

6. methodBody 
the method body (we do not parse contents, that's classbuilder task)