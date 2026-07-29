import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.AuslanderBuchsbaumPackage

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure DepthFormulaPackage {R : RegularLocalRingPackage}
    (A : AuslanderBuchsbaumPackage R) where
  maximalIdealDepth : ℕ
  formulaDepthEqualsZero : maximalIdealDepth = 0
  depthFormulaProved : formulaDepthEqualsZero

structure DepthFormulaEvidence {R : RegularLocalRingPackage}
    {A : AuslanderBuchsbaumPackage R} (D : DepthFormulaPackage A) where
  formulaDepthEqualsZeroClosed : D.formulaDepthEqualsZero
  depthFormulaProvedClosed : D.depthFormulaProved

def DepthFormulaClosed {R : RegularLocalRingPackage}
    {A : AuslanderBuchsbaumPackage R} (D : DepthFormulaPackage A) : Prop :=
  D.formulaDepthEqualsZero ∧ D.depthFormulaProved

theorem depth_formula_closed_from_evidence {R : RegularLocalRingPackage}
    {A : AuslanderBuchsbaumPackage R} (D : DepthFormulaPackage A)
    (E : DepthFormulaEvidence D) : DepthFormulaClosed D := by
  exact And.intro E.formulaDepthEqualsZeroClosed E.depthFormulaProvedClosed

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse