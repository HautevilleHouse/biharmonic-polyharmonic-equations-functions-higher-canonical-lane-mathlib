import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean.FunctionSpaces

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure VariationalPackage {S : FunctionSpacePackage} where
  bilinearFormDefined : Prop
  coercivity : Prop
  weakSolutionExistence : Prop
  minimizerCharacterization : Prop

structure VariationalEvidence {S : FunctionSpacePackage} (V : VariationalPackage S) where
  bilinearFormDefinedClosed : V.bilinearFormDefined
  coercivityClosed : V.coercivity
  weakSolutionExistenceClosed : V.weakSolutionExistence
  minimizerCharacterizationClosed : V.minimizerCharacterization

def VariationalClosed {S : FunctionSpacePackage} (V : VariationalPackage S) : Prop :=
  V.bilinearFormDefined ∧ V.coercivity ∧ V.weakSolutionExistence ∧ V.minimizerCharacterization

theorem variational_closed_from_evidence {S : FunctionSpacePackage} (V : VariationalPackage S) (E : VariationalEvidence V) : VariationalClosed V := by
  exact And.intro E.bilinearFormDefinedClosed (And.intro E.coercivityClosed (And.intro E.weakSolutionExistenceClosed E.minimizerCharacterizationClosed))

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse