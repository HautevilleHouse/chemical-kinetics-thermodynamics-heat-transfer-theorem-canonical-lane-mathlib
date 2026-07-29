import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure HeatTransferEquationPackage where
  thermalConductivity : ℝ
  temperatureGradient : ℝ
  heatFlux : ℝ
  heatEquation : Prop
  conductionValid : Prop
  boundaryConditions : Prop

structure HeatTransferEquationEvidence (H : HeatTransferEquationPackage) where
  heatEquationClosed : H.heatEquation
  conductionValidClosed : H.conductionValid
  boundaryConditionsClosed : H.boundaryConditions

def HeatTransferEquationClosed (H : HeatTransferEquationPackage) : Prop :=
  H.heatEquation ∧ H.conductionValid ∧ H.boundaryConditions

theorem heat_transfer_equation_closed_from_evidence (H : HeatTransferEquationPackage)
    (E : HeatTransferEquationEvidence H) : HeatTransferEquationClosed H :=
  And.intro E.heatEquationClosed
    (And.intro E.conductionValidClosed E.boundaryConditionsClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
