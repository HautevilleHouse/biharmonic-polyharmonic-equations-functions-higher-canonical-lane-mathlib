import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure SobolevPackage (Ω : Type) [TopologicalSpace Ω] where
  order : ℕ
  integrability : ℝ
  normFamily : Prop
  completeness : Prop
  embeddingTheorems : Prop

structure SobolevEvidence (S : SobolevPackage Ω) where
  normFamilyClosed : S.normFamily
  completenessClosed : S.completeness
  embeddingTheoremsClosed : S.embeddingTheorems

def SobolevClosed (S : SobolevPackage Ω) : Prop :=
  S.normFamily ∧ S.completeness ∧ S.embeddingTheorems

theorem sobolev_closed_from_evidence (S : SobolevPackage Ω) (E : SobolevEvidence S) : SobolevClosed S := by
  exact And.intro E.normFamilyClosed (And.intro E.completenessClosed E.embeddingTheoremsClosed)

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse