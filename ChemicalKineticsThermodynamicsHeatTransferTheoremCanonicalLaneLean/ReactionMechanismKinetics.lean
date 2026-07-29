import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionCoordinate : Type u
  rateCoefficient : Type v
  arrheniusActivationEnergy : Prop
  transitionStateTheory : Prop
  elementaryStepBalance : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  arrheniusActivationEnergyClosed : R.arrheniusActivationEnergy
  transitionStateTheoryClosed : R.transitionStateTheory
  elementaryStepBalanceClosed : R.elementaryStepBalance

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.arrheniusActivationEnergy ∧ R.transitionStateTheory ∧ R.elementaryStepBalance

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.arrheniusActivationEnergyClosed
    (And.intro E.transitionStateTheoryClosed E.elementaryStepBalanceClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
