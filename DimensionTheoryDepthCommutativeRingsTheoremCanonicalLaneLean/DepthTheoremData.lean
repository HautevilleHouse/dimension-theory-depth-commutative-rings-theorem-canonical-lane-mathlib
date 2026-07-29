import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure DepthPackage where
  module : Type u
  ring : Type v
  sequence : ℕ
  depthValue : ℕ
  regularSequenceProperty : Prop
  cohomologicalCondition : Prop

structure DepthEvidence (D : DepthPackage) where
  depthValueClosed : D.depthValue = D.sequence
  regularSequencePropertyClosed : D.regularSequenceProperty
  cohomologicalConditionClosed : D.cohomologicalCondition

def DepthClosed (D : DepthPackage) : Prop :=
  D.depthValue = D.sequence ∧ D.regularSequenceProperty ∧ D.cohomologicalCondition

theorem depth_closed_from_evidence (D : DepthPackage) (E : DepthEvidence D) : DepthClosed D :=
  And.intro E.depthValueClosed (And.intro E.regularSequencePropertyClosed E.cohomologicalConditionClosed)

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse