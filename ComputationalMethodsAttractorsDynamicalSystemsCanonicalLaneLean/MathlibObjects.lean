import ComputationalMethodsAttractorsDynamicalSystems.FinalTheorem
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ComputationalMethodsAttractorsDynamicalSystems

open HautevilleHouse.CanonicalLaneMathlibCore

structure AttractorBasin where
  basinType : String -- "strange", "periodic", "fixed"
  dimension : Nat
  lyapunovExponents : List Float

definition SystemTrajectory :=
  { step : Nat, state : List Float }

structure ComputationalDynamicsAdmittedObject where
  system : DynamicalSystemFormula
  projectedLanguage : Language
  solver : DecisionProcedure

end ComputationalMethodsAttractorsDynamicalSystems
end HautevilleHouse