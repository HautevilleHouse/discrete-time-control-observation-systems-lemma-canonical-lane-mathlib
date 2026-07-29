import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.ObservabilityStructure

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure ControllabilityCanonicalForm {X : Type} {U : Type} {P : DiscreteTimeSystemPackage X U} (O : ObservabilityStructure P) where
  controllabilityMatrix : Type
  rankCondition : Prop
  reachableSubspace : Prop
  controllabilityDecomposition : Prop

structure ControllabilityCanonicalFormEvidence {X : Type} {U : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} (C : ControllabilityCanonicalForm O) where
  rankConditionClosed : C.rankCondition
  reachableSubspaceClosed : C.reachableSubspace
  controllabilityDecompositionClosed : C.controllabilityDecomposition

def ControllabilityCanonicalFormClosed {X : Type} {U : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} (C : ControllabilityCanonicalForm O) : Prop :=
  C.rankCondition ∧ C.reachableSubspace ∧ C.controllabilityDecomposition

theorem controllability_canonical_form_closed_from_evidence {X : Type} {U : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} (C : ControllabilityCanonicalForm O) (E : ControllabilityCanonicalFormEvidence C) : ControllabilityCanonicalFormClosed C := by
  exact And.intro E.rankConditionClosed (And.intro E.reachableSubspaceClosed E.controllabilityDecompositionClosed)

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse