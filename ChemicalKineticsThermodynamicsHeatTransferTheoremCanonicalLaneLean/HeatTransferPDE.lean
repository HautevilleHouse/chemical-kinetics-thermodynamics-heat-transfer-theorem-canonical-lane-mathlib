import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure HeatTransferPDEPackage where
  timeParameter : Type u
  temperatureField : timeParameter → Type v
  initialCondition : Prop
  heatEquation : Prop
  boundaryConditions : Prop

structure HeatTransferPDEEvidence (H : HeatTransferPDEPackage) where
  initialConditionClosed : H.initialCondition
  heatEquationClosed : H.heatEquation
  boundaryConditionsClosed : H.boundaryConditions

def HeatTransferPDEClosed (H : HeatTransferPDEPackage) : Prop :=
  H.initialCondition ∧ H.heatEquation ∧ H.boundaryConditions

theorem heat_transfer_pde_closed_from_evidence (H : HeatTransferPDEPackage) (E : HeatTransferPDEEvidence H) :
    HeatTransferPDEClosed H := by
  exact And.intro E.initialConditionClosed (And.intro E.heatEquationClosed E.boundaryConditionsClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse