import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.ModuleDepth

/-!
# Regular Sequence Package
-/

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure RegularSequencePackage (M : ModuleDepth) where
  elements : List M.module
  length : Nat
  isRegular : Prop
  maxLength : Prop
  macaulayBound : Prop

structure RegularSequenceEvidence {M : ModuleDepth} (R : RegularSequencePackage M) where
  isRegularClosed : R.isRegular
  maxLengthClosed : R.maxLength
  macaulayBoundClosed : R.macaulayBound

def RegularSequenceClosed {M : ModuleDepth} (R : RegularSequencePackage M) : Prop :=
  R.isRegular ∧ R.maxLength ∧ R.macaulayBound

theorem regular_sequence_closed_from_evidence {M : ModuleDepth} (R : RegularSequencePackage M) (E : RegularSequenceEvidence R) : RegularSequenceClosed R := by
  exact And.intro E.isRegularClosed (And.intro E.maxLengthClosed E.macaulayBoundClosed)

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse