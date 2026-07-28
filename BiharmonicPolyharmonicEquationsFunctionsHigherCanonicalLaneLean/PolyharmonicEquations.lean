import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure PolyharmonicEquationsPackage where
  order : ℕ
  operatorFamily : Type u
  equationFamily : Prop
  existenceTheory : Prop
  regularityTheory : Prop

structure PolyharmonicEquationsEvidence (P : PolyharmonicEquationsPackage) where
  equationFamilyClosed : P.equationFamily
  existenceTheoryClosed : P.existenceTheory
  regularityTheoryClosed : P.regularityTheory

def PolyharmonicEquationsClosed (P : PolyharmonicEquationsPackage) : Prop :=
  P.equationFamily ∧ P.existenceTheory ∧ P.regularityTheory

theorem polyharmonic_equations_closed_from_evidence (P : PolyharmonicEquationsPackage) (E : PolyharmonicEquationsEvidence P) : PolyharmonicEquationsClosed P := by
  exact And.intro E.equationFamilyClosed (And.intro E.existenceTheoryClosed E.regularityTheoryClosed)

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse