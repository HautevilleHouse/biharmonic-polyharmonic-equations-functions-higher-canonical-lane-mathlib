import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure BiLaplacianOperatorPackage where
  dimension : Nat
  domainType : Type
  functionSpace : Type
  biLaplacianDefined : Prop
  symbolComputed : Prop
  ellipticity : Prop

structure BiLaplacianOperatorEvidence (L : BiLaplacianOperatorPackage) where
  biLaplacianDefinedClosed : L.biLaplacianDefined
  symbolComputedClosed : L.symbolComputed
  ellipticityClosed : L.ellipticity

def BiLaplacianOperatorClosed (L : BiLaplacianOperatorPackage) : Prop :=
  L.biLaplacianDefined ∧ L.symbolComputed ∧ L.ellipticity

theorem bi_laplacian_operator_closed_from_evidence (L : BiLaplacianOperatorPackage) (E : BiLaplacianOperatorEvidence L) : BiLaplacianOperatorClosed L := by
  exact And.intro E.biLaplacianDefinedClosed (And.intro E.symbolComputedClosed E.ellipticityClosed)

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse