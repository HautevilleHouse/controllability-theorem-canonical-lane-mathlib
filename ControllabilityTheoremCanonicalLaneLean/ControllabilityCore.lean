import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheorem

structure ControlledSystem where
  stateSpace : Type u
  inputSpace : Type v
  dynamics : stateSpace × inputSpace → stateSpace
  reachableSet : stateSpace → Set stateSpace
  controllabilityProperty : Prop
  controllabilityPropertyTerm : controllabilityProperty

structure AdmissibleControl where
  system : ControlledSystem
  controlFunction : ℝ → system.inputSpace
  controllability : Prop
  controllabilityTerm : controllability

def ControllabilityWitnessClosed (O : ControllabilityAdmittedObject) : Prop :=
  O.controllabilityProperty

end ControllabilityTheorem
end HautevilleHouse
