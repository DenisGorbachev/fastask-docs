# Semantic Types - less bugs in your code

**Semantic Types** are validators that neutralize the bugs in your code. Semantic Types are designed for **quick adoption**: they can be added to an existing application step-by-step. You don't need

Semantic Types are **non-obtrusive** - you can choose is a library, not a framework.

Semantic Types provide **internal validators** for data in your app, which allows you to ensure that the data matches the expected format after every transformation.

It's easy to understand Semantic Types

## Examples

### URL

Non-semantic type:

```typescript
const url: string = 'https://www.wikipedia.org/'
```

Semantic type:

```typescript
const url: URL = parseUrl('https://www.wikipedia.org/')
```

With semantic types, you can always be sure that the data conforms to the expected format.

Semantic types are a simple idea, but it has profound implications. For example, if you describe an API using publicly available semantic types, it becomes possible to automatically generate a UI for your API. The current UI generators are clunky precisely because they don't know the semantic types of your fields. For example, if you're building an API for ordering pizzas, and you specify that `crust` parameter has a semantic type `PizzaCrust` (a enum of `["thin", "thick"]`), then it becomes possible to generate the UI automatically.

You also need to supply the `toHumanReadableFormat` for enums (as a list of records, just like for other records).

Maybe supply the path from PizzaCrust to Label?

You don't need to build the UI - just build the validators!
