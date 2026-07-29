import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstant : Type u
  activationEnergy : Type v
  arrheniusEquation : Prop
  lawOfMassAction : Prop
  rateDeterminingStep : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  arrheniusEquationClosed : R.arrheniusEquation
  lawOfMassActionClosed : R.lawOfMassAction
  rateDeterminingStepClosed : R.rateDeterminingStep

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.arrheniusEquation ∧ R.lawOfMassAction ∧ R.rateDeterminingStep

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.arrheniusEquationClosed
    (And.intro E.lawOfMassActionClosed E.rateDeterminingStepClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
