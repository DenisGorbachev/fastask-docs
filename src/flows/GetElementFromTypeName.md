# Get an element from type name

1. Get [a type name](../definitions/TypeName.md) from supervisor
2. Get [a type definition](../definitions/TypeDefinition.md) from type name
   1. If type definition does not exist: [make a type definition from sample and type name](./GetTypeDefinitionFromSampleAndTypeName.md)
3. Get [an element](../definitions/Element.md) from type definition.

```dot process
digraph {
  Supervisor [ label = "Supervisor", shape = "box" ];
  TypeName [ label = "Type name" ];
  TypeDef [ label = "Type definition" ];
  Element [ label = "Element", URL = "../definitions/Element.html" ];
  
  Supervisor -> TypeName;
  TypeName -> TypeDef;
  TypeDef -> Element;
}
```
