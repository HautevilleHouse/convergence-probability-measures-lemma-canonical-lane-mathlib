import ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.WeakConvergenceLemmas

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure ProkhorovPackage (α : Type u) [MeasurableSpace α] [TopologicalSpace α] where
  measures : ℕ → MeasureTheory.Measure α
  tightnessHolds : Prop
  relativeCompactness : Prop
  prokhorovEquivalence : Prop

structure ProkhorovEvidence (α : Type u) [MeasurableSpace α] [TopologicalSpace α]
    (P : ProkhorovPackage α) where
  tightnessHoldsClosed : P.tightnessHolds
  relativeCompactnessClosed : P.relativeCompactness
  prokhorovEquivalenceClosed : P.prokhorovEquivalence

def ProkhorovClosed (α : Type u) [MeasurableSpace α] [TopologicalSpace α]
    (P : ProkhorovPackage α) : Prop :=
  P.tightnessHolds ∧ P.relativeCompactness ∧ P.prokhorovEquivalence

theorem prokhorov_closed_from_evidence (α : Type u) [MeasurableSpace α] [TopologicalSpace α]
    (P : ProkhorovPackage α) (E : ProkhorovEvidence α P) : ProkhorovClosed α P := by
  exact And.intro E.tightnessHoldsClosed
    (And.intro E.relativeCompactnessClosed E.prokhorovEquivalenceClosed)

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse