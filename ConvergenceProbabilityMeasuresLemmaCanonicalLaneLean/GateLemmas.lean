import ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse