import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure PolyharmonicOperatorPackage where
  operatorOrder : Nat
  symbol : Type u
  domain : Type v
  coercivity : Prop
  positivity : Prop

structure PolyharmonicOperatorEvidence (P : PolyharmonicOperatorPackage) where
  coercivityClosed : P.coercivity
  positivityClosed : P.positivity

def PolyharmonicOperatorClosed (P : PolyharmonicOperatorPackage) : Prop :=
  P.coercivity ∧ P.positivity

theorem polyharmonic_operator_closed_from_evidence (P : PolyharmonicOperatorPackage)
    (E : PolyharmonicOperatorEvidence P) : PolyharmonicOperatorClosed P := by
  exact And.intro E.coercivityClosed E.positivityClosed

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse
