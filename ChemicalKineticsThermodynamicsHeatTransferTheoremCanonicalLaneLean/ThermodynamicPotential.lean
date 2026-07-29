import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ThermodynamicPotentialPackage (A : AdmissibleClass) where
  enthalpy : Type u
  entropy : Type v
  gibbsFreeEnergy : Type w
  thermodynamicConsistency : Prop
  equilibriumCondition : Prop

structure ThermodynamicPotentialEvidence {A : AdmissibleClass} (P : ThermodynamicPotentialPackage A) where
  thermodynamicConsistencyClosed : P.thermodynamicConsistency
  equilibriumConditionClosed : P.equilibriumCondition

def ThermodynamicPotentialClosed {A : AdmissibleClass} (P : ThermodynamicPotentialPackage A) : Prop :=
  P.thermodynamicConsistency ∧ P.equilibriumCondition

theorem thermodynamic_potential_closed_from_evidence {A : AdmissibleClass} (P : ThermodynamicPotentialPackage A) (E : ThermodynamicPotentialEvidence P) :
    ThermodynamicPotentialClosed P := by
  exact And.intro E.thermodynamicConsistencyClosed E.equilibriumConditionClosed

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse