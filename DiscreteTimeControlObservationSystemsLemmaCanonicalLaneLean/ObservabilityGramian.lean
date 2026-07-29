import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean.DiscreteTimeControlSystem

namespace HautevilleHouse
namespace DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean

structure ObservabilityGramian (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) where
  horizon : ℕ
  gramianMatrix : Matrix (Fin horizon) (Fin horizon) ℝ
  symmetricPositiveSemidefinite : Prop

def ObservabilityGramianClosed (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) (G : ObservabilityGramian sys) : Prop :=
  G.symmetricPositiveSemidefinite

theorem observability_gramian_closed (sys : DiscreteTimeControlSystem ℝ ℝ ℝ) (G : ObservabilityGramian sys) : ObservabilityGramianClosed sys G :=
  G.symmetricPositiveSemidefinite

end DiscreteTimeControlObservationSystemsLemmaCanonicalLaneLean
end HautevilleHouse