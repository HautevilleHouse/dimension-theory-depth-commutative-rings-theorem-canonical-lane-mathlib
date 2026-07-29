import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.DepthTheoremData

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure KoszulHomologyPackage {D : DepthPackage} where
  koszulComplex : Type u
  homologyGroups : ℕ → Type u
  vanishingDegree : ℕ
  vanishingProperty : Prop
  longExactSequence : Prop

structure KoszulHomologyEvidence {D : DepthPackage} (K : KoszulHomologyPackage D) where
  vanishingPropertyClosed : K.vanishingProperty
  longExactSequenceClosed : K.longExactSequence

def KoszulHomologyClosed {D : DepthPackage} (K : KoszulHomologyPackage D) : Prop :=
  K.vanishingProperty ∧ K.longExactSequence

theorem koszul_homology_closed_from_evidence {D : DepthPackage} (K : KoszulHomologyPackage D) (E : KoszulHomologyEvidence K) : KoszulHomologyClosed K :=
  And.intro E.vanishingPropertyClosed E.longExactSequenceClosed

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse