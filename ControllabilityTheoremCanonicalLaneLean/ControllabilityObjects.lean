import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ControllabilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ControllabilityAdmittedObject where
  space : ControllabilitySpace
  stateSpace : Type
  inputSpace : Type
  dynamics : stateSpace → inputSpace → stateSpace
  controllabilityCondition : Prop
  conclusion : controllabilityCondition

def ControllabilityWitnessClosed (O : ControllabilityAdmittedObject) : Prop :=
  O.controllabilityCondition

structure ControllabilityEndgameState where
  object : ControllabilityAdmittedObject

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse
