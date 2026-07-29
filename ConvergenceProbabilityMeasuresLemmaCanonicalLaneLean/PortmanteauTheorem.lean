import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure PortmanteauEquivalences (X : Type u) [TopologicalSpace X] where
  weakConvergenceCondition : (μ_sequence : ℕ → (Set X → ℝ≥0∞)) → (μ : Set X → ℝ≥0∞) → Prop
  closedSetCondition : (μ_sequence : ℕ → (Set X → ℝ≥0∞)) → (μ : Set X → ℝ≥0∞) → Prop
  openSetCondition : (μ_sequence : ℕ → (Set X → ℝ≥0∞)) → (μ : Set X → ℝ≥0∞) → Prop
  continuitySetCondition : (μ_sequence : ℕ → (Set X → ℝ≥0∞)) → (μ : Set X → ℝ≥0∞) → Prop
  equivalenceProof : ∀ seq μ, weakConvergenceCondition seq μ ↔ closedSetCondition seq μ ∧ openSetCondition seq μ ∧ continuitySetCondition seq μ

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse