# Tonel [![Build Status](https://travis-ci.org/pharo-vcs/tonel.svg)](https://travis-ci.org/pharo-vcs/tonel)

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

   comment declaration is this:

    "
    comment string
    "

   it's optional (but normally there, in a good design ;)

2. type

   Class|Trait|Extension

3. typeDefinition

   STON file with class/trait/extension metadata

4. methodMetadata

   STON file with method metadata
   it's optional (but also, recommended)

5. method

   method declaration is this: 

    Class[ class] >> selector

6. methodBody 

   the method body (we do not parse contents, that's a classbuilder task)
   
### Migrating

If you are migrating from the previous filetree (one file per method) format, the [included script](./MigrateFromFileTree.md) might help.
