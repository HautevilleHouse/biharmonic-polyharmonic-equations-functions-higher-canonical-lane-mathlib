import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure PolyharmonicSobolevSpacePackage where
  dimension : Nat
  order : Nat
  integrabilityExponent : Nat
  homogeneousNormDefined : Prop
  embeddingTheorems : Prop
  compactEmbedding : Prop

structure PolyharmonicSobolevSpaceEvidence (S : PolyharmonicSobolevSpacePackage) where
  homogeneousNormDefinedClosed : S.homogeneousNormDefined
  embeddingTheoremsClosed : S.embeddingTheorems
  compactEmbeddingClosed : S.compactEmbedding

def PolyharmonicSobolevSpaceClosed (S : PolyharmonicSobolevSpacePackage) : Prop :=
  S.homogeneousNormDefined ∧ S.embeddingTheorems ∧ S.compactEmbedding

theorem polyharmonic_sobolev_space_closed_from_evidence
    (S : PolyharmonicSobolevSpacePackage) (E : PolyharmonicSobolevSpaceEvidence S) :
    PolyharmonicSobolevSpaceClosed S := by
  exact And.intro E.homogeneousNormDefinedClosed
    (And.intro E.embeddingTheoremsClosed E.compactEmbeddingClosed)

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse