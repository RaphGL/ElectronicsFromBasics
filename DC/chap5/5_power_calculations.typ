#import "../../core/core.typ"

=== Power calculations

When calculating the power dissipation of resistive components, use any
one of the three power equations to derive the answer from values of
voltage, current, and/or resistance pertaining to each component:

#image("static/10021.png")

This is easily managed by adding another row to our familiar table of
voltages, currents, and resistances:

#image("static/10084.png")

Power for any particular table column can be found by the appropriate
Ohm\'s Law equation (#emph[appropriate] based on what figures are
present for E, I, and R in that column).

An interesting rule for total power versus individual power is that it
is additive for #emph[any] configuration of circuit: series, parallel,
series/parallel, or otherwise. Power is a measure of rate of work, and
since power dissipated #emph[must] equal the total power applied by the
source(s) (as per the Law of Conservation of Energy in physics), circuit
configuration has no effect on the mathematics.

#core.review[
  Power is additive in #emph[any] configuration of resistive circuit:
  $ P_"Total" = P_1 + P_2 + ... + P_n $
]
