import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure DiscreteTimeControlSystem (U : Type) (X : Type) (Y : Type) where
  stateSpace : Type
  inputSpace : Type
  outputSpace : Type
  dynamics : stateSpace → inputSpace → stateSpace
  observation : stateSpace → outputSpace
  initialState : stateSpace

def DiscreteTimeControlSystemClosed {U X Y : Type} (sys : DiscreteTimeControlSystem U X Y) : Prop :=
  True

theorem discrete_time_control_system_lawful {U X Y : Type} (sys : DiscreteTimeControlSystem U X Y) : DiscreteTimeControlSystemClosed sys := by
  unfold DiscreteTimeControlSystemClosed
  trivial

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse