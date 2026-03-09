import Mathlib

example {G : Type*} [Group G] (H : Subgroup G) :
    Nat.card H ∣ Nat.card G := by
  exact Subgroup.card_subgroup_dvd_card H

-- data for a G-Algebra
variable (G R A : Type*) [CommSemiring R] [CommRing A] [Algebra R A]
  [Group G] [MulSemiringAction G A] [SMulCommClass G R A] (H K : Subgroup G)

-- interior G-Algebra assumes that the action factors through Aˣ

def fixedSubalgebra : Subalgebra R A := FixedPoints.subalgebra R A H
-- this is an N(H)-algebra and an interior C(H)-algebra

-- (use K.subgroupOf H here?)
def relativeTraceMap : fixedSubalgebra G R A H →ₐ[R] fixedSubalgebra G R A K := by
  sorry
