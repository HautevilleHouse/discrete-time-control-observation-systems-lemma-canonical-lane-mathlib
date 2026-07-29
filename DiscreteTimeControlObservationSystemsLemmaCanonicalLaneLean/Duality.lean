import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure DualityPackage (R : ReachabilityPackage) (O : ObservabilityPackage) where
  dualSystemDefined : Prop
  controllabilityImpliesObservabilityDual : Prop
  gramianDuality : Prop
  rankConditionEquivalence : Prop

structure DualityEvidence {R : ReachabilityPackage} {O : ObservabilityPackage} (D : DualityPackage R O) where
  dualSystemDefinedClosed : D.dualSystemDefined
  controllabilityImpliesObservabilityDualClosed : D.controllabilityImpliesObservabilityDual
  gramianDualityClosed : D.gramianDuality
  rankConditionEquivalenceClosed : D.rankConditionEquivalence

def DualityClosed {R : ReachabilityPackage} {O : ObservabilityPackage} (D : DualityPackage R O) : Prop :=
  D.dualSystemDefined ∧ D.controllabilityImpliesObservabilityDual ∧
  D.gramianDuality ∧ D.rankConditionEquivalence

theorem duality_closed_from_evidence {R : ReachabilityPackage} {O : ObservabilityPackage}
    (D : DualityPackage R O) (E : DualityEvidence D) : DualityClosed D := by
  exact And.intro E.dualSystemDefinedClosed
    (And.intro E.controllabilityImpliesObservabilityDualClosed
      (And.intro E.gramianDualityClosed E.rankConditionEquivalenceClosed))

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse