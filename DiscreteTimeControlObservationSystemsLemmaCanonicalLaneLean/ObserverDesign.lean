import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.DiscreteTimeControlSystem

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure ObserverDesign (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) where
  observerGain : Matrix (Fin (dimension (stateSpace sys))) (Fin (dimension (outputSpace sys))) ℝ
  errorDynamicsStable : Prop

def ObserverDesignClosed (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) (obs : ObserverDesign sys) : Prop :=
  obs.errorDynamicsStable

theorem observer_design_closed (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) (obs : ObserverDesign sys) : ObserverDesignClosed sys obs :=
  obs.errorDynamicsStable

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse