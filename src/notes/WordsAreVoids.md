# Words Are Voids

[A mathematical phrase](../definitions/Phrase.md) has an interesting property: **the meaning is the same** under a [safe rename](../definitions/SafeRename.md). Let's see what that means.

Suppose we have a phrase: `(next zero)`. If we rename `next` to `after`, we will have `(after zero)`. The meaning of the phrase is the same - we just renamed a word. Let's translate it into French: `(après zéro)`. The meaning still the same - but notice that the words are meaningless to a non-French speaker. We can replace words with characters: `(x y)`. We can replace characters with numbers: `(1 0)`. The meaning is still the same, so we can conclude:

* The words don't define the meaning of a mathematical phrase.
* _The positions_ of the words define the meaning of a mathematical phrase.
