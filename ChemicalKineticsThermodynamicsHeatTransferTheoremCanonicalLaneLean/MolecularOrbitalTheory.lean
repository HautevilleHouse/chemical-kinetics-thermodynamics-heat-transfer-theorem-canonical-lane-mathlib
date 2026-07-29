import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  atomicOrbitals : List String
  molecularOrbitals : List String
  overlapIntegrals : ℝ
  huckelApproximation : Prop
  orbitalEnergies : List ℝ
  symmetryAdapted : Prop
  huckelValid : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  huckelApproximationClosed : M.huckelApproximation
  symmetryAdaptedClosed : M.symmetryAdapted
  huckelValidClosed : M.huckelValid

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.huckelApproximation ∧ M.symmetryAdapted ∧ M.huckelValid

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage)
    (E : MolecularOrbitalTheoryEvidence M) : MolecularOrbitalTheoryClosed M :=
  And.intro E.huckelApproximationClosed
    (And.intro E.symmetryAdaptedClosed E.huckelValidClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
