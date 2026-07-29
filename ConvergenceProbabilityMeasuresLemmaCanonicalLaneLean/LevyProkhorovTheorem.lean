import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure LevyProkhorovEquivalence (X : Type u) [MetricSpace X] where
  weakConvergence : WeakConvergence X
  prokhorovMetric : ProkhorovMetric X
  equivalenceProof : ∀ (seq : ℕ → (Set X → ℝ≥0∞)) (μ : Set X → ℝ≥0∞),
    HasLimitInProkhorov seq μ ↔ WeakConverges seq μ

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse