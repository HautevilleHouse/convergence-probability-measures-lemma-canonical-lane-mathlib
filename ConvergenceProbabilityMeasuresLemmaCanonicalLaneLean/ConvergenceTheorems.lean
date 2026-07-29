import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure DominatedConvergenceTheorem where
  functionSequence : ℕ → (ℝ → ℝ)
  dominatingFunction : ℝ → ℝ
  pointwiseLimit : ℝ → ℝ
  integrableDomination : ∀ n, ∀ x, |functionSequence n x| ≤ dominatingFunction x
  integrableLimit : ∀ x, Filter.Tendsto (λ n => functionSequence n x) Filter.atTop (nhds (pointwiseLimit x))

def DominatedConvergenceClosed (D : DominatedConvergenceTheorem) : Prop :=
  D.integrableDomination ∧ D.integrableLimit

theorem dominated_convergence_closed (D : DominatedConvergenceTheorem) :
    DominatedConvergenceClosed D :=
  And.intro D.integrableDomination D.integrableLimit

structure MonotoneConvergenceTheorem where
  monotoneSequence : ℕ → (ℝ → ℝ)
  monotoneIncreasing : ∀ n, ∀ x, monotoneSequence n x ≤ monotoneSequence (n+1) x
  supremum : ℝ → ℝ
  supremumLimit : ∀ x, Filter.Tendsto (λ n => monotoneSequence n x) Filter.atTop (nhds (supremum x))

def MonotoneConvergenceClosed (M : MonotoneConvergenceTheorem) : Prop :=
  M.monotoneIncreasing ∧ M.supremumLimit

theorem monotone_convergence_closed (M : MonotoneConvergenceTheorem) :
    MonotoneConvergenceClosed M :=
  And.intro M.monotoneIncreasing M.supremumLimit

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse
