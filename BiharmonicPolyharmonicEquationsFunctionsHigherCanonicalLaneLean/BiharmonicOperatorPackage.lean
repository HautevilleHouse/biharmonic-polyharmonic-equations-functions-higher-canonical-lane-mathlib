import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure BiharmonicOperatorPackage where
  domainType : Type u
  dimension : Nat
  operatorOrder : Nat
  operatorSymbol : Type v
  weight : String
  coefficientSmoothness : Prop

structure BiharmonicOperatorEvidence (B : BiharmonicOperatorPackage) where
  domainTypeClosed : True
  dimensionClosed : True
  operatorOrderClosed : B.operatorOrder = 2 ∨ B.operatorOrder = 4
  coefficientSmoothnessClosed : B.coefficientSmoothness

def BiharmonicOperatorClosed (B : BiharmonicOperatorPackage) : Prop :=
  B.coefficientSmoothness ∧ (B.operatorOrder = 2 ∨ B.operatorOrder = 4)

theorem biharmonic_operator_closed_from_evidence (B : BiharmonicOperatorPackage)
    (E : BiharmonicOperatorEvidence B) : BiharmonicOperatorClosed B := by
  exact And.intro E.coefficientSmoothnessClosed E.operatorOrderClosed

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse