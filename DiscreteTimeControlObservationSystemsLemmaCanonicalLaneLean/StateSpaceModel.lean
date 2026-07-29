import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure DiscreteTimeStateSpace where
  stateDim : Nat
  inputDim : Nat
  outputDim : Nat
  A : Matrix (Fin stateDim) (Fin stateDim) Float
  B : Matrix (Fin stateDim) (Fin inputDim) Float
  C : Matrix (Fin outputDim) (Fin stateDim) Float
  D : Matrix (Fin outputDim) (Fin inputDim) Float

def stateDimension (S : DiscreteTimeStateSpace) : Nat := S.stateDim

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse
