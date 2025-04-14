


/-
  Alegeti doar 2 din cele 3 exercitii pe care sa le rezolvati, si lasati-l pe celalalt ca `sorry`.  

  Incarcati fisierul cu rezolvarile, denumit `NumePrenumeGrupa.lean`, la adresa bit.ly/3RLGh7o

  Pentru rezolvare nu se pot folosi tactici de automizare de nivel inalt, precum `simp`
-/

section 

  /-
    Definiti functia `exp` astfel incat, pentru orice doua numere naturale `n` si `m`,
    `exp n m` calculeaza `nᵐ` (`n` la puterea `m`). Convenim ca `0⁰ = 1`  
  -/

  def exp (n m : Nat) : Nat := sorry

end 


section 

  variable (p q : Prop)

  /-
    Demonstrati urmatoarea teorema.
  -/

  example : (p ∧ q) → (¬¬q ∧ ¬¬p) := sorry 

end 

section 

  variable (p q : Nat → Prop)

  /-
    Demonstrati urmatoarea teorema.
  -/

  example : (∀ y, p y → ∀ x, q x) → ∀ x, ((∀ y, p y) → q x) := sorry 

end 
