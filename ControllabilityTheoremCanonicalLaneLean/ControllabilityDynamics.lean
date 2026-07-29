import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControllabilityTheoremCanonicalLaneLean.ControllabilityStateSpace

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure ControllabilityDynamics (S : ControllabilityStateSpace) where
  differentialEquation : S.stateType → S.controlType → S.stateType
  lipschitzContinuous : Prop
  controlAffine : Prop
  driftTerm : S.stateType → S.stateType
  controlInputTerm : S.stateType → S.controlType → S.stateType
  zeroInputNull : Prop

structure ControllabilityDynamicsEvidence (S : ControllabilityStateSpace) (D : ControllabilityDynamics S) where
  lipschitzContinuousClosed : D.lipschitzContinuous
  zeroInputNullClosed : D.zeroInputNull

def ControllabilityDynamicsClosed (S : ControllabilityStateSpace) (D : ControllabilityDynamics S) : Prop :=
  D.lipschitzContinuous ∧ D.zeroInputNull

theorem controllability_dynamics_closed_from_evidence
    (S : ControllabilityStateSpace) (D : ControllabilityDynamics S)
    (E : ControllabilityDynamicsEvidence S D) : ControllabilityDynamicsClosed S D := by
  exact And.intro E.lipschitzContinuousClosed E.zeroInputNullClosed

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse
