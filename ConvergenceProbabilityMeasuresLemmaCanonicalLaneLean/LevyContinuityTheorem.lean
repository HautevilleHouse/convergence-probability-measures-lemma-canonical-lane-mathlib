import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.ConvergenceProbabilityMeasures
import HautevilleHouse.ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.PortmanteauLemma

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

open ProbabilityMeasurePackage
open ConvergenceConceptPackage
open PortmanteauPackage

structure LevyContinuityPackage {P : ProbabilityMeasurePackage}
    {C : ConvergenceConceptPackage P} (Pt : PortmanteauPackage C) where
  characteristicFunctions : (Set P.sampleSpace) → (ℝ → ℂ)
  pointwiseConvergence : Prop
  tightnessCondition : Prop
  continuityAtZero : Prop
  equivalenceToWeakConvergence : Prop

structure LevyContinuityEvidence {P : ProbabilityMeasurePackage}
    {C : ConvergenceConceptPackage P} {Pt : PortmanteauPackage C}
    (L : LevyContinuityPackage Pt) where
  pointwiseConvergenceClosed : L.pointwiseConvergence
  tightnessConditionClosed : L.tightnessCondition
  continuityAtZeroClosed : L.continuityAtZero
  equivalenceToWeakConvergenceClosed : L.equivalenceToWeakConvergence

def LevyContinuityClosed {P : ProbabilityMeasurePackage}
    {C : ConvergenceConceptPackage P} {Pt : PortmanteauPackage C}
    (L : LevyContinuityPackage Pt) : Prop :=
  L.pointwiseConvergence ∧ L.tightnessCondition ∧ L.continuityAtZero ∧
  L.equivalenceToWeakConvergence

theorem levy_continuity_closed_from_evidence {P : ProbabilityMeasurePackage}
    {C : ConvergenceConceptPackage P} {Pt : PortmanteauPackage C}
    (L : LevyContinuityPackage Pt) (E : LevyContinuityEvidence L) :
    LevyContinuityClosed L := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.tightnessConditionClosed
      (And.intro E.continuityAtZeroClosed E.equivalenceToWeakConvergenceClosed))

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse