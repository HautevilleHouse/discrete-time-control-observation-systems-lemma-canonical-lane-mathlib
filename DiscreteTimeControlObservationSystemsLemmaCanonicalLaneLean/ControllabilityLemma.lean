import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.ControlObservationSystem
import HautevilleHouse.DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.ObservabilityBridge

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure ControllabilityData (sys : ControlObservationSystem) where
  reachableSet : Set (stateSpace sys)
  reachableInSteps : ℕ → Set (stateSpace sys)
  controllabilityCondition : Prop
  controllabilityConditionClosed : controllabilityCondition

def gateClosed (sys : ControlObservationSystem) (cont : ControllabilityData sys) : Prop :=
  cont.controllabilityCondition

theorem gate_from_admissible_class (A : AdmissibleClass) (sys : ControlObservationSystem) (cont : ControllabilityData sys) : gateClosed sys cont := by
  exact cont.controllabilityConditionClosed

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse