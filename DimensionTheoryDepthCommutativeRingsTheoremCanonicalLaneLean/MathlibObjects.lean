import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DepthSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DepthAdmittedObject where
  space : DepthSpace
  noetherianRing : Prop
  moduleFiniteType : Prop
  depthFormula : ℕ
  formulaProved : depthFormula = 0 ∧ (noetherianRing → moduleFiniteType)
  conclusion : formulaProved

structure DepthEndgameState where
  object : DepthAdmittedObject

def DepthWitnessClosed (O : DepthAdmittedObject) : Prop :=
  O.formulaProved

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse