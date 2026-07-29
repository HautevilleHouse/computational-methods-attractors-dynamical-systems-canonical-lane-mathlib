import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsAttractorsDynamicalSystemsCanonicalLaneLean

structure LyapunovObject where
  lyapunovExponent : ℝ
  stabilityCriterion : ℝ > 0

structure AdmissibleLyapunovClass extends AdmissibleClass where
  lyapunov : LyapunovObject
  criterionSatisfied : lyapunov.lyapunovExponent > 0

define LyapunovBridge (A : AdmissibleLyapunovClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧ A.criterionSatisfied

theorem lyapunov_bridge_from_admissible (A : AdmissibleLyapunovClass) :
    LyapunovBridge A := by
  exact And.intro A.solverDecidesProjectedLanguage A.criterionSatisfied

end ComputationalMethodsAttractorsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse