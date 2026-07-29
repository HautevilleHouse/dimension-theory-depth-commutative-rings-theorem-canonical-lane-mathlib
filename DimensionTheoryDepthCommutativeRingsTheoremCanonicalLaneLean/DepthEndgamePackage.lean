import DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.CohenMacaulayCriterion

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure DepthEndgamePackage where
  depthPackage : DepthPackage
  koszulPackage : KoszulHomologyPackage depthPackage
  auslanderPackage : AuslanderDepthPackage depthPackage
  cohenMacaulayPackage : CohenMacaulayPackage
  depthClosed : DepthClosed depthPackage
  koszulClosed : KoszulHomologyClosed koszulPackage
  auslanderClosed : AuslanderDepthClosed auslanderPackage
  cohenMacaulayClosed : CohenMacaulayClosed cohenMacaulayPackage

structure DepthEndgameEvidence (E : DepthEndgamePackage) where
  depthClosed : E.depthClosed
  koszulClosed : E.koszulClosed
  auslanderClosed : E.auslanderClosed
  cohenMacaulayClosed : E.cohenMacaulayClosed

def DepthEndgameClosed (E : DepthEndgamePackage) : Prop :=
  E.depthClosed ∧ E.koszulClosed ∧ E.auslanderClosed ∧ E.cohenMacaulayClosed

theorem depth_endgame_closed_from_evidence (E : DepthEndgamePackage) (ev : DepthEndgameEvidence E) : DepthEndgameClosed E :=
  And.intro ev.depthClosed (And.intro ev.koszulClosed (And.intro ev.auslanderClosed ev.cohenMacaulayClosed))

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse