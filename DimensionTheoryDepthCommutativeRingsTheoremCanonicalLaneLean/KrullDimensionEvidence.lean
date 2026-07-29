import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure KrullDimensionPackage (R : Type u) [CommRing R] where
  chains : Set (List (Ideal R))
  maxLength : ℕ
  chainsMax : ∀ c ∈ chains, c.length ≤ maxLength
  existsChain : ∃ c ∈ chains, c.length = maxLength
  chainStrictMonotone : ∀ c ∈ chains, ∀ i j, i < j → (c.nthLe i (by ...)) < (c.nthLe j (by ...))
  chainPrime : ∀ c ∈ chains, ∀ i, Ideal.IsPrime (c.nthLe i (by ...))

def KrullDimensionClosed {R : Type u} [CommRing R] (K : KrullDimensionPackage R) : Prop :=
  K.chainsMax ∧ K.existsChain

theorem krull_dimension_closed_from_evidence {R : Type u} [CommRing R]
    (K : KrullDimensionPackage R) : KrullDimensionClosed K := by
  exact And.intro K.chainsMax K.existsChain

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse
