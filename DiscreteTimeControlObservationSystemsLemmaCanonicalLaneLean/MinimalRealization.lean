import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure MinimalRealizationPackage (R : ReachabilityPackage) (O : ObservabilityPackage) where
  minimalSystemDefined : Prop
  kalmanDecomposition : Prop
  uniquenessUpToIsomorphism : Prop
  dimensionCondition : Prop

structure MinimalRealizationEvidence {R : ReachabilityPackage} {O : ObservabilityPackage}
    (M : MinimalRealizationPackage R O) where
  minimalSystemDefinedClosed : M.minimalSystemDefined
  kalmanDecompositionClosed : M.kalmanDecomposition
  uniquenessUpToIsomorphismClosed : M.uniquenessUpToIsomorphism
  dimensionConditionClosed : M.dimensionCondition

def MinimalRealizationClosed {R : ReachabilityPackage} {O : ObservabilityPackage}
    (M : MinimalRealizationPackage R O) : Prop :=
  M.minimalSystemDefined ∧ M.kalmanDecomposition ∧
  M.uniquenessUpToIsomorphism ∧ M.dimensionCondition

theorem minimal_realization_closed_from_evidence {R : ReachabilityPackage} {O : ObservabilityPackage}
    (M : MinimalRealizationPackage R O) (E : MinimalRealizationEvidence M) :
    MinimalRealizationClosed M := by
  exact And.intro E.minimalSystemDefinedClosed
    (And.intro E.kalmanDecompositionClosed
      (And.intro E.uniquenessUpToIsomorphismClosed E.dimensionConditionClosed))

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse