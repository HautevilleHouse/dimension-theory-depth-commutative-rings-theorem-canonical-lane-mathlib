import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.AuslanderDepthCharacterization

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure CohenMacaulayPackage where
  ring : Type u
  depthEqualsDimension : Prop
  maximalDepthProperty : Prop
  paramSystemExists : Prop

structure CohenMacaulayEvidence (C : CohenMacaulayPackage) where
  depthEqualsDimensionClosed : C.depthEqualsDimension
  maximalDepthPropertyClosed : C.maximalDepthProperty
  paramSystemExistsClosed : C.paramSystemExists

def CohenMacaulayClosed (C : CohenMacaulayPackage) : Prop :=
  C.depthEqualsDimension ∧ C.maximalDepthProperty ∧ C.paramSystemExists

theorem cohen_macaulay_closed_from_evidence (C : CohenMacaulayPackage) (E : CohenMacaulayEvidence C) : CohenMacaulayClosed C :=
  And.intro E.depthEqualsDimensionClosed (And.intro E.maximalDepthPropertyClosed E.paramSystemExistsClosed)

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse