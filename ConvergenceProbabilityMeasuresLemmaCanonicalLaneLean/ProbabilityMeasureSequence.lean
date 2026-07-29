import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure ProbabilityMeasureSequence (Ω : Type u) where
  space : Type u
  topology : TopologicalSpace space
  sigmaAlgebra : SigmaAlgebra space
  measures : ℕ → Measure space
  finiteMeasure : ∀ n, IsFiniteMeasure (measures n)
  probabilityMeasure : ∀ n, IsProbabilityMeasure (measures n)

def ProbabilityMeasureSequenceClosed (S : ProbabilityMeasureSequence) : Prop :=
  ∀ n, IsProbabilityMeasure (S.measures n)

theorem probability_measure_sequence_closed_from_evidence (S : ProbabilityMeasureSequence) : ProbabilityMeasureSequenceClosed S := by
  intro n
  exact S.probabilityMeasure n

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse