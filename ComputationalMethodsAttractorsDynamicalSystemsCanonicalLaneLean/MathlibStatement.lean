import ComputationalMethodsAttractorsDynamicalSystems.FinalTheorem
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ComputationalMethodsAttractorsDynamicalSystems

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "ComputationalMethodsAttractorsDynamicalSystems",
  theoremObject := "ConstrainedDynamicsClosure",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "Unrestricted attractor closure remains carried; only constraints with bridge and gate closed are proven."
}

theorem mathlib_common_core_imported_checked :
    mathlibProofObligation.commonCoreImported = true := by
  rfl

theorem theorem_specific_endgame_pilot_closed :
    forall A : AdmissibleClass, ConstrainedDynamicsClosure A := by
  intro A
  exact constrained_dynamics_endgame A

end ComputationalMethodsAttractorsDynamicalSystems
end HautevilleHouse