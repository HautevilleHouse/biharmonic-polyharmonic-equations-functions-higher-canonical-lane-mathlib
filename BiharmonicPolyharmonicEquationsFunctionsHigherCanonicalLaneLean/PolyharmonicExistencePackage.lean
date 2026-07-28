import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure PolyharmonicExistencePackage {B : BiharmonicOperatorPackage}
    {S : SobolevSpacePackage B} where
  sourceTerm : S.exponent → ℕ
  weakSolutionExists : Prop
  uniquenessUnderBoundary : Prop

structure PolyharmonicExistenceEvidence {B : BiharmonicOperatorPackage}
    {S : SobolevSpacePackage B} (P : PolyharmonicExistencePackage B S) where
  weakSolutionExistsClosed : P.weakSolutionExists
  uniquenessUnderBoundaryClosed : P.uniquenessUnderBoundary

def PolyharmonicExistenceClosed {B : BiharmonicOperatorPackage}
    {S : SobolevSpacePackage B} (P : PolyharmonicExistencePackage B S) : Prop :=
  P.weakSolutionExists ∧ P.uniquenessUnderBoundary

theorem polyharmonic_existence_closed_from_evidence {B : BiharmonicOperatorPackage}
    {S : SobolevSpacePackage B} (P : PolyharmonicExistencePackage B S)
    (E : PolyharmonicExistenceEvidence P) : PolyharmonicExistenceClosed P := by
  exact And.intro E.weakSolutionExistsClosed E.uniquenessUnderBoundaryClosed

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse