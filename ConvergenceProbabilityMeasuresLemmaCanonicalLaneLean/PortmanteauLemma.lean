import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.ConvergenceProbabilityMeasures

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

open ProbabilityMeasurePackage
open ConvergenceConceptPackage

structure PortmanteauPackage {P : ProbabilityMeasurePackage}
    (C : ConvergenceConceptPackage P) where
  equivalenceConditions : Prop
  openSetCondition : Prop
  closedSetCondition : Prop
  continuitySetCondition : Prop
  boundedContinuousFunctionCondition : Prop
  equivalenceProof : Prop

structure PortmanteauEvidence {P : ProbabilityMeasurePackage}
    {C : ConvergenceConceptPackage P} (Pt : PortmanteauPackage C) where
  openSetConditionClosed : Pt.openSetCondition
  closedSetConditionClosed : Pt.closedSetCondition
  continuitySetConditionClosed : Pt.continuitySetCondition
  boundedContinuousFunctionConditionClosed : Pt.boundedContinuousFunctionCondition
  equivalenceProofClosed : Pt.equivalenceProof

def PortmanteauClosed {P : ProbabilityMeasurePackage}
    {C : ConvergenceConceptPackage P} (Pt : PortmanteauPackage C) : Prop :=
  Pt.openSetCondition ∧ Pt.closedSetCondition ∧ Pt.continuitySetCondition ∧
  Pt.boundedContinuousFunctionCondition ∧ Pt.equivalenceProof

theorem portmanteau_closed_from_evidence {P : ProbabilityMeasurePackage}
    {C : ConvergenceConceptPackage P} (Pt : PortmanteauPackage C)
    (E : PortmanteauEvidence Pt) : PortmanteauClosed Pt := by
  exact And.intro E.openSetConditionClosed
    (And.intro E.closedSetConditionClosed
      (And.intro E.continuitySetConditionClosed
        (And.intro E.boundedContinuousFunctionConditionClosed E.equivalenceProofClosed)))

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse