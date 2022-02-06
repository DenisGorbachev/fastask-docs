# Expression

Expression is a [phrase](Phrase.md) that can be used by a specific [executor](Executor.md) to produce a non-empty phrase.

Alternative definitions:

* Expression is an input that results in a non-empty output (for a specific executor).

## Notes

* Every expression is a phrase, but not every phrase is an expression. The executor determines whether a specific phrase is an expression.
* Sometimes we can't tell whether a specific phrase is an expression (e.g. when the target executor is not well-researched).
