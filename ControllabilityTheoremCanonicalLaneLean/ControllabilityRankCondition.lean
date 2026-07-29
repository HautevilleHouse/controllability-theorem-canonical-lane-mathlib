import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure RankConditionPackage where
  controllabilityMatrix : Type
  rank : Nat
  rankCondition : Prop
  matrixFullRank : controllabilityMatrix → Prop
  rankConditionClosed : rankCondition
  matrixFullRankClosed : matrixFullRank controllabilityMatrix

structure RankConditionEvidence (R : RankConditionPackage) where
  rankConditionClosed : R.rankCondition
  matrixFullRankClosed : R.matrixFullRank R.controllabilityMatrix

def RankConditionClosed (R : RankConditionPackage) : Prop :=
  R.rankCondition ∧ R.matrixFullRank R.controllabilityMatrix

theorem rank_condition_closed_from_evidence
    (R : RankConditionPackage) (E : RankConditionEvidence R) :
    RankConditionClosed R :=
  And.intro E.rankConditionClosed E.matrixFullRankClosed

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse
