import DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ControlObservationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse