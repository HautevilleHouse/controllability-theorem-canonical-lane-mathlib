import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure ControllabilityStateSpace where
  stateType : Type u
  controlType : Type v
  dynamics : stateType → controlType → stateType
  stateSpaceDimension : Nat
  controlSpaceDimension : Nat
  smoothManifold : Bool
  completeMetric : Bool

def ControllabilityStateSpaceClosed (S : ControllabilityStateSpace) : Prop :=
  S.smoothManifold ∧ S.completeMetric

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse
