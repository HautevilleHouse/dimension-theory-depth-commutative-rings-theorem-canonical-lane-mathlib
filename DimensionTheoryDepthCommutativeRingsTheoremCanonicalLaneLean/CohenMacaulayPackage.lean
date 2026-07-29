import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure CohenMacaulayPackage {D : DepthDimensionPackage} where
  localRing : Type u
  maximalIdeal : Type v
  residueField : Type w
  regularSequenceMaximal : Prop
  depthEqualsDimension : Prop
  gradeEqualsHeight : Prop
  canonicalModuleExists : Prop

structure CohenMacaulayEvidence {D : DepthDimensionPackage} (C : CohenMacaulayPackage D) where
  regularSequenceMaximalClosed : C.regularSequenceMaximal
  depthEqualsDimensionClosed : C.depthEqualsDimension
  gradeEqualsHeightClosed : C.gradeEqualsHeight
  canonicalModuleExistsClosed : C.canonicalModuleExists

def CohenMacaulayClosed {D : DepthDimensionPackage} (C : CohenMacaulayPackage D) : Prop :=
  C.regularSequenceMaximal ∧ C.depthEqualsDimension ∧ C.gradeEqualsHeight ∧ C.canonicalModuleExists

theorem cohen_macaulay_closed_from_evidence {D : DepthDimensionPackage} (C : CohenMacaulayPackage D) (E : CohenMacaulayEvidence C) : CohenMacaulayClosed C := by
  exact And.intro E.regularSequenceMaximalClosed
    (And.intro E.depthEqualsDimensionClosed
      (And.intro E.gradeEqualsHeightClosed E.canonicalModuleExistsClosed))

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse