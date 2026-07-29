import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheorem

structure ControllabilityAdmittedObject where
  system : ControlledSystem
  controlledObject : Type u
  controllabilityProperty : Prop
  conclusion : controllabilityProperty

end ControllabilityTheorem
end HautevilleHouse
