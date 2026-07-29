import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ReactionMechanismPackage where
  reactantSpecies : Type u
  productSpecies : Type v
  elementarySteps : List (String × String × Nat)
  rateLaw : String
  mechanismValidated : Prop
  rateLawConsistent : Prop

structure ReactionMechanismEvidence (R : ReactionMechanismPackage) where
  mechanismValidatedClosed : R.mechanismValidated
  rateLawConsistentClosed : R.rateLawConsistent

def ReactionMechanismClosed (R : ReactionMechanismPackage) : Prop :=
  R.mechanismValidated ∧ R.rateLawConsistent

theorem reaction_mechanism_closed_from_evidence (R : ReactionMechanismPackage)
    (E : ReactionMechanismEvidence R) : ReactionMechanismClosed R :=
  And.intro E.mechanismValidatedClosed E.rateLawConsistentClosed

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
