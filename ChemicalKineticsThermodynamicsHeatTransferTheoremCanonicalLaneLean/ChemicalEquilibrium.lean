import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ChemicalEquilibriumPackage (A : AdmissibleClass) where
  equilibriumConstant : Type u
  leChatelierPrinciple : Prop
  reactionQuotient : Prop
  equilibriumShift : Prop

structure ChemicalEquilibriumEvidence {A : AdmissibleClass} (P : ChemicalEquilibriumPackage A) where
  leChatelierPrincipleClosed : P.leChatelierPrinciple
  reactionQuotientClosed : P.reactionQuotient
  equilibriumShiftClosed : P.equilibriumShift

def ChemicalEquilibriumClosed {A : AdmissibleClass} (P : ChemicalEquilibriumPackage A) : Prop :=
  P.leChatelierPrinciple ∧ P.reactionQuotient ∧ P.equilibriumShift

theorem chemical_equilibrium_closed_from_evidence {A : AdmissibleClass} (P : ChemicalEquilibriumPackage A) (E : ChemicalEquilibriumEvidence P) :
    ChemicalEquilibriumClosed P := by
  exact And.intro E.leChatelierPrincipleClosed (And.intro E.reactionQuotientClosed E.equilibriumShiftClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse