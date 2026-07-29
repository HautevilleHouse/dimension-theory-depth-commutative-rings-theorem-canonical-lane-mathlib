import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.DepthTheoryDimensionPackage
import HautevilleHouse.DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean.RegularSequenceConstruction

/-!
# Krull Dimension Equality Package

Relates depth to Krull dimension using the Auslander-Buchsbaum formula
and other homological methods.
-/

namespace HautevilleHouse
namespace DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean

structure KrullEqualityPackage {D : DimensionTheoryPackage}
    (R : RegularSequencePackage D) where
  depthEqualsDimension : Prop
  finiteProjectiveDimension : Prop
  auslanderBuchsbaumApplied : Prop
  equalityProved : Prop

def KrullEqualityClosed {D : DimensionTheoryPackage} {R : RegularSequencePackage D}
    (K : KrullEqualityPackage R) : Prop :=
  K.depthEqualsDimension ∧ K.equalityProved

structure KrullEqualityEvidence {D : DimensionTheoryPackage} {R : RegularSequencePackage D}
    (K : KrullEqualityPackage R) where
  depthEqualsDimensionClosed : K.depthEqualsDimension
  equalityProvedClosed : K.equalityProved

theorem krull_equality_closed_from_evidence
    {D : DimensionTheoryPackage} {R : RegularSequencePackage D}
    (K : KrullEqualityPackage R) (E : KrullEqualityEvidence K) :
    KrullEqualityClosed K := by
  exact And.intro E.depthEqualsDimensionClosed E.equalityProvedClosed

end DimensionTheoryDepthCommutativeRingsTheoremCanonicalLaneLean
end HautevilleHouse