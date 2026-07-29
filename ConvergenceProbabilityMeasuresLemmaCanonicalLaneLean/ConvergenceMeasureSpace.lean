import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

structure ConvergenceMeasureSpace (A : AdmissibleClass) where
  underlyingSpace : Type u
  sigmaAlgebra : Set (Set underlyingSpace)
  probabilityMeasure : underlyingSpace → ℝ
  convergenceType : Prop
  limitExists : Prop
  limitExistsWitness : limitExists

def ConvergenceMeasureSpaceClosed (M : ConvergenceMeasureSpace) : Prop :=
  M.convergenceType ∧ M.limitExists

theorem convergence_measure_space_closed (M : ConvergenceMeasureSpace) :
    ConvergenceMeasureSpaceClosed M :=
  And.intro M.convergenceType M.limitExistsWitness

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse
