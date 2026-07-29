import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure AuslanderBuchsbaumPackage {D : DepthDimensionPackage} {C : CohenMacaulayPackage D} where
  finiteModule : Type u
  projectiveDimension : Type v
  depthModule : Type w
  formulaEquality : Prop
  resolutionExists : Prop

structure AuslanderBuchsbaumEvidence {D : DepthDimensionPackage} {C : CohenMacaulayPackage D} (AB : AuslanderBuchsbaumPackage D C) where
  formulaEqualityClosed : AB.formulaEquality
  resolutionExistsClosed : AB.resolutionExists

def AuslanderBuchsbaumClosed {D : DepthDimensionPackage} {C : CohenMacaulayPackage D} (AB : AuslanderBuchsbaumPackage D C) : Prop :=
  AB.formulaEquality ∧ AB.resolutionExists

theorem auslander_buchsbaum_closed_from_evidence {D : DepthDimensionPackage} {C : CohenMacaulayPackage D} (AB : AuslanderBuchsbaumPackage D C) (E : AuslanderBuchsbaumEvidence AB) : AuslanderBuchsbaumClosed AB := by
  exact And.intro E.formulaEqualityClosed E.resolutionExistsClosed

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse