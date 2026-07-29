import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

struct HeatTransferPackage where
  temperatureField : Type u
  thermalConductivity : Type v
  fourierLawValid : Prop
  energyConservation : Prop
  boundaryConditionsSpecified : Prop

struct HeatTransferEvidence (H : HeatTransferPackage) where
  fourierLawValidClosed : H.fourierLawValid
  energyConservationClosed : H.energyConservation
  boundaryConditionsSpecifiedClosed : H.boundaryConditionsSpecified

def HeatTransferClosed (H : HeatTransferPackage) : Prop :=
  H.fourierLawValid ∧ H.energyConservation ∧ H.boundaryConditionsSpecified

theorem heat_transfer_closed_from_evidence (H : HeatTransferPackage)
    (E : HeatTransferEvidence H) : HeatTransferClosed H := by
  exact And.intro E.fourierLawValidClosed
    (And.intro E.energyConservationClosed E.boundaryConditionsSpecifiedClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse