import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure DiscreteTimeControlAdmittedObject where
  system : Type
  observationMap : Type
  controlLaw : Type
  conclusion : Prop

structure DiscreteTimeControlWitnessClosed (O : DiscreteTimeControlAdmittedObject) : Prop where
  systemStable : Prop
  observableState : Prop
  controlReachable : Prop

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse