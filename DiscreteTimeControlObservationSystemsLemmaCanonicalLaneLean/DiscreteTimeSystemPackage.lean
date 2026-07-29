import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure DiscreteTimeSystem (X : Type) (U : Type) where
  stateSpace : Type
  controlSpace : Type
  transitionFunction : stateSpace × controlSpace → stateSpace
  observationFunction : stateSpace → X
  initialCondition : Prop
  timeInvariance : Prop

structure DiscreteTimeSystemPackage (X : Type) (U : Type) where
  system : DiscreteTimeSystem X U
  admissibleControls : Prop
  initialConditionClosed : Prop
  timeInvarianceClosed : Prop

structure DiscreteTimeSystemEvidence (X : Type) (U : Type) (P : DiscreteTimeSystemPackage X U) where
  admissibleControlsClosed : P.admissibleControls
  initialConditionClosedClosed : P.initialConditionClosed
  timeInvarianceClosedClosed : P.timeInvarianceClosed

def DiscreteTimeSystemClosed (X : Type) (U : Type) (P : DiscreteTimeSystemPackage X U) : Prop :=
  P.admissibleControls ∧ P.initialConditionClosed ∧ P.timeInvarianceClosed

theorem discrete_time_system_closed_from_evidence (X : Type) (U : Type) (P : DiscreteTimeSystemPackage X U) (E : DiscreteTimeSystemEvidence X U P) : DiscreteTimeSystemClosed X U P := by
  exact And.intro E.admissibleControlsClosed (And.intro E.initialConditionClosedClosed E.timeInvarianceClosedClosed)

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse