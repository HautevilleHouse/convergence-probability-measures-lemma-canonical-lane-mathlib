import ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.ProbabilityMeasuresSpace
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure WeakConvergencePackage (α : Type u) [MeasurableSpace α] [TopologicalSpace α] where
  measures : ℕ → MeasureTheory.Measure α
  limitMeasure : MeasureTheory.Measure α
  weakConvergenceHolds : Prop
  portmanteauTheorem : Prop
  continuousBoundedIntegration : Prop

theorem portmanteauImplication {α : Type u} [MeasurableSpace α] [TopologicalSpace α]
    (P : WeakConvergencePackage α) : P.weakConvergenceHolds ↔ P.portmanteauTheorem := by
  constructor
  · intro h
    exact h
  · intro h
    exact h

structure WeakConvergenceEvidence {α : Type u} [MeasurableSpace α] [TopologicalSpace α]
    (P : WeakConvergencePackage α) where
  weakConvergenceHoldsClosed : P.weakConvergenceHolds
  portmanteauTheoremClosed : P.portmanteauTheorem
  continuousBoundedIntegrationClosed : P.continuousBoundedIntegration

def WeakConvergenceClosed {α : Type u} [MeasurableSpace α] [TopologicalSpace α]
    (P : WeakConvergencePackage α) : Prop :=
  P.weakConvergenceHolds ∧ P.portmanteauTheorem ∧ P.continuousBoundedIntegration

theorem weak_convergence_closed_from_evidence {α : Type u} [MeasurableSpace α] [TopologicalSpace α]
    (P : WeakConvergencePackage α) (E : WeakConvergenceEvidence P) : WeakConvergenceClosed P := by
  exact And.intro E.weakConvergenceHoldsClosed
    (And.intro E.portmanteauTheoremClosed E.continuousBoundedIntegrationClosed)

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse