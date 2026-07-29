import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ReactionKineticsEquationsPackage where
  rateLaw : String -> Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  equilibriumConstant : Prop

structure ReactionKineticsEquationsEvidence (R : ReactionKineticsEquationsPackage) where
  rateLawClosed : R.rateLaw "Arrhenius"
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionKineticsEquationsClosed (R : ReactionKineticsEquationsPackage) : Prop :=
  R.rateLaw "Arrhenius" ∧ R.activationEnergy ∧ R.temperatureDependence ∧ R.equilibriumConstant

theorem reaction_kinetics_equations_closed_from_evidence
    (R : ReactionKineticsEquationsPackage) (E : ReactionKineticsEquationsEvidence R) :
    ReactionKineticsEquationsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.temperatureDependenceClosed E.equilibriumConstantClosed))

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse