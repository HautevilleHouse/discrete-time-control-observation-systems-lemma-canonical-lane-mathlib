import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure ControlObservationSystem where
  stateSpace : Type u
  controlSpace : Type v
  observationSpace : Type w
  dynamics : stateSpace × controlSpace → stateSpace
  observation : stateSpace → observationSpace
  discreteTime : Prop
  initialState : stateSpace

def systemTrajectory (sys : ControlObservationSystem) : ℕ → stateSpace × observationSpace := 
  λ n =>
    let rec step (t : ℕ) (x : stateSpace) : stateSpace × observationSpace :=
      let y := sys.observation x
      if t = 0 then (x, y)
      else
        let u : controlSpace := default  -- placeholder control; actual control sequence may be chosen
        let x' := sys.dynamics (x, u)
        step (t - 1) x'
    step n sys.initialState

structure ObservationSequence (sys : ControlObservationSystem) where
  observations : ℕ → observationSpace
  consistent : ∀ n, observations n = (systemTrajectory sys n).2

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse