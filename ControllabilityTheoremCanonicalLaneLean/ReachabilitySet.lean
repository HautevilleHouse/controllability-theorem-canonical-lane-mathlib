import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure ReachabilitySetPackage where
  targetSet : Set (stateSpace : Type u)
  timeBound : ℝ
  reachable : Prop
  invariantUnderDynamics : Prop
  closureProperty : Prop
  reachableTerm : reachable
  invariantUnderDynamicsTerm : invariantUnderDynamics
  closurePropertyTerm : closureProperty

structure ReachabilitySetEvidence (R : ReachabilitySetPackage) where
  reachableClosed : R.reachable
  invariantUnderDynamicsClosed : R.invariantUnderDynamics
  closurePropertyClosed : R.closureProperty

def ReachabilitySetClosed (R : ReachabilitySetPackage) : Prop :=
  R.reachable ∧ R.invariantUnderDynamics ∧ R.closureProperty

theorem reachability_set_closed_from_evidence (R : ReachabilitySetPackage)
    (E : ReachabilitySetEvidence R) : ReachabilitySetClosed R := by
  exact And.intro E.reachableClosed
    (And.intro E.invariantUnderDynamicsClosed E.closurePropertyClosed)

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse