import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.StateSpaceModel

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure ObservationSequence (S : DiscreteTimeStateSpace) where
  horizon : Nat
  observations : Vector (Vector Float S.outputDim) horizon
  inputs : Vector (Vector Float S.inputDim) horizon

structure ObservationModel (S : DiscreteTimeStateSpace) where
  noiseDistribution : Type
  observationEquation : Prop
  initialCondition : Prop

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse
