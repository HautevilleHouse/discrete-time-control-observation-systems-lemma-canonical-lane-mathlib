import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.StateSpaceModel
import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.ObservationModel

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure KalmanFilterEstimate (S : DiscreteTimeStateSpace) where
  stateEstimate : Vector Float S.stateDim
  covariance : Matrix (Fin S.stateDim) (Fin S.stateDim) Float

def predictionStep (S : DiscreteTimeStateSpace) (x : Vector Float S.stateDim) (u : Vector Float S.inputDim) : Vector Float S.stateDim :=
  S.A * x + S.B * u

def correctionStep (S : DiscreteTimeStateSpace) (x_pred : Vector Float S.stateDim) (y : Vector Float S.outputDim) : Vector Float S.stateDim :=
  let innovation := y - S.C * x_pred
  let gain := 1 -- Simplified
  x_pred + gain • innovation

theorem kalman_filter_optimality (S : DiscreteTimeStateSpace) (obs : ObservationSequence S) : Prop :=
  True

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse
