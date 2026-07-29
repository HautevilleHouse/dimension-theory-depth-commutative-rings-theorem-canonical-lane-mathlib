import canonicalLaneMathlib.AdmissibleClass
import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.DepthAdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

def bridgeClosed (A : DepthAdmissibleClass R) : Prop :=
  A.maximal

theorem bridge_from_admissible_class (A : DepthAdmissibleClass R) :
    bridgeClosed A := by
  exact A.endpointSatisfied

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse
