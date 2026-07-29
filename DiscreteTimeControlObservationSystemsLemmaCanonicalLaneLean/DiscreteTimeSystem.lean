import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Discrete Time System Package
-/

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure DiscreteTimeSystemPackage where
  stateSpace : Type u
  controlSpace : Type v
  observationSpace : Type w
  dynamics : stateSpace → controlSpace → stateSpace
  observationMap : stateSpace → observationSpace
  discreteTimeIndex : ℕ
  initialCondition : stateSpace
  controlSequence : ℕ → controlSpace
  stateTrajectory : ℕ → stateSpace
  observationSequence : ℕ → observationSpace
  dynamicsConsistent : Prop
  observationConsistent : Prop

structure DiscreteTimeSystemEvidence (S : DiscreteTimeSystemPackage) where
  dynamicsConsistentClosed : S.dynamicsConsistent
  observationConsistentClosed : S.observationConsistent

def DiscreteTimeSystemClosed (S : DiscreteTimeSystemPackage) : Prop :=
  S.dynamicsConsistent ∧ S.observationConsistent

theorem discrete_time_system_closed_from_evidence (S : DiscreteTimeSystemPackage)
    (E : DiscreteTimeSystemEvidence S) : DiscreteTimeSystemClosed S := by
  exact And.intro E.dynamicsConsistentClosed E.observationConsistentClosed

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse