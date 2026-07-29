import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

def ConstrainedConvergenceProbabilityMeasuresClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convergence_probability_measures_endgame (A : AdmissibleClass) :
    ConstrainedConvergenceProbabilityMeasuresClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse