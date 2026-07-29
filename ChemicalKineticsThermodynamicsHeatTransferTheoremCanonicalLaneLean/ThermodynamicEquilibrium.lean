import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  stateFunction : Type u
  internalEnergy : Type v
  entropyDefined : Prop
  gibbsFreeEnergyMinimized : Prop
  equilibriumConstantDerived : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  entropyDefinedClosed : T.entropyDefined
  gibbsFreeEnergyMinimizedClosed : T.gibbsFreeEnergyMinimized
  equilibriumConstantDerivedClosed : T.equilibriumConstantDerived

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.entropyDefined ∧ T.gibbsFreeEnergyMinimized ∧ T.equilibriumConstantDerived

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.entropyDefinedClosed
    (And.intro E.gibbsFreeEnergyMinimizedClosed E.equilibriumConstantDerivedClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
