import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean.BiLaplacianOperator

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure GreenFunctionPackage {L : BiLaplacianOperatorPackage} where
  kernelExistence : Prop
  symmetry : Prop
  regularity : Prop
  boundaryBehavior : Prop

structure GreenFunctionEvidence {L : BiLaplacianOperatorPackage} (G : GreenFunctionPackage L) where
  kernelExistenceClosed : G.kernelExistence
  symmetryClosed : G.symmetry
  regularityClosed : G.regularity
  boundaryBehaviorClosed : G.boundaryBehavior

def GreenFunctionClosed {L : BiLaplacianOperatorPackage} (G : GreenFunctionPackage L) : Prop :=
  G.kernelExistence ∧ G.symmetry ∧ G.regularity ∧ G.boundaryBehavior

theorem green_function_closed_from_evidence {L : BiLaplacianOperatorPackage} (G : GreenFunctionPackage L) (E : GreenFunctionEvidence G) : GreenFunctionClosed G := by
  exact And.intro E.kernelExistenceClosed (And.intro E.symmetryClosed (And.intro E.regularityClosed E.boundaryBehaviorClosed))

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse