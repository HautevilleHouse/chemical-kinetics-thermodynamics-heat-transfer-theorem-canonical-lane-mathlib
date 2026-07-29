import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  hamiltonianMatrix : Type u
  molecularOrbitals : Type v
  variationalPrinciple : Prop
  huckelApproximation : Prop
  frontierOrbitalTheory : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  variationalPrincipleClosed : M.variationalPrinciple
  huckelApproximationClosed : M.huckelApproximation
  frontierOrbitalTheoryClosed : M.frontierOrbitalTheory

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.variationalPrinciple ∧ M.huckelApproximation ∧ M.frontierOrbitalTheory

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage)
    (E : MolecularOrbitalTheoryEvidence M) : MolecularOrbitalTheoryClosed M := by
  exact And.intro E.variationalPrincipleClosed
    (And.intro E.huckelApproximationClosed E.frontierOrbitalTheoryClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
