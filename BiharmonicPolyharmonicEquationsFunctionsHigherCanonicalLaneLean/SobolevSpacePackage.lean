import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure SobolevSpacePackage {B : BiharmonicOperatorPackage} where
  exponent : ℝ
  differentiabilityOrder : Nat
  embeddingConstant : Prop
  boundaryRegularity : Prop

structure SobolevSpaceEvidence {B : BiharmonicOperatorPackage}
    (S : SobolevSpacePackage B) where
  embeddingConstantClosed : S.embeddingConstant
  boundaryRegularityClosed : S.boundaryRegularity

def SobolevSpaceClosed {B : BiharmonicOperatorPackage}
    (S : SobolevSpacePackage B) : Prop :=
  S.embeddingConstant ∧ S.boundaryRegularity

theorem sobolev_space_closed_from_evidence {B : BiharmonicOperatorPackage}
    (S : SobolevSpacePackage B) (E : SobolevSpaceEvidence S) :
    SobolevSpaceClosed S := by
  exact And.intro E.embeddingConstantClosed E.boundaryRegularityClosed

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse