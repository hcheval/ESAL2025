macro "use" e:term : tactic => `(tactic| refine Exists.intro $e ?_)

set_option autoImplicit false


section variable {α : Type} {p : α → Prop}


  /- In exercise 6 of Lab3 we proved that `(∀ x : Nat, p x) → (∃ x : Nat, p x)`.
     This not only true for predicates on `Nat` but on other types too.
     *Before scrolling down*, is it true that for any type `α`, `(∀ x : α, p x) → (∃ x : α, p x)` holds?
     If not, can you think of a counterexample and of a condition that `α` needs to satisfy in order for the statement to be true?
  -/


  /- The needed condition is for `α` to be nonempty. This condition is expressed in Lean as below, called `Inhabited α`.
     This allows one to use the `default` function that returns an arbitrary element of type `α`, which can be used as a witness below.
  -/
  example [Inhabited α] : (∀ x : α, p x) → (∃ x : α, p x) := sorry 



end


/- **Quantifying over proposition**-/

/-
  Lean is not limited to first-order logic, as noticed for example by the fact that one may
  form proposition that quantify over `Prop` itself.
  For instance, exercise 6 shows an equivalent characterization of `False`,
  as the proposition stating that all propositions are true.

  This "higher-order nature", also allows one (exercise 7, 8) to internally disprove
  logical principles that are false in general.
-/

section

  /- Exercise 6 -/
  example : (∀ p : Prop, p) ↔ False := sorry


  /- Exercise 7 -/
  example : ¬(∀ p q : Prop, p ∨ q → p ∧ q) := sorry

  /- Exercise 8 -/
  example : ¬(∀ (p q : Nat → Prop), (∀ x, p x ∨ q x) → (∀ x, p x) ∨ (∀ x, q x)) := sorry

end
