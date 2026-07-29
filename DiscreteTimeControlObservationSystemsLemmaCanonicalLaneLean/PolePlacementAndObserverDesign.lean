import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.KalmanDualityBridge

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure PolePlacementAndObserverDesign {X : Type} {U : Type} {Y : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} {C : ControllabilityCanonicalForm O} {K : KalmanDualityBridge C} (D : KalmanDualityBridgeEvidence K) where
  stateFeedbackGain : Type
  observerGain : Type
  polePlacementCondition : Prop
  observerErrorDynamics : Prop
  separationPrinciple : Prop

structure PolePlacementAndObserverDesignEvidence {X : Type} {U : Type} {Y : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} {C : ControllabilityCanonicalForm O} {K : KalmanDualityBridge C} {D : KalmanDualityBridgeEvidence K} (PP : PolePlacementAndObserverDesign D) where
  polePlacementConditionClosed : PP.polePlacementCondition
  observerErrorDynamicsClosed : PP.observerErrorDynamics
  separationPrincipleClosed : PP.separationPrinciple

def PolePlacementAndObserverDesignClosed {X : Type} {U : Type} {Y : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} {C : ControllabilityCanonicalForm O} {K : KalmanDualityBridge C} {D : KalmanDualityBridgeEvidence K} (PP : PolePlacementAndObserverDesign D) : Prop :=
  PP.polePlacementCondition ∧ PP.observerErrorDynamics ∧ PP.separationPrinciple

theorem pole_placement_and_observer_design_closed_from_evidence {X : Type} {U : Type} {Y : Type} {P : DiscreteTimeSystemPackage X U} {O : ObservabilityStructure P} {C : ControllabilityCanonicalForm O} {K : KalmanDualityBridge C} {D : KalmanDualityBridgeEvidence K} (PP : PolePlacementAndObserverDesign D) (E : PolePlacementAndObserverDesignEvidence PP) : PolePlacementAndObserverDesignClosed PP := by
  exact And.intro E.polePlacementConditionClosed (And.intro E.observerErrorDynamicsClosed E.separationPrincipleClosed)

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse