import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.DiscreteTimeControlSystem

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure ReachabilityControllability (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) where
  reachableStates : Set (stateSpace sys)
  controllableStates : Set (stateSpace sys)
  reachabilityCondition : Prop
  controllabilityCondition : Prop

def ReachabilityControllabilityClosed (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) (RC : ReachabilityControllability sys) : Prop :=
  RC.reachabilityCondition ∧ RC.controllabilityCondition

theorem reachability_controllability_closed (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) (RC : ReachabilityControllability sys) (hR : RC.reachabilityCondition) (hC : RC.controllabilityCondition) : ReachabilityControllabilityClosed sys RC :=
  And.intro hR hC

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse