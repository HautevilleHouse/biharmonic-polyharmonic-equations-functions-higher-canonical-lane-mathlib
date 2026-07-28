import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure PolyharmonicRegularityPackage {B : BiharmonicOperatorPackage}
    {S : SobolevSpacePackage B} {P : PolyharmonicExistencePackage B S} where
  interiorRegularity : Prop
  boundaryRegularity : Prop
  analyticRegularity : Prop

structure PolyharmonicRegularityEvidence {B : BiharmonicOperatorPackage}
    {S : SobolevSpacePackage B} {P : PolyharmonicExistencePackage B S}
    (R : PolyharmonicRegularityPackage B S P) where
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  analyticRegularityClosed : R.analyticRegularity

def PolyharmonicRegularityClosed {B : BiharmonicOperatorPackage}
    {S : SobolevSpacePackage B} {P : PolyharmonicExistencePackage B S}
    (R : PolyharmonicRegularityPackage B S P) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.analyticRegularity

theorem polyharmonic_regularity_closed_from_evidence {B : BiharmonicOperatorPackage}
    {S : SobolevSpacePackage B} {P : PolyharmonicExistencePackage B S}
    (R : PolyharmonicRegularityPackage B S P)
    (E : PolyharmonicRegularityEvidence R) : PolyharmonicRegularityClosed R := by
  exact And.intro E.interiorRegularityClosed
    (And.intro E.boundaryRegularityClosed E.analyticRegularityClosed)

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse