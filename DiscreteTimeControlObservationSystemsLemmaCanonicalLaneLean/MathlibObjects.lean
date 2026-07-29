import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ControlObservationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ControlObservationAdmittedObject where
  space : ControlObservationSpace
  discreteTimeDynamics : Prop
  observationMap : Prop
  controlledSystemReachable : Prop
  conclusion : controlledSystemReachable

structure ControlObservationEndgameState where
  object : ControlObservationAdmittedObject

def ControlObservationWitnessClosed (O : ControlObservationAdmittedObject) : Prop :=
  O.controlledSystemReachable

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse