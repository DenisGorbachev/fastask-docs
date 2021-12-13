# Def

Def (or "definition", "implementation", "body") is a list of phrases associated with a specific word. The executor should replace the word with its def when transforming the input into output.

In other words:

* An executor may read the def and write a program that can read the [dict](Dict.md) inputs and write the [dict](Dict.md) outputs (= calculate outputs from inputs)

## Notes

* Def is a general form of the dict
* Def depends on the executor, which interprets some words of the def in an executor-specific way
