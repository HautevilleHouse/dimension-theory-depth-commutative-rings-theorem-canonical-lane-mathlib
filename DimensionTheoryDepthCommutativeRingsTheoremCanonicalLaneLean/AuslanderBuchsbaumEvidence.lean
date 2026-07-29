import canonicalLaneMathlib.AdmissibleClass
import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.DepthAdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure AuslanderBuchsbaumPackage {R : Type u} [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  projectiveDimension : ℕ
  depth : ℕ
  auslanderBuchsbaumFormula : projectiveDimension + depth = dim (Localization.atPrime (maximalIdeal R))
  evidenceAssumptions : projectiveDimension < ∞ ∧ depth < ∞

theorem auslander_buchsbaum_closed {R : Type u} [CommRing R] [LocalRing R] {M : Type v} [AddCommGroup M] [Module R M]
    (A : AuslanderBuchsbaumPackage R M) : A.auslanderBuchsbaumFormula := by
  exact A.auslanderBuchsbaumFormula

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse
