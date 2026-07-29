import ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.ProbabilityMeasuresSpace
import Mathlib.Probability.Martingale.Basic

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure MartingaleConvergencePackage (α : Type u) [MeasurableSpace α] where
  filtration : ℕ → MeasurableSpace α
  martingale : ℕ → α → ℝ
  convergenceInProbability : Prop
  almostSureConvergence : Prop
  l1Convergence : Prop

structure MartingaleConvergenceEvidence (α : Type u) [MeasurableSpace α]
    (M : MartingaleConvergencePackage α) where
  convergenceInProbabilityClosed : M.convergenceInProbability
  almostSureConvergenceClosed : M.almostSureConvergence
  l1ConvergenceClosed : M.l1Convergence

def MartingaleConvergenceClosed (α : Type u) [MeasurableSpace α]
    (M : MartingaleConvergencePackage α) : Prop :=
  M.convergenceInProbability ∧ M.almostSureConvergence ∧ M.l1Convergence

theorem martingale_convergence_closed_from_evidence (α : Type u) [MeasurableSpace α]
    (M : MartingaleConvergencePackage α) (E : MartingaleConvergenceEvidence α M) :
    MartingaleConvergenceClosed α M := by
  exact And.intro E.convergenceInProbabilityClosed
    (And.intro E.almostSureConvergenceClosed E.l1ConvergenceClosed)

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse