import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.EisenbudLevinKoszul

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure AuslanderDepthPackage {D : DepthPackage} where
  auslanderBuchsbaumFormula : Prop
  depthEqualsProjectiveDimension : Prop
  finiteProjectiveResolution : Prop

structure AuslanderDepthEvidence {D : DepthPackage} (A : AuslanderDepthPackage D) where
  auslanderBuchsbaumFormulaClosed : A.auslanderBuchsbaumFormula
  depthEqualsProjectiveDimensionClosed : A.depthEqualsProjectiveDimension
  finiteProjectiveResolutionClosed : A.finiteProjectiveResolution

def AuslanderDepthClosed {D : DepthPackage} (A : AuslanderDepthPackage D) : Prop :=
  A.auslanderBuchsbaumFormula ∧ A.depthEqualsProjectiveDimension ∧ A.finiteProjectiveResolution

theorem auslander_depth_closed_from_evidence {D : DepthPackage} (A : AuslanderDepthPackage D) (E : AuslanderDepthEvidence A) : AuslanderDepthClosed A :=
  And.intro E.auslanderBuchsbaumFormulaClosed (And.intro E.depthEqualsProjectiveDimensionClosed E.finiteProjectiveResolutionClosed)

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse