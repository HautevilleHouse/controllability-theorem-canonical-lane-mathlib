import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControllabilityTheoremCanonicalLaneLean.ControllabilityDynamics

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure OptimalControl (S : ControllabilityStateSpace) (D : ControllabilityDynamics S) where
  costFunctional : (S.stateType → S.controlType → ℝ) → Prop
  hamiltonJacobiBellmanEquation : Prop
  optimalValueFunction : S.stateType → ℝ
  viscositySolution : Prop

structure OptimalControlEvidence (S : ControllabilityStateSpace) (D : ControllabilityDynamics S)
    (O : OptimalControl S D) where
  hamiltonJacobiBellmanEquationClosed : O.hamiltonJacobiBellmanEquation
  viscositySolutionClosed : O.viscositySolution

def OptimalControlClosed (S : ControllabilityStateSpace) (D : ControllabilityDynamics S)
    (O : OptimalControl S D) : Prop :=
  O.hamiltonJacobiBellmanEquation ∧ O.viscositySolution

theorem optimal_control_closed_from_evidence
    (S : ControllabilityStateSpace) (D : ControllabilityDynamics S)
    (O : OptimalControl S D) (E : OptimalControlEvidence S D O) :
    OptimalControlClosed S D O := by
  exact And.intro E.hamiltonJacobiBellmanEquationClosed E.viscositySolutionClosed

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse
