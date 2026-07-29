import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure DepthAdmissibleClass (R : Type u) [CommRing R] where
  module : Type v
  [inst : AddCommGroup module]
  [inst' : Module R module]
  regularSequence : List R
  depth : ℕ
  regularSequenceLength : regularSequence.length = depth
  maximal : Prop
  object : AdmittedObject
  endpointSatisfied : maximal
  remainderRecorded : True
  gateWitness : Or.inl endpointSatisfied

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse
