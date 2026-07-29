import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ControlObservationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ControlObservationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse