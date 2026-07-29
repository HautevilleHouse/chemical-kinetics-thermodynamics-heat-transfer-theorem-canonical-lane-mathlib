import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ArrheniusEquationPackage where
  activationEnergy : ℝ
  preExponentialFactor : ℝ
  temperature : ℝ
  rateConstant : ℝ
  equationHolds : Prop
  unitsConsistent : Prop

structure ArrheniusEquationEvidence (A : ArrheniusEquationPackage) where
  equationHoldsClosed : A.equationHolds
  unitsConsistentClosed : A.unitsConsistent

def ArrheniusEquationClosed (A : ArrheniusEquationPackage) : Prop :=
  A.equationHolds ∧ A.unitsConsistent

theorem arrhenius_equation_closed_from_evidence (A : ArrheniusEquationPackage)
    (E : ArrheniusEquationEvidence A) : ArrheniusEquationClosed A :=
  And.intro E.equationHoldsClosed E.unitsConsistentClosed

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
