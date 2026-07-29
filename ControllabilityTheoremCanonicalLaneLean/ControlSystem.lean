import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityTheoremCanonicalLaneLean

structure ControlSystem where
  stateSpace : Type u
  inputSpace : Type v
  dynamics : stateSpace → inputSpace → stateSpace
  smoothness : Prop
  complete : Prop
  smoothnessTerm : smoothness
  completeTerm : complete

structure ControlSystemEvidence (C : ControlSystem) where
  smoothnessClosed : C.smoothness
  completeClosed : C.complete

def ControlSystemClosed (C : ControlSystem) : Prop :=
  C.smoothness ∧ C.complete

theorem control_system_closed_from_evidence (C : ControlSystem)
    (E : ControlSystemEvidence C) : ControlSystemClosed C := by
  exact And.intro E.smoothnessClosed E.completeClosed

end ControllabilityTheoremCanonicalLaneLean
end HautevilleHouse