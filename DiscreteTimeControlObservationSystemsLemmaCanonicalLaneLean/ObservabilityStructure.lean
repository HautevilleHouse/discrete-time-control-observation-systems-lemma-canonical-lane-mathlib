import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.DiscreteTimeSystemPackage

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure ObservabilityStructure {X : Type} {U : Type} (P : DiscreteTimeSystemPackage X U) where
  observationMap : P.system.stateSpace → X
  distinguishability : Prop
  reconstructibility : Prop
  observableSubspace : Prop

structure ObservabilityStructureEvidence {X : Type} {U : Type} {P : DiscreteTimeSystemPackage X U} (O : ObservabilityStructure P) where
  distinguishabilityClosed : O.distinguishability
  reconstructibilityClosed : O.reconstructibility
  observableSubspaceClosed : O.observableSubspace

def ObservabilityStructureClosed {X : Type} {U : Type} {P : DiscreteTimeSystemPackage X U} (O : ObservabilityStructure P) : Prop :=
  O.distinguishability ∧ O.reconstructibility ∧ O.observableSubspace

theorem observability_structure_closed_from_evidence {X : Type} {U : Type} {P : DiscreteTimeSystemPackage X U} (O : ObservabilityStructure P) (E : ObservabilityStructureEvidence O) : ObservabilityStructureClosed O := by
  exact And.intro E.distinguishabilityClosed (And.intro E.reconstructibilityClosed E.observableSubspaceClosed)

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse