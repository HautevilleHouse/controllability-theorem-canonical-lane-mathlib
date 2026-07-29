import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure LyapunovControllabilityPackage where
  lyapunovFunction : Type
  derivativeAlongDynamics : lyapunovFunction → Prop
  controllabilityCondition : Prop
  lyapunovFunctionExistence : Prop
  decayCondition : Prop
  lyapunovFunctionExistenceClosed : lyapunovFunctionExistence
  decayConditionClosed : decayCondition

structure LyapunovControllabilityEvidence (L : LyapunovControllabilityPackage) where
  lyapunovFunctionExistenceClosed : L.lyapunovFunctionExistence
  decayConditionClosed : L.decayCondition

def LyapunovControllabilityClosed (L : LyapunovControllabilityPackage) : Prop :=
  L.lyapunovFunctionExistence ∧ L.decayCondition

theorem lyapunov_controllability_closed_from_evidence
    (L : LyapunovControllabilityPackage) (E : LyapunovControllabilityEvidence L) :
    LyapunovControllabilityClosed L :=
  And.intro E.lyapunovFunctionExistenceClosed E.decayConditionClosed

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse
