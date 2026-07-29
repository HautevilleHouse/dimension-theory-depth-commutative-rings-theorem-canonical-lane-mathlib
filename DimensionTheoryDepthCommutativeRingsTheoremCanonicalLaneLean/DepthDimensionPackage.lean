import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure DepthDimensionPackage where
  regularSequenceLength : Type u
  depth : Type v
  krullDimension : Type w
  depthLeqDimension : Prop
  catenaryProperty : Prop
  auslanderBuchsbaumFormula : Prop
  serreRegularCondition : Prop

structure DepthDimensionEvidence (D : DepthDimensionPackage) where
  depthLeqDimensionClosed : D.depthLeqDimension
  catenaryPropertyClosed : D.catenaryProperty
  auslanderBuchsbaumFormulaClosed : D.auslanderBuchsbaumFormula
  serreRegularConditionClosed : D.serreRegularCondition

def DepthDimensionClosed (D : DepthDimensionPackage) : Prop :=
  D.depthLeqDimension ∧ D.catenaryProperty ∧ D.auslanderBuchsbaumFormula ∧ D.serreRegularCondition

theorem depth_dimension_closed_from_evidence (D : DepthDimensionPackage) (E : DepthDimensionEvidence D) : DepthDimensionClosed D := by
  exact And.intro E.depthLeqDimensionClosed
    (And.intro E.catenaryPropertyClosed
      (And.intro E.auslanderBuchsbaumFormulaClosed E.serreRegularConditionClosed))

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse