import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def depthProjection : Projection DepthEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem depth_projection_idempotent (x : DepthEndgameState) :
    depthProjection.toFun (depthProjection.toFun x) = depthProjection.toFun x := by
  exact depthProjection.idempotent x

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse