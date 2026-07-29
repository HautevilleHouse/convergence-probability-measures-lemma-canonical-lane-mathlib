import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure Tightness (X : Type u) [MetricSpace X] where
  measures : Set (Set X → ℝ≥0∞)
  tightnessCondition : ∀ ε > 0, ∃ K : Set X, IsCompact K ∧ ∀ μ ∈ measures, μ (X \\ K) < ENNReal.ofReal ε

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse