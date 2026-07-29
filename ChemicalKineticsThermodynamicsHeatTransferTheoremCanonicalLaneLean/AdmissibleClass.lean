import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ChemicalAdmittedObject where
  system : Type u
  reactionNetwork : Prop
  thermodynamicConsistency : Prop
  conclusion : thermodynamicConsistency

structure ChemicalAdmissibleClass where
  object : ChemicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def chemicalAdmittedClosure (A : ChemicalAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse