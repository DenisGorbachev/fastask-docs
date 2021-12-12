# Add function evaluation

Suppose evaluator receives the following input:

```
add zero zero
```

This input should reduce to the following output:

```
zero
```

How should the evaluator do it?

We can't tell from a single example; we need at least one more.

Let's define a second example input:

```
add (next zero) zero
```

... which should reduce to the second example output:

```
(next zero)
```

It seems like the rule is to return the second element of the phrase. Let's test our hypothesis with a third example:

```
add (next (next zero)) (next zero)
```

```
(next (next (next zero)))
```

This is very different from the previous two examples - there's no obvious pattern. Let's summarize the examples into [a snap](MT.md#snap):

```
(add zero zero)                         (zero)
(add (next zero) zero)                  (next zero)
(add (next (next zero)) (next zero))    (next (next (next zero)))
```

---

## Drafts

Suppose we have the following definition for the function `add`:

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




```
(
  match $1
  (
    zero
    $1
  )
  (
    (next @1)
    (add @1 (next $2))
  )
) zero zero
```

```
(
  match
  zero
  (
    (
      zero
      zero
    )
    (
      (next @1)
      (add @1 (next zero))
    )
  )
)
```

```
zero
```

---

```
add (next zero) zero
```

```
(
  match
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
) (next zero) zero
```

```
(
  match
  (next zero)
  (
    (
      zero
      zero
    )
    (
      (next @1)
      (add @1 (next zero))
    )
  )
)  
```

```
(add zero (next zero))
```

```
...
```

```
(next zero)
```
