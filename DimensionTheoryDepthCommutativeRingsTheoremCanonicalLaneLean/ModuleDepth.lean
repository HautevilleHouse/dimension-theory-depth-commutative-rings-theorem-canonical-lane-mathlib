import canonicalLaneMathlib.AdmissibleClass

/-!
# Module Depth Package
-/

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure ModuleDepth where
  ring : Type u
  module : Type v
  ringIsNoetherian : Prop
  moduleIsFinite : Prop
  maximalIdealDepth : Prop
  regularSequenceLength : Nat
  depthComputed : regularSequenceLength = 0 ∨ regularSequenceLength > 0

structure ModuleDepthEvidence (M : ModuleDepth) where
  ringIsNoetherianClosed : M.ringIsNoetherian
  moduleIsFiniteClosed : M.moduleIsFinite
  maximalIdealDepthClosed : M.maximalIdealDepth

def ModuleDepthClosed (M : ModuleDepth) : Prop :=
  M.ringIsNoetherian ∧ M.moduleIsFinite ∧ M.maximalIdealDepth

theorem module_depth_closed_from_evidence (M : ModuleDepth) (E : ModuleDepthEvidence M) : ModuleDepthClosed M := by
  exact And.intro E.ringIsNoetherianClosed (And.intro E.moduleIsFiniteClosed E.maximalIdealDepthClosed)

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse