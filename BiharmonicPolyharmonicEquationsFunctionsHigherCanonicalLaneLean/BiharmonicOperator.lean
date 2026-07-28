import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure BiharmonicOperatorPackage where
  domain : Type u
  operator : Type v
  biharmonicEquation : Prop
  boundaryConditions : Prop
  regularity : Prop

structure BiharmonicOperatorEvidence (B : BiharmonicOperatorPackage) where
  biharmonicEquationClosed : B.biharmonicEquation
  boundaryConditionsClosed : B.boundaryConditions
  regularityClosed : B.regularity

def BiharmonicOperatorClosed (B : BiharmonicOperatorPackage) : Prop :=
  B.biharmonicEquation ∧ B.boundaryConditions ∧ B.regularity

theorem biharmonic_operator_closed_from_evidence (B : BiharmonicOperatorPackage) (E : BiharmonicOperatorEvidence B) : BiharmonicOperatorClosed B := by
  exact And.intro E.biharmonicEquationClosed (And.intro E.boundaryConditionsClosed E.regularityClosed)

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse