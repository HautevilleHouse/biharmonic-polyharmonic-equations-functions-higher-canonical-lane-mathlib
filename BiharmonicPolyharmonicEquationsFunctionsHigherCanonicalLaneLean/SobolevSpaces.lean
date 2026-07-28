import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure HigherOrderSobolevPackage where
  domain : Type u
  order : ℕ
  integrability : Type v
  embeddingTheorems : Prop
  compactness : Prop

structure HigherOrderSobolevEvidence (H : HigherOrderSobolevPackage) where
  embeddingTheoremsClosed : H.embeddingTheorems
  compactnessClosed : H.compactness

def HigherOrderSobolevClosed (H : HigherOrderSobolevPackage) : Prop :=
  H.embeddingTheorems ∧ H.compactness

theorem higher_order_sobolev_closed_from_evidence (H : HigherOrderSobolevPackage) (E : HigherOrderSobolevEvidence H) : HigherOrderSobolevClosed H := by
  exact And.intro E.embeddingTheoremsClosed E.compactnessClosed

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse