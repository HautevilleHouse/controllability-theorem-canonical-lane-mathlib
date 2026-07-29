import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure ControllabilityGramian where
  system : ControlSystem
  gramianMatrix : Matrix (stateSpace : Type u) (stateSpace : Type u) ℝ
  positiveDefinite : Prop
  invertible : Prop
  positiveDefiniteTerm : positiveDefinite
  invertibleTerm : invertible

structure ControllabilityGramianEvidence (G : ControllabilityGramian) where
  positiveDefiniteClosed : G.positiveDefinite
  invertibleClosed : G.invertible

def ControllabilityGramianClosed (G : ControllabilityGramian) : Prop :=
  G.positiveDefinite ∧ G.invertible

theorem controllability_gramian_closed_from_evidence (G : ControllabilityGramian)
    (E : ControllabilityGramianEvidence G) : ControllabilityGramianClosed G := by
  exact And.intro E.positiveDefiniteClosed E.invertibleClosed

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse