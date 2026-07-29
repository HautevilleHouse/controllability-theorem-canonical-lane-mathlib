import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure ControllabilityAdmittedObject where
  systemType : Type u
  stateSpace : Type v
  controlSpace : Type w
  dynamics : systemType → stateSpace → controlSpace → stateSpace
  controllabilityProperty : Prop
  conclusion : controllabilityProperty

structure AdmissibleClass where
  object : ControllabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ControllabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ControllabilityWitnessClosed (O : ControllabilityAdmittedObject) : Prop :=
  O.controllabilityProperty

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse