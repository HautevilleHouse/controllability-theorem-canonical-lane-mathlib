import ControllabilityTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "controllability-theorem-canonical-lane",
  theoremName := "Controllability Theorem",
  theoremObject := "Bridge core closure for Controllability Theorem",
  classicalBoundary := "carried",
  manifoldConstrainedStatement := "admissible-class closure via bridge and gate",
  certificateLane := "controllability_constrained",
  carriedRemainder := "unrestricted classical closure remains carried"
}

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremStatement.certificateLane = "controllability_constrained"

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "controllability-theorem-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "controllability_constrained" := by
  rfl

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse