# Maker-Taker

Maker-Taker is a pair of fundamental algorithms for guiding the software development. They minimize the total development time by instructing developers to implement partial functions, and telling them how to extend existing partial functions to cover a progressively larger part of their input domains.

Maker-Taker is based on an important observation: "In practice, a function will never receive its every possible input". In other words: there is always some obscure input that won't be seen by the function. This is true for every function with an infinite input domain (for example: the `add` function, which has an infinite input domain of pairs of natural numbers, will never see every possible pair of natural numbers).

This fundamental property allows to split a complex task into simple tasks by splitting a total function into partial functions. Partial functions are easier to implement because they have smaller input domains. Maker-Taker generates new input domains from execution statistics and the axiom of continuity (which states that the probability of seeing a new input depends on the probability of seeing a previous input that is "close to" the new input).

## Definitions

* [Word](definitions/Word.md)
* [Phrase](definitions/Phrase.md)
* [Type](definitions/Type.md)
* [Dict](definitions/Dict.md)
* [Def](definitions/Def.md)
