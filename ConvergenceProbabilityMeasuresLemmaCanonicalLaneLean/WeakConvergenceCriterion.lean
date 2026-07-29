import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.ConvergenceProbabilityMeasuresLemma

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure WeakConvergenceCriterionPackage {P : ConvergenceProbabilityMeasuresLemmaPackage} where
  boundedContinuousFunctions : Prop
  convergenceInDistribution : Prop
  levyContinuityTheorem : Prop
  criterionEquivalence : Prop

structure WeakConvergenceCriterionEvidence {P : ConvergenceProbabilityMeasuresLemmaPackage} (S : WeakConvergenceCriterionPackage P) where
  boundedContinuousFunctionsClosed : S.boundedContinuousFunctions
  convergenceInDistributionClosed : S.convergenceInDistribution
  levyContinuityTheoremClosed : S.levyContinuityTheorem
  criterionEquivalenceClosed : S.criterionEquivalence

def WeakConvergenceCriterionClosed {P : ConvergenceProbabilityMeasuresLemmaPackage} (S : WeakConvergenceCriterionPackage P) : Prop :=
  S.boundedContinuousFunctions ∧ S.convergenceInDistribution ∧ S.levyContinuityTheorem ∧ S.criterionEquivalence

theorem weak_convergence_criterion_closed_from_evidence
    {P : ConvergenceProbabilityMeasuresLemmaPackage} (S : WeakConvergenceCriterionPackage P) (E : WeakConvergenceCriterionEvidence S) :
    WeakConvergenceCriterionClosed S := by
  exact And.intro E.boundedContinuousFunctionsClosed
    (And.intro E.convergenceInDistributionClosed
      (And.intro E.levyContinuityTheoremClosed E.criterionEquivalenceClosed))

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse