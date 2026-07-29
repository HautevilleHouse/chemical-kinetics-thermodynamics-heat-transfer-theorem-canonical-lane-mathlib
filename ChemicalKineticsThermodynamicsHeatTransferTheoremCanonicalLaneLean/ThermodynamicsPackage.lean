import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  stateVariables : Type u
  firstLaw : Prop
  secondLaw : Prop
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.gibbsFreeEnergy ∧ T.equilibriumConstant

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.gibbsFreeEnergyClosed E.equilibriumConstantClosed))

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
