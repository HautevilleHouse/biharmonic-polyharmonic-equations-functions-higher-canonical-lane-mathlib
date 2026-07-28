import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure SobolevSpacePackage where
  domainType : Type u
  order : Nat
  integrability : Nat
  embeddingResults : Prop
  compactness : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  embeddingResultsClosed : S.embeddingResults
  compactnessClosed : S.compactness

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.embeddingResults ∧ S.compactness

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage)
    (E : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro E.embeddingResultsClosed E.compactnessClosed

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse
