import ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.AdmissibleClass
import Mathlib.Probability.Kernel

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure ProbabilityMeasureSpace (α : Type u) [MeasurableSpace α] where
  μ : MeasureTheory.Measure α
  isProbabilityMeasure : MeasureTheory.IsProbabilityMeasure μ

structure ConvergenceAdmittedObject where
  space : ProbabilityMeasureSpace (ℕ → ℝ)  -- example: sequence space
  weakConvergence : Prop
  conclusion : weakConvergence

def bridgeClosed (O : ConvergenceAdmittedObject) : Prop :=
  O.weakConvergence

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse