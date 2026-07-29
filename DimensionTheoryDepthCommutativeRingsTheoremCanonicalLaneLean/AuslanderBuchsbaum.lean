import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.ModuleDepth
import HautevilleHouse.DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.RegularSequence

/-!
# Auslander-Buchsbaum Formula Package
-/

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure AuslanderBuchsbaumPackage (M : ModuleDepth) (R : RegularSequencePackage M) where
  projectiveDimension : Prop
  depthEqualsPD : Prop
  noetherianLocalRing : Prop
  regularLocalImplication : Prop

structure AuslanderBuchsbaumEvidence {M : ModuleDepth} {R : RegularSequencePackage M} (A : AuslanderBuchsbaumPackage M R) where
  projectiveDimensionClosed : A.projectiveDimension
  depthEqualsPDClosed : A.depthEqualsPD
  noetherianLocalRingClosed : A.noetherianLocalRing
  regularLocalImplicationClosed : A.regularLocalImplication

def AuslanderBuchsbaumClosed {M : ModuleDepth} {R : RegularSequencePackage M} (A : AuslanderBuchsbaumPackage M R) : Prop :=
  A.projectiveDimension ∧ A.depthEqualsPD ∧ A.noetherianLocalRing ∧ A.regularLocalImplication

theorem auslander_buchsbaum_closed_from_evidence {M : ModuleDepth} {R : RegularSequencePackage M} (A : AuslanderBuchsbaumPackage M R) (E : AuslanderBuchsbaumEvidence A) : AuslanderBuchsbaumClosed A := by
  exact And.intro E.projectiveDimensionClosed (And.intro E.depthEqualsPDClosed (And.intro E.noetherianLocalRingClosed E.regularLocalImplicationClosed))

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse