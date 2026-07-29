import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure ProbabilityMeasureSpace where
  carrier : Type u
  sigmaAlgebra : Set (Set carrier)
  probabilityMeasure : (Set carrier) → ℝ≥0∞
  measurePreserving : Prop
  sampleSpace : carrier → Type v

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse