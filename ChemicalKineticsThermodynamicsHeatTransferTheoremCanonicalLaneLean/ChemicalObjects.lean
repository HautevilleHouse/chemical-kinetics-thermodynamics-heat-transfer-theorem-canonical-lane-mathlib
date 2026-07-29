import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure ChemicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChemicalAdmittedObject where
  space : ChemicalSpace
  reactionNetwork : Prop
  thermodynamicsModel : Prop
  conclusion : thermodynamicsModel

structure ChemicalEndgameState where
  object : ChemicalAdmittedObject

def ChemicalWitnessClosed (O : ChemicalAdmittedObject) : Prop :=
  O.thermodynamicsModel

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse