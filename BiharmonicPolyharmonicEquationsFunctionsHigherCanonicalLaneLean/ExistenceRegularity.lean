import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure ExistenceRegularityPackage {B : BiharmonicOperatorPackage} {S : PolyharmonicSobolevSpacePackage}
    (P : BoundaryValueProblemPackage B S) where
  existenceSolution : Prop
  uniquenessUnderAdmissibility : Prop
  interiorRegularity : Prop
  boundaryRegularity : Prop
  higherRegularity : Prop

structure ExistenceRegularityEvidence {B : BiharmonicOperatorPackage} {S : PolyharmonicSobolevSpacePackage}
    {P : BoundaryValueProblemPackage B S} (R : ExistenceRegularityPackage P) where
  existenceSolutionClosed : R.existenceSolution
  uniquenessUnderAdmissibilityClosed : R.uniquenessUnderAdmissibility
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  higherRegularityClosed : R.higherRegularity

def ExistenceRegularityClosed {B : BiharmonicOperatorPackage} {S : PolyharmonicSobolevSpacePackage}
    {P : BoundaryValueProblemPackage B S} (R : ExistenceRegularityPackage P) : Prop :=
  R.existenceSolution ∧ R.uniquenessUnderAdmissibility ∧
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.higherRegularity

theorem existence_regularity_closed_from_evidence
    {B : BiharmonicOperatorPackage} {S : PolyharmonicSobolevSpacePackage}
    {P : BoundaryValueProblemPackage B S} (R : ExistenceRegularityPackage P)
    (E : ExistenceRegularityEvidence R) : ExistenceRegularityClosed R := by
  exact And.intro E.existenceSolutionClosed
    (And.intro E.uniquenessUnderAdmissibilityClosed
      (And.intro E.interiorRegularityClosed
        (And.intro E.boundaryRegularityClosed E.higherRegularityClosed)))

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse