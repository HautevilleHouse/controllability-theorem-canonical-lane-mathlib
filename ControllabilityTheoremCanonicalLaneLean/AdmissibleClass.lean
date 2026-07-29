import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ControllabilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  stateSpace : Type
  inputSpace : Type
  dynamics : carrier × stateSpace × inputSpace → carrier × stateSpace

structure ControllableAdmittedObject where
  space : ControllabilitySpace
  linearControlSystem : Prop
  controllabilityCondition : Prop
  conclusion : controllabilityCondition

structure ControllabilityEndgameState where
  object : ControllableAdmittedObject

def ControllabilityWitnessClosed (O : ControllableAdmittedObject) : Prop :=
  O.controllabilityCondition

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse