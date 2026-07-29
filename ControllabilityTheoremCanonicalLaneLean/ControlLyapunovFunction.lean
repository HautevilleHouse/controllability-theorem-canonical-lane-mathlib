import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControllabilityTheoremCanonicalLaneLean.ControllabilityDynamics

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure ControlLyapunovFunction (S : ControllabilityStateSpace) (D : ControllabilityDynamics S) where
  lyapunovFunction : S.stateType → ℝ
  positiveDefinite : Prop
  proper : Prop
  infimumZero : Prop
  decreaseCondition : ∀ (x : S.stateType) (u : S.controlType), x ≠ 0 →
    (derivativeAlongF lowDynamics?)

theorem clf_sufficient_for_asymptotic_controllability
    (S : ControllabilityStateSpace) (D : ControllabilityDynamics S)
    (L : ControlLyapunovFunction S D) : Prop := by
  sorry

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse
