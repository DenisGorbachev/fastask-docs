Require Import Coq.Lists.List.
Require Import Coq.Strings.String.
Require Import ExtLib.Structures.Monad.

#[local] Open Scope list_scope.

Inductive Feeling := good | bad.
Inductive ProblemForm := feeling | text | expression
Inductive ExpressionKind := name | type | value.
  
Inductive BasicOperation := 
| write : ExpressionKind -> BasicOperation (* write an expression *)
| check : ExpressionKind -> BasicOperation (* check if the expression is a proper model (based on your feelings) *)

Inductive Problem : Set := 
| Zero : Problem (* zero options *)
| Many : Problem (* many options *)
| Expr : Problem. (* don't know how to express a problem *)

Definition Name = String.

Definition Names := List Name.

Record UniqueName (existing_names : Names) := mkName
{ name : String
| name_is_unique : In name existing_names
}.

Axiom current_feeling : Feeling.

(*
 * Write a variable name
 * Write a variable type
 * Write a variable value
 *)
Fixpoint on_bad_feeling := [ write name ; write type ; write value]

Fixpoint on_error (op : BasicOperation) := match op with
| write name => try_write_name
| write type =>
| write value =>
| check $kind =>
  
(*
 * Try the following approaches:
 * * Imagine name
 * * Find name on Google
 * * Generate the name (ensure that name does not exist in the current scope)
 *)
Fixpoint get_unique_name (existing_names : Names) : UniqueName := 
  return_first [ imagine ; find ; generate]

Fixpoint solve (pf : ProblemForm) := match pf with
| Feeling => solve_feeling(pf)
| Text => solve_text(pf)
| Expression => solve_expression(pf)

(*
 * Formulate the feeling in a more precise language
 * If can't formulate: dismiss? look for formulations? (it's a e-problem)
 *)
Fixpoint solve_feeling (pf : ProblemForm) :=



(* Modelling hints *)

