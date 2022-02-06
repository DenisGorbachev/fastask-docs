# Validator

Validator is a [function](Function.md) from input phrase to output phrase where:

* If the input phrase is "valid", the output phrase is empty
* If the input phrase is not "valid", the output phrase is the validator itself rewritten in the language that is understood by the [initial executor](Executor.md#initial-executor)
  * Explanation:
    * If the input phrase is not "valid", the initial executor must know how to change it in order to make it valid. Therefore, the validator must return a description of the expected input. The best description is the validator itself. However, sometimes the validator is written in the language that is not understood by the initial executor. In this case, it's necessary to translate the validator into a different language that is understood by the initial executor.
