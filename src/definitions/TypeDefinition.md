# Type definition

Type definition is [a phrase](./Phrase.md) that describes [a type](./Type.md).

* Informal description:
  * Informal description for
* Regular expression:
  * Natural
    * `\d+` describes 1, 2, 100, 1234567
    * `\w` describes a, b, c, d but not ab, bc, abcd

Type can be defined as a list of constructors.

Type can be defined as a producer function:

* Input: a list of existing type elements (can be an empty list)
* Output: a list of existing type elements appended to a list of new type elements

Type can be defined as a reducer function ([a validator](Validator.md)):

* Input: a phrase to be typechecked
* Output: if the input passes the typecheck, then an empty phrase, else a non-empty phrase
