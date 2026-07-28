import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure BiharmonicEquationPackage where
  domainType : Type u
  dimension : Nat
  operatorOrder : Nat := 4
  equationForm : Type v
  linearity : Prop
  ellipticity : Prop

structure BiharmonicEquationEvidence (P : BiharmonicEquationPackage) where
  domainTypeClosed : P.domainType = P.domainType
  dimensionClosed : P.dimension = P.dimension
  equationFormClosed : P.equationForm = P.equationForm
  linearityClosed : P.linearity
  ellipticityClosed : P.ellipticity

def BiharmonicEquationClosed (P : BiharmonicEquationPackage) : Prop :=
  P.linearity ∧ P.ellipticity

theorem biharmonic_equation_closed_from_evidence (P : BiharmonicEquationPackage)
    (E : BiharmonicEquationEvidence P) : BiharmonicEquationClosed P := by
  exact And.intro E.linearityClosed E.ellipticityClosed

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse
