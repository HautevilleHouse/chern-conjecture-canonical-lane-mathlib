import ChernConjectureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChernConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def closureProjection : Projection ClosureState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem closure_projection_idempotent (x : ClosureState) :
    closureProjection.toFun (closureProjection.toFun x) = closureProjection.toFun x := by
  exact closureProjection.idempotent x

end ChernConjectureCanonicalLaneLean
end HautevilleHouse
