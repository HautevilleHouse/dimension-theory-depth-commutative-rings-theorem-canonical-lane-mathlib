import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.DepthTheoryDimensionPackage

/-!
# Regular Sequence Construction Package
-/

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure RegularSequencePackage {D : DimensionTheoryPackage} where
  sequence : List D.ring
  length : Nat
  regularProperty : Prop
  maximalLength : Prop

The depth is the maximal length of a regular sequence.

def RegularSequenceClosed {D : DimensionTheoryPackage} (R : RegularSequencePackage D) : Prop :=
  R.regularProperty ∧ R.maximalLength

structure RegularSequenceEvidence {D : DimensionTheoryPackage} (R : RegularSequencePackage D) where
  regularPropertyClosed : R.regularProperty
  maximalLengthClosed : R.maximalLength

theorem regular_sequence_closed_from_evidence
    {D : DimensionTheoryPackage} (R : RegularSequencePackage D)
    (E : RegularSequenceEvidence R) : RegularSequenceClosed R := by
  exact And.intro E.regularPropertyClosed E.maximalLengthClosed

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse