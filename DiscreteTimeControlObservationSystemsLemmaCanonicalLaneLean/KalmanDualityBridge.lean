import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.ControllabilityCanonicalForm

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure KalmanDualityBridge {X : Type} {U : Type} {Y : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} (C : ControllabilityCanonicalForm O) where
  dualSystem : DiscreteTimeSystem Y U
  dualityMap : Prop
  controllabilityObservabilityCorrespondence : Prop
  kalmanDecomposition : Prop

structure KalmanDualityBridgeEvidence {X : Type} {U : Type} {Y : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} {C : ControllabilityCanonicalForm O} (K : KalmanDualityBridge C) where
  dualityMapClosed : K.dualityMap
  controllabilityObservabilityCorrespondenceClosed : K.controllabilityObservabilityCorrespondence
  kalmanDecompositionClosed : K.kalmanDecomposition

def KalmanDualityBridgeClosed {X : Type} {U : Type} {Y : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} {C : ControllabilityCanonicalForm O} (K : KalmanDualityBridge C) : Prop :=
  K.dualityMap ∧ K.controllabilityObservabilityCorrespondence ∧ K.kalmanDecomposition

theorem kalman_duality_bridge_closed_from_evidence {X : Type} {U : Type} {Y : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} {C : ControllabilityCanonicalForm O} (K : KalmanDualityBridge C) (E : KalmanDualityBridgeEvidence K) : KalmanDualityBridgeClosed K := by
  exact And.intro E.dualityMapClosed (And.intro E.controllabilityObservabilityCorrespondenceClosed E.kalmanDecompositionClosed)

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse