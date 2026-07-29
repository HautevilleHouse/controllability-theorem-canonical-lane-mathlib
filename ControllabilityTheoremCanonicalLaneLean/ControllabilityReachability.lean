import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControllabilityTheoremCanonicalLaneLean.ControllabilityDynamics

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure ControllabilityReachability (S : ControllabilityStateSpace) (D : ControllabilityDynamics S) where
  reachableSet : S.stateType → Set (S.stateType)
  controllableSubspace : Set (S.stateType)
  fullStateControllability : Prop
  reachableInFiniteTime : Prop

structure ControllabilityReachabilityEvidence (S : ControllabilityStateSpace)
    (D : ControllabilityDynamics S) (R : ControllabilityReachability S D) where
  fullStateControllabilityClosed : R.fullStateControllability
  reachableInFiniteTimeClosed : R.reachableInFiniteTime

def ControllabilityReachabilityClosed (S : ControllabilityStateSpace)
    (D : ControllabilityDynamics S) (R : ControllabilityReachability S D) : Prop :=
  R.fullStateControllability ∧ R.reachableInFiniteTime

theorem controllability_reachability_closed_from_evidence
    (S : ControllabilityStateSpace) (D : ControllabilityDynamics S)
    (R : ControllabilityReachability S D) (E : ControllabilityReachabilityEvidence S D R) :
    ControllabilityReachabilityClosed S D R := by
  exact And.intro E.fullStateControllabilityClosed E.reachableInFiniteTimeClosed

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse
