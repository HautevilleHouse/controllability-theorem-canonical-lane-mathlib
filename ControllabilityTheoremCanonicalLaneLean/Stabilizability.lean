import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControllabilityTheoremCanonicalLaneLean.ControllabilityGramian

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure StabilizabilityPackage where
  uncontrollableModesStable : Prop
  stabilizabilityFromControllability : Prop
  polePlacementAchievable : Prop

structure StabilizabilityEvidence (S : StabilizabilityPackage) where
  uncontrollableModesStableClosed : S.uncontrollableModesStable
  stabilizabilityFromControllabilityClosed : S.stabilizabilityFromControllability
  polePlacementAchievableClosed : S.polePlacementAchievable

def StabilizabilityClosed (S : StabilizabilityPackage) : Prop :=
  S.uncontrollableModesStable ∧ S.stabilizabilityFromControllability ∧ S.polePlacementAchievable

theorem stabilizability_closed_from_evidence
    (S : StabilizabilityPackage) (E : StabilizabilityEvidence S) :
    StabilizabilityClosed S := by
  exact And.intro E.uncontrollableModesStableClosed
    (And.intro E.stabilizabilityFromControllabilityClosed E.polePlacementAchievableClosed)

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse