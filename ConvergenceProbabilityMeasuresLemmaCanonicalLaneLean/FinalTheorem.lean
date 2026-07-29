import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

def ConstrainedConvergenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convergence_endgame (A : AdmissibleClass) :
    ConstrainedConvergenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse