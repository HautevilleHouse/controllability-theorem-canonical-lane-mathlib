import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure KalmanRankConditionPackage where
  stateDimension : ℕ
  inputDimension : ℕ
  controllabilityMatrixRank : ℕ
  rankFullCondition : Prop
  controllabilityFromRank : Prop

structure KalmanRankConditionEvidence (K : KalmanRankConditionPackage) where
  rankFullConditionClosed : K.rankFullCondition
  controllabilityFromRankClosed : K.controllabilityFromRank

def KalmanRankConditionClosed (K : KalmanRankConditionPackage) : Prop :=
  K.rankFullCondition ∧ K.controllabilityFromRank

theorem kalman_rank_condition_closed_from_evidence
    (K : KalmanRankConditionPackage) (E : KalmanRankConditionEvidence K) :
    KalmanRankConditionClosed K := by
  exact And.intro E.rankFullConditionClosed E.controllabilityFromRankClosed

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse