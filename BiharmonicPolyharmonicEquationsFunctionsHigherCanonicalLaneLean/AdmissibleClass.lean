import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure AdmissibleClass where
  object : BiharmonicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiharmonicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse
