import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRates : Prop
  rateConstants : Prop
  activationEnergy : Prop
  reactionMechanism : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  reactionRatesClosed : R.reactionRates
  rateConstantsClosed : R.rateConstants
  activationEnergyClosed : R.activationEnergy
  reactionMechanismClosed : R.reactionMechanism

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.reactionRates ∧ R.rateConstants ∧ R.activationEnergy ∧ R.reactionMechanism

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.reactionRatesClosed (And.intro E.rateConstantsClosed (And.intro E.activationEnergyClosed E.reactionMechanismClosed))

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse