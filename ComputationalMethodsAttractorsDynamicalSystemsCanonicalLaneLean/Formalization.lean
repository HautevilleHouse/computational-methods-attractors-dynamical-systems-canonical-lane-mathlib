import ComputationalMethodsAttractorsDynamicalSystems.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsAttractorsDynamicalSystems

structure DynamicalSystemFormula where
  systemName : String
  equations : String
  parameterDomain : String
  attractorDimension : Nat

def sampleDynamicalSystem : DynamicalSystemFormula :=
  { systemName := "Lorenz63",
    equations := "x' = sigma*(y-x), y' = x*(rho-z) - y, z' = x*y - beta*z",
    parameterDomain := "sigma=10, rho=28, beta=8/3",
    attractorDimension := 1 }

theorem sample_system_dimension_positive :
    sampleDynamicalSystem.attractorDimension > 0 := by
  native_decide

end ComputationalMethodsAttractorsDynamicalSystems
end HautevilleHouse