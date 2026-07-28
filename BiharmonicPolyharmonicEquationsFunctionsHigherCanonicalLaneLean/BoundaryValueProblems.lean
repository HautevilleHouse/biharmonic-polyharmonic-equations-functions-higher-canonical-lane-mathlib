import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean.PolyharmonicEquations

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure BVPPackage {L : BiLaplacianOperatorPackage} {P : PolyharmonicEquationPackage L} where
  boundaryConditions : Prop
  wellPosedness : Prop
  regularity : Prop
  solutionRepresentation : Prop

structure BVPEvidence {L : BiLaplacianOperatorPackage} {P : PolyharmonicEquationPackage L} (B : BVPPackage L P) where
  boundaryConditionsClosed : B.boundaryConditions
  wellPosednessClosed : B.wellPosedness
  regularityClosed : B.regularity
  solutionRepresentationClosed : B.solutionRepresentation

def BVPClosed {L : BiLaplacianOperatorPackage} {P : PolyharmonicEquationPackage L} (B : BVPPackage L P) : Prop :=
  B.boundaryConditions ∧ B.wellPosedness ∧ B.regularity ∧ B.solutionRepresentation

theorem bvp_closed_from_evidence {L : BiLaplacianOperatorPackage} {P : PolyharmonicEquationPackage L} (B : BVPPackage L P) (E : BVPEvidence B) : BVPClosed B := by
  exact And.intro E.boundaryConditionsClosed (And.intro E.wellPosednessClosed (And.intro E.regularityClosed E.solutionRepresentationClosed))

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse