import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure HeatTransferPackage where
  heatEquation : Type u
  conductionCoefficient : Type v
  fourierLaw : Prop
  convectiveHeatTransfer : Prop
  radiativeHeatTransfer : Prop

structure HeatTransferEvidence (H : HeatTransferPackage) where
  fourierLawClosed : H.fourierLaw
  convectiveHeatTransferClosed : H.convectiveHeatTransfer
  radiativeHeatTransferClosed : H.radiativeHeatTransfer

def HeatTransferClosed (H : HeatTransferPackage) : Prop :=
  H.fourierLaw ∧ H.convectiveHeatTransfer ∧ H.radiativeHeatTransfer

theorem heat_transfer_closed_from_evidence (H : HeatTransferPackage)
    (E : HeatTransferEvidence H) : HeatTransferClosed H := by
  exact And.intro E.fourierLawClosed
    (And.intro E.convectiveHeatTransferClosed E.radiativeHeatTransferClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
