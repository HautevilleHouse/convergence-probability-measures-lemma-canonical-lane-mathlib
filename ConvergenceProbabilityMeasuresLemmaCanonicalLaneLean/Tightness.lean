import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure Tightness {Ω : Type u} (S : ProbabilityMeasureSequence Ω) where
  space : Type u
  topology : TopologicalSpace space
  sigmaAlgebra : SigmaAlgebra space
  measures : ℕ → Measure space
  tightCondition : Prop
  tightConditionClosed : tightCondition

def TightnessClosed {Ω : Type u} {S : ProbabilityMeasureSequence Ω} (T : Tightness S) : Prop :=
  T.tightCondition

theorem tightness_closed_from_evidence {Ω : Type u} {S : ProbabilityMeasureSequence Ω} (T : Tightness S) : TightnessClosed T := by
  exact T.tightConditionClosed

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse