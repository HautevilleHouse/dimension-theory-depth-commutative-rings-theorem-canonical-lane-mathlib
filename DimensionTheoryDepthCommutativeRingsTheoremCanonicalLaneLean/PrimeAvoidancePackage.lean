import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure PrimeAvoidancePackage (R : Type u) [CommRing R] where
  ideals : List (Ideal R)
  primeIdeal : Ideal R
  containment : ∀ I ∈ ideals, I ≤ primeIdeal
  notContained : ∃ I, I ∉ ideals
  prime : Ideal.IsPrime primeIdeal

structure PrimeAvoidanceEvidence {R : Type u} [CommRing R] (P : PrimeAvoidancePackage R) where
  containmentClosed : P.containment
  notContainedClosed : P.notContained
  primeClosed : P.prime

def PrimeAvoidanceClosed {R : Type u} [CommRing R] (P : PrimeAvoidancePackage R) : Prop :=
  P.containment ∧ P.notContained ∧ P.prime

theorem prime_avoidance_closed_from_evidence {R : Type u} [CommRing R]
    (P : PrimeAvoidancePackage R) (E : PrimeAvoidanceEvidence P) :
    PrimeAvoidanceClosed P := by
  exact And.intro E.containmentClosed (And.intro E.notContainedClosed E.primeClosed)

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse
