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

### Dict

Dict (or "dictionary", or "static map", or "associative array") is a list of pairs where:

* The first element is the input phrase.
* The second element is the output phrase.

Alternatively:

* The first element is the name.
* The second element is the meaning of the name.

Alternatively:

* The first element is the pointer.
* The second element is the value.

The input and output phrase are not equal syntactically, but they are equal semantically: after the function is applied, the input becomes equal to output.

#### Examples

Example dict for `add` function:

```
(1 1) 2
(3 5) 8
(7 7) 14
```

Example dict for `evaluate` function:

```
(add 1 1) 2
(add 3 5) 8
(add 7 7) 14
```

Example dict for `length` function:

```
"a" 1
"ab" 2
"abc" 3
```

Example dict for `get_function_body` function (see also: [Add function evaluation]):

```
add (
      ~match~
      $1
      (
        (
          zero
          $2
        )
        (
          (next @1)
          (add @1 (next $2))
        )
      )
    )
```

Example dict for `fibonacci` function:

```
0 1
1 1
2 2
3 3
4 5
5 8
6 13
7 21
```

Example dict for `number_to_expression` function:

```
0 zero
1 (next zero)
2 (next (next zero))
3 (next (next (next zero)))
```

### Content

Content (or "body", or "implementation") is a list of phrases that describes a "snap" for a specific executor.

In other words: 
* An interpreter can read the body, read the snap inputs, write the snap outputs
* A compiler can read the body and write a program that can read the snap inputs and write the snap outputs

### Type

Type is a phrase that describes another phrase.

Type can be implemented as a producer function:

* Input: a list of existing type elements (can be an empty list)
* Output: a list of existing type elements appended to a list of new type elements

Type can be implemented as a reducer function:

* Input: a phrase to be typechecked
* Output: if the input passes the typecheck, then an empty phrase, else a non-empty phrase

## FAQ

### How can I write a program for a human?

A human is a probabilistic executor: the same input may yield different outputs. This is because your input is not the only input that is being read at the same time. Furthermore, the input depends on the history of the execution.

Every text in a natural language is a program for a human.

To write a *correct* program for a human (that is, a program that produces an expected result)

You need to write a program in a formal language that outputs a 

### How can I write & test a program that influences the world state probabilistically?

Every program influences the world state 
