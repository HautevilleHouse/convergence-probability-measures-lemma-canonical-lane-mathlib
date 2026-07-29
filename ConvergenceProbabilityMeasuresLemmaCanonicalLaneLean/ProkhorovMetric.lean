import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure ProkhorovMetric (X : Type u) [MetricSpace X] where
  distance : (Set X) → (Set X) → ℝ
  triangleInequality : ∀ A B C : Set X, distance A C ≤ distance A B + distance B C
  symmetry : ∀ A B : Set X, distance A B = distance B A
  nonnegativity : ∀ A B : Set X, 0 ≤ distance A B
  identityOfIndiscernibles : ∀ A B : Set X, distance A B = 0 → A = B

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse