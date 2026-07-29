import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.ObservabilityBridge
import HautevilleHouse.DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.ControllabilityLemma

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ControlObservationSystem
  observability : ObservabilityData object
  controllability : ControllabilityData object

def ConstrainedDiscreteTimeControlObservationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A.observability ∧ gateClosed A.object A.controllability

theorem constrained_discrete_time_control_observation_endgame (A : AdmissibleClass) :
    ConstrainedDiscreteTimeControlObservationClosure A := by
  exact And.intro (bridge_from_admissible_class A A.observability) (gate_from_admissible_class A.object A.controllability)

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse