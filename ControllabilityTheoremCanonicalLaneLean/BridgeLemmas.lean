import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControllabilityTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ControllabilityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse