import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.ConvergenceMeasureSpace

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure WeakConvergencePackage (M : ConvergenceMeasureSpace) where
  sequenceMeasures : ℕ → (M.underlyingSpace → ℝ) → ℝ
  limitingMeasure : (M.underlyingSpace → ℝ) → ℝ
  weakConvergence : ∀ f : M.underlyingSpace → ℝ, Continuous f →
    Filter.Tendsto (λ n => sequenceMeasures n f) Filter.atTop (nhds (limitingMeasure f))

def DonskerClosed (M : ConvergenceMeasureSpace) (W : WeakConvergencePackage M) : Prop :=
  W.weakConvergence (λ x => x) (by exact continuous_id)

theorem donsker_closed (M : ConvergenceMeasureSpace) (W : WeakConvergencePackage M) :
    DonskerClosed M W := by
  exact W.weakConvergence (λ x => x) continuous_id

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse
