import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean

structure PolyharmonicFunction (Ω : Type) [TopologicalSpace Ω] where
  regularity : ℕ
  equation : (Ω → ℝ) → Prop
  solution : Ω → ℝ
  satisfaction : equation solution

structure PolyharmonicFunctionEvidence (f : PolyharmonicFunction Ω) where
  regularityClosed : f.regularity ≥ 1
  satisfactionClosed : f.satisfaction

def PolyharmonicFunctionClosed (f : PolyharmonicFunction Ω) : Prop :=
  f.regularity ≥ 1 ∧ f.satisfaction

theorem polyharmonic_function_closed_from_evidence (f : PolyharmonicFunction Ω) (E : PolyharmonicFunctionEvidence f) : PolyharmonicFunctionClosed f := by
  exact And.intro E.regularityClosed E.satisfactionClosed

end BiharmonicPolyharmonicEquationsFunctionsHigherCanonicalLaneLean
end HautevilleHouse