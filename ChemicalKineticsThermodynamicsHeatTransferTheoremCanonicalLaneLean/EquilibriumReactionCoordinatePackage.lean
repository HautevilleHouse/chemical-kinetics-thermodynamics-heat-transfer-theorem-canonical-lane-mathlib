import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean

structure EquilibriumReactionCoordinatePackage where
  reactionCoordinate : Type u
  transitionStateTheory : Prop
  equilibriumConstantDerived : Prop
  arrheniusEquationExtended : Prop
  vanHoffEquation : Prop

structure EquilibriumReactionCoordinateEvidence (E : EquilibriumReactionCoordinatePackage) where
  transitionStateTheoryClosed : E.transitionStateTheory
  equilibriumConstantDerivedClosed : E.equilibriumConstantDerived
  arrheniusEquationExtendedClosed : E.arrheniusEquationExtended
  vanHoffEquationClosed : E.vanHoffEquation

def EquilibriumReactionCoordinateClosed (E : EquilibriumReactionCoordinatePackage) : Prop :=
  E.transitionStateTheory ∧ E.equilibriumConstantDerived ∧
  E.arrheniusEquationExtended ∧ E.vanHoffEquation

theorem equilibrium_reaction_coordinate_closed_from_evidence
    (E : EquilibriumReactionCoordinatePackage)
    (Ev : EquilibriumReactionCoordinateEvidence E) :
    EquilibriumReactionCoordinateClosed E := by
  exact And.intro Ev.transitionStateTheoryClosed
    (And.intro Ev.equilibriumConstantDerivedClosed
      (And.intro Ev.arrheniusEquationExtendedClosed Ev.vanHoffEquationClosed))

end ChemicalKineticsThermodynamicsHeatTransferTheoremCanonicalLaneLean
end HautevilleHouse
