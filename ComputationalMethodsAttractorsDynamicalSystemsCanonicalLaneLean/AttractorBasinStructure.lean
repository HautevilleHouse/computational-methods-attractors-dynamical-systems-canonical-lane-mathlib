import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsAttractorsDynamicalSystemsCanonicalLaneLean

structure AttractorObject where
  phaseSpace : Type
  dynamics : phaseSpace → phaseSpace
  attractorSet : Set phaseSpace
  basinOfAttraction : Set phaseSpace

definesBasin (A : AttractorObject) : Prop :=
  ∀ x : A.phaseSpace, x ∈ A.basinOfAttraction ↔
    ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, dist ((A.dynamics)^[n] x) A.attractorSet < ε

structure AdmissibleAttractorClass extends AdmissibleClass where
  attractor : AttractorObject
  basinDefined : definesBasin attractor

def bridgeClosedAttractor (A : AdmissibleAttractorClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧ A.basinDefined

theorem attractor_bridge_from_admissible (A : AdmissibleAttractorClass) :
    bridgeClosedAttractor A := by
  exact And.intro A.solverDecidesProjectedLanguage A.basinDefined

end ComputationalMethodsAttractorsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse