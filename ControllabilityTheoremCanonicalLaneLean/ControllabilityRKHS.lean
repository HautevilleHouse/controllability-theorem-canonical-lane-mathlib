import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure RKHSControlPackage where
  kernel : Type
  reproducingProperty : Prop
  controlOperator : Type
  controllabilityGramian : Type
  gramianPositiveDefinite : Prop
  kernelWellDefined : kernel → Prop
  controlOperatorBounded : Prop

structure RKHSControlEvidence (R : RKHSControlPackage) where
  kernelWellDefinedClosed : R.kernelWellDefined R.kernel
  gramianPositiveDefiniteClosed : R.gramianPositiveDefinite
  controlOperatorBoundedClosed : R.controlOperatorBounded

def RKHSControlClosed (R : RKHSControlPackage) : Prop :=
  R.gramianPositiveDefinite ∧ R.controlOperatorBounded

theorem rkhs_control_closed_from_evidence
    (R : RKHSControlPackage) (E : RKHSControlEvidence R) :
    RKHSControlClosed R :=
  And.intro E.gramianPositiveDefiniteClosed E.controlOperatorBoundedClosed

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse
