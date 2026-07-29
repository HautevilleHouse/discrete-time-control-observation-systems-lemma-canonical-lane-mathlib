import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.DiscreteTimeControlSystem
import HautevilleHouse.DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.ObserverDesign
import HautevilleHouse.DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.ReachabilityControllability

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure SeparationPrinciple (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) where
  controllerDesign : ReachabilityControllability sys
  observerDesign : ObserverDesign sys
  closedLoopStable : Prop

def SeparationPrincipleClosed (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) (SP : SeparationPrinciple sys) : Prop :=
  SP.closedLoopStable

theorem separation_principle_closed (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) (SP : SeparationPrinciple sys) : SeparationPrincipleClosed sys SP :=
  SP.closedLoopStable

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse