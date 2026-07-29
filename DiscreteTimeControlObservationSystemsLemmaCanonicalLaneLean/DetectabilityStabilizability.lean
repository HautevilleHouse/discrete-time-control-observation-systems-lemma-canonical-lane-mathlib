import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.StateSpaceModel
import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.ControllabilityObservability

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure DetectabilityPackage (S : DiscreteTimeStateSpace) where
  unobservableModesStable : Prop
  detectabilityCondition : Prop

def stabilizable (S : DiscreteTimeStateSpace) : Prop :=
  let n := S.stateDim
  ∀ (λ : Float), (Matrix.det (λ • (1 : Matrix (Fin n) (Fin n) Float) - S.A) = 0) →
    (λ < 1) ∨ controllable S

def detectable (S : DiscreteTimeStateSpace) : Prop :=
  let n := S.stateDim
  ∀ (λ : Float), (Matrix.det (λ • (1 : Matrix (Fin n) (Fin n) Float) - S.A) = 0) →
    (λ < 1) ∨ observable S

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse
