import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure CharacteristicFunction (μ : Set (ℝ → ℝ)) where
  cf : ℝ → ℂ
  continuityAtZero : ContinuousAt cf 0
  positiveDefinite : ∀ n, ∀ t₁,...,tₙ : ℝ, ∀ z₁,...,zₙ : ℂ,
    0 ≤ ∑ i,j, zᵢ * conj zⱼ * cf (tᵢ - tⱼ)

def LevyContinuityClosed (φ : CharacteristicFunction) (μ_sequence : ℕ → Set (ℝ → ℝ)) (μ_limit : Set (ℝ → ℝ)) : Prop :=
  ∀ t, Filter.Tendsto (λ n => (CharacteristicFunction.mk (μ_sequence n)).cf t) Filter.atTop (nhds (φ.cf t)) →
  (∀ A, μ_sequence n A → μ_limit A)

theorem levy_continuity_closed (φ : CharacteristicFunction) (μ_seq : ℕ → Set (ℝ → ℝ)) (μ_lim : Set (ℝ → ℝ)) :
    LevyContinuityClosed φ μ_seq μ_lim := by
  intro h
  sorry

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse
