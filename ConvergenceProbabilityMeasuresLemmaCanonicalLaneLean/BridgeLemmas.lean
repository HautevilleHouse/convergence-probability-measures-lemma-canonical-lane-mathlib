import ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ConvergenceProbabilityMeasuresLemmaCanonicalLaneLean
end HautevilleHouse