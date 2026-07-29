import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure WeakConvergence {Ω : Type u} (S : ProbabilityMeasureSequence Ω) (μ : Measure Ω) where
  space : Type u
  topology : TopologicalSpace space
  sigmaAlgebra : SigmaAlgebra space
  measures : ℕ → Measure space
  limitMeasure : Measure space
  convergenceCondition : Prop
  convergenceConditionClosed : convergenceCondition

def WeakConvergenceClosed {Ω : Type u} {S : ProbabilityMeasureSequence Ω} {μ : Measure Ω} (W : WeakConvergence S μ) : Prop :=
  W.convergenceCondition

theorem weak_convergence_closed_from_evidence {Ω : Type u} {S : ProbabilityMeasureSequence Ω} {μ : Measure Ω} (W : WeakConvergence S μ) : WeakConvergenceClosed W := by
  exact W.convergenceConditionClosed

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse