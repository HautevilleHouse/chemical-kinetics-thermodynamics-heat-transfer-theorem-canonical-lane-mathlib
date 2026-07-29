import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure MolecularOrbitalEnergyPackage where
  huckelMethod : Prop
  energyLevels : List Float
  linearCombination : Prop
  overlapIntegral : Prop

structure MolecularOrbitalEnergyEvidence (M : MolecularOrbitalEnergyPackage) where
  huckelMethodClosed : M.huckelMethod
  energyLevelsClosed : M.energyLevels.length > 0
  linearCombinationClosed : M.linearCombination
  overlapIntegralClosed : M.overlapIntegral

def MolecularOrbitalEnergyClosed (M : MolecularOrbitalEnergyPackage) : Prop :=
  M.huckelMethod ∧ M.energyLevels.length > 0 ∧ M.linearCombination ∧ M.overlapIntegral

theorem molecular_orbital_energy_closed_from_evidence
    (M : MolecularOrbitalEnergyPackage) (E : MolecularOrbitalEnergyEvidence M) :
    MolecularOrbitalEnergyClosed M := by
  exact And.intro E.huckelMethodClosed
    (And.intro E.energyLevelsClosed
      (And.intro E.linearCombinationClosed E.overlapIntegralClosed))

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse