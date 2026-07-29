import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure ReachabilityPackage where
  controllableSubspace : Prop
  reachableSetCharacterization : Prop
  controllabilityGramian : Prop
  rankCondition : Prop

structure ReachabilityEvidence (R : ReachabilityPackage) where
  controllableSubspaceClosed : R.controllableSubspace
  reachableSetCharacterizationClosed : R.reachableSetCharacterization
  controllabilityGramianClosed : R.controllabilityGramian
  rankConditionClosed : R.rankCondition

def ReachabilityClosed (R : ReachabilityPackage) : Prop :=
  R.controllableSubspace ∧ R.reachableSetCharacterization ∧
  R.controllabilityGramian ∧ R.rankCondition

theorem reachability_closed_from_evidence (R : ReachabilityPackage) (E : ReachabilityEvidence R) :
    ReachabilityClosed R := by
  exact And.intro E.controllableSubspaceClosed
    (And.intro E.reachableSetCharacterizationClosed
      (And.intro E.controllabilityGramianClosed E.rankConditionClosed))

structure ObservabilityPackage where
  unobservableSubspace : Prop
  observabilityGramian : Prop
  rankCondition : Prop
  observerDesign : Prop

structure ObservabilityEvidence (O : ObservabilityPackage) where
  unobservableSubspaceClosed : O.unobservableSubspace
  observabilityGramianClosed : O.observabilityGramian
  rankConditionClosed : O.rankCondition
  observerDesignClosed : O.observerDesign

def ObservabilityClosed (O : ObservabilityPackage) : Prop :=
  O.unobservableSubspace ∧ O.observabilityGramian ∧
  O.rankCondition ∧ O.observerDesign

theorem observability_closed_from_evidence (O : ObservabilityPackage) (E : ObservabilityEvidence O) :
    ObservabilityClosed O := by
  exact And.intro E.unobservableSubspaceClosed
    (And.intro E.observabilityGramianClosed
      (And.intro E.rankConditionClosed E.observerDesignClosed))

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse