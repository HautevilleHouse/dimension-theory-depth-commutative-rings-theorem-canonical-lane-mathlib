import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.KrullDimensionEquality

/-!
# Auslander-Buchsbaum Certificate Package

Certificate for the Auslander-Buchsbaum formula relating projective dimension and depth.
-/

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure AuslanderBuchsbaumCertificate {D : DimensionTheoryPackage}
    {R : RegularSequencePackage D} (K : KrullEqualityPackage R) where
  module : Type u
  projectiveDimension : Nat
  depthModule : Nat
  formula : projectiveDimension + depthModule = D.depth
  formulaHolds : formula
  certificateValid : Prop

def AuslanderBuchsbaumClosed {D : DimensionTheoryPackage} {R : RegularSequencePackage D}
    {K : KrullEqualityPackage R} (A : AuslanderBuchsbaumCertificate K) : Prop :=
  A.formulaHolds ∧ A.certificateValid

structure AuslanderBuchsbaumEvidence {D : DimensionTheoryPackage} {R : RegularSequencePackage D}
    {K : KrullEqualityPackage R} (A : AuslanderBuchsbaumCertificate K) where
  formulaHoldsClosed : A.formulaHolds
  certificateValidClosed : A.certificateValid

theorem auslander_buchsbaum_closed_from_evidence
    {D : DimensionTheoryPackage} {R : RegularSequencePackage D}
    {K : KrullEqualityPackage R} (A : AuslanderBuchsbaumCertificate K)
    (E : AuslanderBuchsbaumEvidence A) : AuslanderBuchsbaumClosed A := by
  exact And.intro E.formulaHoldsClosed E.certificateValidClosed

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse