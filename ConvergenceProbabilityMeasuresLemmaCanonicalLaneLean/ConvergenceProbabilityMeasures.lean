import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure ProbabilityMeasurePackage where
  sampleSpace : Type u
  sigmaAlgebra : Set (Set sampleSpace)
  measure : (Set sampleSpace) → ℝ
  probabilityAxioms : Prop
  measureSpace : Prop

structure ProbabilityMeasureEvidence (P : ProbabilityMeasurePackage) where
  probabilityAxiomsClosed : P.probabilityAxioms
  measureSpaceClosed : P.measureSpace

def ProbabilityMeasureClosed (P : ProbabilityMeasurePackage) : Prop :=
  P.probabilityAxioms ∧ P.measureSpace

theorem probability_measure_closed_from_evidence (P : ProbabilityMeasurePackage)
    (E : ProbabilityMeasureEvidence P) : ProbabilityMeasureClosed P := by
  exact And.intro E.probabilityAxiomsClosed E.measureSpaceClosed

structure ConvergenceConceptPackage (P : ProbabilityMeasurePackage) where
  sequence : ℕ → (Set P.sampleSpace) → ℝ
  limitMeasure : (Set P.sampleSpace) → ℝ
  convergenceDefinition : Prop
  weakConvergence : Prop
  strongConvergence : Prop

structure ConvergenceConceptEvidence {P : ProbabilityMeasurePackage}
    (C : ConvergenceConceptPackage P) where
  convergenceDefinitionClosed : C.convergenceDefinition
  weakConvergenceClosed : C.weakConvergence
  strongConvergenceClosed : C.strongConvergence

def ConvergenceConceptClosed {P : ProbabilityMeasurePackage}
    (C : ConvergenceConceptPackage P) : Prop :=
  C.convergenceDefinition ∧ C.weakConvergence ∧ C.strongConvergence

theorem convergence_concept_closed_from_evidence {P : ProbabilityMeasurePackage}
    (C : ConvergenceConceptPackage P) (E : ConvergenceConceptEvidence C) :
    ConvergenceConceptClosed C := by
  exact And.intro E.convergenceDefinitionClosed
    (And.intro E.weakConvergenceClosed E.strongConvergenceClosed)

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse