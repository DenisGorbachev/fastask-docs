# Type

Type is a phrase that describes another phrase.

Type can be defined as a list of constructors ("actions" in machine learning).

Type can be defined as a producer function:

* Input: a list of existing type elements (can be an empty list)
* Output: a list of existing type elements appended to a list of new type elements

Type can be defined as a reducer function:

* Input: a phrase to be typechecked
* Output: if the input passes the typecheck, then an empty phrase, else a non-empty phrase
