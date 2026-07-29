import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.DiscreteTimeSystem

/-!
# Controllability and Observability Package
-/

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure ControllabilityObservabilityPackage {S : DiscreteTimeSystemPackage} (Sys : S) where
  reachableSet : Set S.stateSpace
  observableSubspace : Set S.stateSpace
  controllabilityGramian : Prop
  observabilityGramian : Prop
  reachableFromInitial : Prop
  observableFromOutput : Prop
  controllabilityCond : Prop
  observabilityCond : Prop

structure ControllabilityObservabilityEvidence {S : DiscreteTimeSystemPackage}
    {Sys : S} (C : ControllabilityObservabilityPackage Sys) where
  reachableFromInitialClosed : C.reachableFromInitial
  observableFromOutputClosed : C.observableFromOutput
  controllabilityCondClosed : C.controllabilityCond
  observabilityCondClosed : C.observabilityCond

def ControllabilityObservabilityClosed {S : DiscreteTimeSystemPackage}
    {Sys : S} (C : ControllabilityObservabilityPackage Sys) : Prop :=
  C.reachableFromInitial ∧ C.observableFromOutput ∧ C.controllabilityCond ∧ C.observabilityCond

theorem controllability_observability_closed_from_evidence
    {S : DiscreteTimeSystemPackage} {Sys : S}
    (C : ControllabilityObservabilityPackage Sys)
    (E : ControllabilityObservabilityEvidence C) : ControllabilityObservabilityClosed C := by
  exact And.intro E.reachableFromInitialClosed
    (And.intro E.observableFromOutputClosed
      (And.intro E.controllabilityCondClosed E.observabilityCondClosed))

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse