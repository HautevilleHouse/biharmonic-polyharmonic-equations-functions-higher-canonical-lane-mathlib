import canonicalLaneMathlib.AdmissibleClass
import BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean.BiharmonicOperator
import BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean.PolyharmonicEquations
import BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean.SobolevSpaces

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiharmonicOperatorClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBiharmonicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biharmonic_endgame (A : AdmissibleClass) : ConstrainedBiharmonicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse