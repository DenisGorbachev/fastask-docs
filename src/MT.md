# Maker-Taker

Maker-Taker is a pair of fundamental algorithms for guiding the software development. They minimize the total development time by instructing developers to implement partial functions, and telling them how to extend existing partial functions to cover a larger part of their input domains.

Maker-Taker is based on an important observation: "In practice, a function will never receive its every possible input". In other words: there is always some obscure input that won't be seen by the function. This is true for every function with an infinite input domain (for example: the `add` function, which has an infinite input domain of natural number pairs, will never see every possible natural number pair).

Instead of every possible input, the function will see some specific inputs between the timestamps `t0` and `t1`. Maker-Taker generates a probability distribution over inputs that may be seen by the function based on previous execution statistics and the axiom of continuity (which states that the probability of seeing a new input depends on the probability of seeing a previous input that is "close to" the new input - where "close to" depends on the type of input).

## Definitions

### Word

**Word** is a list of characters without punctuation.

#### Examples

* main
* add
* 42
* 0
* +
* =

#### Notes

* Punctuation characters are .,() and whitespace characters.
* In the context of context-free grammars, a word is called a symbol.

### Phrase

**Phrase** is either a single word or a list of phrases separated by whitespace.

#### Examples

* main
* add 2 2
* add (add 1 1) 2
* = (add 2 2) 4

#### Notes

* Every word is also a phrase.
* Parentheses allow to group the words into phrases (informally: "(add 2 2)" is treated as a word)
* Yeah, it's a LISP.

### Snap

Snap ("static function map") is a list of input-output pairs, where both input and output is a phrase.

#### Examples

* Example 1
  * (add 1 1) 2
  * (add 1 2) 3
  * (add 2 2) 4
* Example 2
  * a 1
  * ab 2
  * abc 3
* Example 3
  * 1 1
  * 2 1
  * 3 2
  * 4 3
  * 5 5
  * 6 8
* Example 4
  * 0 zero
  * 1 (next zero)
  * 2 (next (next zero))
  * 3 (next (next (next zero)))

### Body

Body (or "implementation") is a list of phrases that describes a "snap" in a general way.  In other words: 
* An interpreter can read the body, read the snap inputs, write the snap outputs
* A compiler can read the body and write a program that can read the snap inputs and write the snap outputs
