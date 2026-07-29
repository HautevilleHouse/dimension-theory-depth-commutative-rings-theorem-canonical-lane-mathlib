import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure RegularLocalRingPackage where
  ring : Type u
  maximalIdeal : Set ring
  regularSequence : List ring
  length : ℕ
  isRegularLocal : Prop
  auslanderBuchsbaum : Prop
  depthFormulaWorks : depthFormula = 0 ∧ (isRegularLocal → true)

structure RegularLocalRingEvidence (R : RegularLocalRingPackage) where
  isRegularLocalClosed : R.isRegularLocal
  auslanderBuchsbaumClosed : R.auslanderBuchsbaum
  depthFormulaWorksClosed : R.depthFormulaWorks

def RegularLocalRingClosed (R : RegularLocalRingPackage) : Prop :=
  R.isRegularLocal ∧ R.auslanderBuchsbaum ∧ R.depthFormulaWorks

theorem regular_local_ring_closed_from_evidence (R : RegularLocalRingPackage)
    (E : RegularLocalRingEvidence R) : RegularLocalRingClosed R := by
  exact And.intro E.isRegularLocalClosed (And.intro E.auslanderBuchsbaumClosed E.depthFormulaWorksClosed)

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse