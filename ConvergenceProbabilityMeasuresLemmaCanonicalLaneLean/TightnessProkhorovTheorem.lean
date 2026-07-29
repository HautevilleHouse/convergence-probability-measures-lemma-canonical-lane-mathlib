import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.ConvergenceProbabilityMeasuresLemma

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure TightnessProkhorovTheoremPackage {P : ConvergenceProbabilityMeasuresLemmaPackage} where
  tightnessCharacterization : Prop
  relativeCompactness : Prop
  prokhorovTheoremStatement : Prop
  tightnessImpliesRelativeCompact : Prop
  relativeCompactImpliesTightness : Prop

structure TightnessProkhorovTheoremEvidence {P : ConvergenceProbabilityMeasuresLemmaPackage} (R : TightnessProkhorovTheoremPackage P) where
  tightnessCharacterizationClosed : R.tightnessCharacterization
  relativeCompactnessClosed : R.relativeCompactness
  prokhorovTheoremStatementClosed : R.prokhorovTheoremStatement
  tightnessImpliesRelativeCompactClosed : R.tightnessImpliesRelativeCompact
  relativeCompactImpliesTightnessClosed : R.relativeCompactImpliesTightness

def TightnessProkhorovTheoremClosed {P : ConvergenceProbabilityMeasuresLemmaPackage} (R : TightnessProkhorovTheoremPackage P) : Prop :=
  R.tightnessCharacterization ∧ R.relativeCompactness ∧ R.prokhorovTheoremStatement ∧ R.tightnessImpliesRelativeCompact ∧ R.relativeCompactImpliesTightness

theorem tightness_prokhorov_theorem_closed_from_evidence
    {P : ConvergenceProbabilityMeasuresLemmaPackage} (R : TightnessProkhorovTheoremPackage P) (E : TightnessProkhorovTheoremEvidence R) :
    TightnessProkhorovTheoremClosed R := by
  exact And.intro E.tightnessCharacterizationClosed
    (And.intro E.relativeCompactnessClosed
      (And.intro E.prokhorovTheoremStatementClosed
        (And.intro E.tightnessImpliesRelativeCompactClosed E.relativeCompactImpliesTightnessClosed)))

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse