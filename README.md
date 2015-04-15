Spl
===

This repository contains a translator from Shakespeare Programming Language (SPL) to C, and a some examples of SPL programs.

## Shakespeare Programming Language (SPL)

SPL is an esoteric programming language invented by Kalle Hasselstrom and Jon Aslund in 2001. Programs resemble Shakespeare plays. An official documentation is available in shakespeare.pdf (more details at http://shakespearelang.sourceforge.net/report/shakespeare/). K. Hasselstrom and J. Aslund did not implement any SPL compiler, but an SPL to C converter. 

## Examples of SPL Programs

This repository contains some examples coded in SPL in the folder examples. I personally developed some of them only (fact.spl for instance).

## Translator from SPL to C

The translator we use in this repository is written in Python. It has been developed by Sam Donow (c) 2014-2015 (sad3@williams.edu, drsam94@gmail.com). Sam Donow's translator software is free to edit, use, or sell. The translator implements most features of SPL described in the official documentation.

### Dependencies

- Python (2.X or 3.X).
- GCC

### Usage

To use spl, simply run

```sh
$ ./spl.sh prog.spl
$ ./prog
```

### Extra Functionalities
The following features not in the original language spec are implemented:

#### Pretty GOTOS:
In the original language spec, goto statements take the form `let us proceed to scene III`, `let us return to act I`,
etc. As this is both awkward and non-Shakesperian, Sam Donow has made it so that you can use the name of an act or scene (not case, punctuation, or whitespace sensitive) in place of a this awkward structure. Therefore, if you had
`Act I: The Forest`. Then the sentence `let us return to the forest` is equivalent to `let us return to act I`. Like standard gotos, you can not jump to a scene within an act other than the one you are currently in.

#### Initial Declarations:
In the original language, everything after the comma in a declaration, such as: `Romeo, an evil octopus.` is ignored: so in the above, though octopus is not a Shakespearean noun, this is allowed. However, the spec does not make it clear what the initial value of a variable should be, which would lead to undefined behavior. In SPL, you can put a noun phrase after Romeo, and it will be evaluated to a number, so for example `Romeo, a good man.` will assign 2 to Romeo. Any non-legal noun phrase will assign 0 instead (as though it had been ignored).