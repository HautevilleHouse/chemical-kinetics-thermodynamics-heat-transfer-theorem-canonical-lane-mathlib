import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ReactionRatePackage (A : AdmissibleClass) where
  rateConstant : Type u
  activationEnergy : Type v
  arrheniusLaw : Prop
  lawOfMassAction : Prop
  reversibleKinetics : Prop

structure ReactionRateEvidence {A : AdmissibleClass} (P : ReactionRatePackage A) where
  arrheniusLawClosed : P.arrheniusLaw
  lawOfMassActionClosed : P.lawOfMassAction
  reversibleKineticsClosed : P.reversibleKinetics

def ReactionRateClosed {A : AdmissibleClass} (P : ReactionRatePackage A) : Prop :=
  P.arrheniusLaw ∧ P.lawOfMassAction ∧ P.reversibleKinetics

theorem reaction_rate_closed_from_evidence {A : AdmissibleClass} (P : ReactionRatePackage A) (E : ReactionRateEvidence P) :
    ReactionRateClosed P := by
  exact And.intro E.arrheniusLawClosed (And.intro E.lawOfMassActionClosed E.reversibleKineticsClosed)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse