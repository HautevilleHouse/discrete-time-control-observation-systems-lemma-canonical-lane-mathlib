import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def controlObservationProjection : Projection ControlObservationEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem control_observation_projection_idempotent (x : ControlObservationEndgameState) :
    controlObservationProjection.toFun (controlObservationProjection.toFun x) = controlObservationProjection.toFun x := by
  exact controlObservationProjection.idempotent x

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse