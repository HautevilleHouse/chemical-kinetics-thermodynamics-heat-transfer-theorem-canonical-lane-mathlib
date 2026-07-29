import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure TransitionStateTheoryPackage where
  activationGibbsFreeEnergy : ℝ
  rateConstant : ℝ
  temperature : ℝ
  eyringEquation : Prop
  thermodynamicConsistency : Prop
  molecularity : Prop

structure TransitionStateTheoryEvidence (T : TransitionStateTheoryPackage) where
  eyringEquationClosed : T.eyringEquation
  thermodynamicConsistencyClosed : T.thermodynamicConsistency
  molecularityClosed : T.molecularity

def TransitionStateTheoryClosed (T : TransitionStateTheoryPackage) : Prop :=
  T.eyringEquation ∧ T.thermodynamicConsistency ∧ T.molecularity

theorem transition_state_theory_closed_from_evidence (T : TransitionStateTheoryPackage)
    (E : TransitionStateTheoryEvidence T) : TransitionStateTheoryClosed T :=
  And.intro E.eyringEquationClosed
    (And.intro E.thermodynamicConsistencyClosed E.molecularityClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
