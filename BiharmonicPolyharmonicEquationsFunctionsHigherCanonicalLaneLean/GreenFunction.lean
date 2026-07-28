import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure GreenFunction (M : Type) [NormedAddCommGroup M] [InnerProductSpace ℝ M] where
  kernel : M × M → ℝ
  fundamentalSolution : Prop
  boundaryConditions : Prop
  symmetry : Prop

structure GreenFunctionEvidence (G : GreenFunction M) where
  fundamentalSolutionClosed : G.fundamentalSolution
  boundaryConditionsClosed : G.boundaryConditions
  symmetryClosed : G.symmetry

def GreenFunctionClosed (G : GreenFunction M) : Prop :=
  G.fundamentalSolution ∧ G.boundaryConditions ∧ G.symmetry

theorem green_function_closed_from_evidence (G : GreenFunction M) (E : GreenFunctionEvidence G) : GreenFunctionClosed G := by
  exact And.intro E.fundamentalSolutionClosed (And.intro E.boundaryConditionsClosed E.symmetryClosed)

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse