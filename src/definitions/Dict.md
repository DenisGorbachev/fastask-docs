# Dict

Dict (or "dictionary", or "static map", or "associative array") is a list of pairs where:

* The first element is the input [phrase](Phrase.md).
* The second element is the output [phrase](Phrase.md).

Alternatively:

* The first element is the name.
* The second element is the meaning of the name.

Alternatively:

* The first element is the pointer.
* The second element is the value.

The input and output phrase are not equal syntactically, but they are equal semantically: after the function is applied, the input becomes equal to output.

## Examples

Example dict for `add` function:

```lisp
(1 1) 2
(3 5) 8
(7 7) 14
```

Example dict for `evaluate` function:

```lisp
(add 1 1) 2
(add 3 5) 8
(add 7 7) 14
```

Example dict for `length` function:

```lisp
"a" 1
"ab" 2
"abc" 3
```

Example dict for `get_function_body` function (see also: [Add function evaluation]):

```lisp
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

```lisp
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

```lisp
0 zero
1 (next zero)
2 (next (next zero))
3 (next (next (next zero)))
```
