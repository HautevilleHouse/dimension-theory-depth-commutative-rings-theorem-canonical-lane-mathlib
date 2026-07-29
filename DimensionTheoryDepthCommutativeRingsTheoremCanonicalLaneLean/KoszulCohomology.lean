import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.ModuleDepth

/-!
# Koszul Cohomology Package
-/

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure KoszulCohomologyPackage (M : ModuleDepth) where
  sequence : List M.module
  koszulComplex : Prop
  cohomologyGroups : Prop
  vanishAboveDepth : Prop
  depthEqualsLastNonvanish : Prop

structure KoszulCohomologyEvidence {M : ModuleDepth} (K : KoszulCohomologyPackage M) where
  koszulComplexClosed : K.koszulComplex
  cohomologyGroupsClosed : K.cohomologyGroups
  vanishAboveDepthClosed : K.vanishAboveDepth
  depthEqualsLastNonvanishClosed : K.depthEqualsLastNonvanish

def KoszulCohomologyClosed {M : ModuleDepth} (K : KoszulCohomologyPackage M) : Prop :=
  K.koszulComplex ∧ K.cohomologyGroups ∧ K.vanishAboveDepth ∧ K.depthEqualsLastNonvanish

theorem koszul_cohomology_closed_from_evidence {M : ModuleDepth} (K : KoszulCohomologyPackage M) (E : KoszulCohomologyEvidence K) : KoszulCohomologyClosed K := by
  exact And.intro E.koszulComplexClosed (And.intro E.cohomologyGroupsClosed (And.intro E.vanishAboveDepthClosed E.depthEqualsLastNonvanishClosed))

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse