import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ThermodynamicLawsPackage where
  firstLaw : Prop
  secondLaw : Prop
  thirdLaw : Prop
  gibbsFreeEnergy : Prop

structure ThermodynamicLawsEvidence (T : ThermodynamicLawsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  thirdLawClosed : T.thirdLaw
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy

def ThermodynamicLawsClosed (T : ThermodynamicLawsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.thirdLaw ∧ T.gibbsFreeEnergy

theorem thermodynamic_laws_closed_from_evidence
    (T : ThermodynamicLawsPackage) (E : ThermodynamicLawsEvidence T) :
    ThermodynamicLawsClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.thirdLawClosed E.gibbsFreeEnergyClosed))

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse