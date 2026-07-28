import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure BoundaryValueProblemPackage (B : BiharmonicOperatorPackage) (S : PolyharmonicSobolevSpacePackage) where
  boundaryConditionSet : Type u
  wellPosedStrongForm : Prop
  weakFormulation : Prop
  coercivity : Prop
  boundedness : Prop

structure BoundaryValueProblemEvidence {B : BiharmonicOperatorPackage} {S : PolyharmonicSobolevSpacePackage}
    (P : BoundaryValueProblemPackage B S) where
  wellPosedStrongFormClosed : P.wellPosedStrongForm
  weakFormulationClosed : P.weakFormulation
  coercivityClosed : P.coercivity
  boundednessClosed : P.boundedness

def BoundaryValueProblemClosed {B : BiharmonicOperatorPackage} {S : PolyharmonicSobolevSpacePackage}
    (P : BoundaryValueProblemPackage B S) : Prop :=
  P.wellPosedStrongForm ∧ P.weakFormulation ∧ P.coercivity ∧ P.boundedness

theorem boundary_value_problem_closed_from_evidence
    {B : BiharmonicOperatorPackage} {S : PolyharmonicSobolevSpacePackage}
    (P : BoundaryValueProblemPackage B S) (E : BoundaryValueProblemEvidence P) :
    BoundaryValueProblemClosed P := by
  exact And.intro E.wellPosedStrongFormClosed
    (And.intro E.weakFormulationClosed (And.intro E.coercivityClosed E.boundednessClosed))

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse