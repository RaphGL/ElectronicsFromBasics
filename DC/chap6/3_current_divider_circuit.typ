#import "../../core/core.typ"

=== Current divider circuits

Let\'s analyze a simple parallel circuit, determining the branch
currents through individual resistors:

#image("static/00118.png")

Knowing that voltages across all components in a parallel circuit are
the same, we can fill in our voltage/current/resistance table with 6
volts across the top row:

#image("static/10113.png")

Using Ohm\'s Law ($I= E/R$) we can calculate each branch current:

#image("static/10114.png")

Knowing that branch currents add up in parallel circuits to equal the
total current, we can arrive at total current by summing 6 mA, 2 mA, and
3 mA:

#image("static/10115.png")

The final step, of course, is to figure total resistance. This can be
done with Ohm\'s Law (R\=E/I) in the \"total\" column, or with the
parallel resistance formula from individual resistances. Either way,
we\'ll get the same answer:

#image("static/10116.png")

Once again, it should be apparent that the current through each resistor
is related to its resistance, given that the voltage across all
resistors is the same. Rather than being directly proportional, the
relationship here is one of inverse proportion. For example, the current
through R#sub[1] is twice as much as the current through R#sub[3], which
has twice the resistance of R#sub[1].

If we were to change the supply voltage of this circuit, we find that
(surprise!) these proportional ratios do not change:

#image("static/10117.png")

The current through R#sub[1] is still exactly twice that of R#sub[3],
despite the fact that the source voltage has changed. The
proportionality between different branch currents is strictly a function
of resistance.

Also reminiscent of voltage dividers is the fact that branch currents
are fixed proportions of the total current. Despite the fourfold
increase in supply voltage, the ratio between any branch current and the
total current remains unchanged:

$ 
  I_(R 1) / I_"total" &= (6 "mA") / (11 "mA") = (24 "mA") / (44 "mA") = 0.54545 \
  I_(R 2) / I_"total" &= (2 "mA") / (11 "mA") = (8 "mA") / (44 "mA") = 0.18182 \
  I_(R 3) / I_"total" &= (3 "mA") / (11 "mA") = (12 "mA") / (44 "mA") = 0.27273 \
$

For this reason a parallel circuit is often called a #emph[current
divider] for its ability to proportion -- or divide -- the total current
into fractional parts. With a little bit of algebra, we can derive a
formula for determining parallel resistor current given nothing more
than total current, individual resistance, and total resistance:

$
  "Current through any resistor" -> I_r = E_r / R_r \
  "Voltage in a parallel circuit" -> E_"total" = E_r = I_"total" R_"total" \
  \
  ... "Substituing" I_"total" R_"total" "for" E_r "in the first equation" ... \
  "Current through any parallel resistor" -> I_r = (I_"total" R_"total") / R_r \
  ... "or" ... \ 
  \
  #core.boxed_text[
    $ I_r = I_"total" R_"total"/R_r $
  ]
$

The ratio of total resistance to individual resistance is the same ratio
as individual (branch) current to total current. This is known as the
#emph[current divider formula], and it is a short-cut method for
determining branch currents in a parallel circuit when the total current
is known.

Using the original parallel circuit as an example, we can re-calculate
the branch currents using this formula, if we start by knowing the total
current and total resistance:

$
  I_(R 1) = 11 "mA" (545.45 Omega) / (1k Omega) = 6 "mA" \
  I_(R 2) = 11 "mA" (545.45 Omega) / (3k Omega) = 2 "mA" \
  I_(R 3) = 11 "mA" (545.45 Omega) / (2k Omega) = 3 "mA" \
$

If you take the time to compare the two divider formulae, you\'ll see
that they are remarkably similar. Notice, however, that the ratio in the
voltage divider formula is R#sub[n] (individual resistance) divided by
R#sub[Total], and how the ratio in the current divider formula is
R#sub[Total] divided by R#sub[n]:

#columns(2)[
  #align(center)[*Voltage divider formula*]
  #core.boxed_text[
    $ E_r = E_"total" R_r/R_"total" $
  ]

  #colbreak()
  #align(center)[*Current divider formula*]
  #core.boxed_text[
    $ I_r = I_"total" R_"total"/R_r $
  ]
]

It is quite easy to confuse these two equations, getting the resistance
ratios backwards. One way to help remember the proper form is to keep in
mind that both ratios in the voltage and current divider equations must
equal less than one. After all these are #emph[divider] equations, not
#emph[multiplier] equations! If the fraction is upside-down, it will
provide a ratio greater than one, which is incorrect. Knowing that total
resistance in a series (voltage divider) circuit is always greater than
any of the individual resistances, we know that the fraction for that
formula must be R#sub[n] over R#sub[Total]. Conversely, knowing that
total resistance in a parallel (current divider) circuit is always less
then any of the individual resistances, we know that the fraction for
that formula must be R#sub[Total] over R#sub[n].

Current divider circuits also find application in electric meter
circuits, where a fraction of a measured current is desired to be routed
through a sensitive detection device. Using the current divider formula,
the proper shunt resistor can be sized to proportion just the right
amount of current for the device in any given instance:

#image("static/00119.png")

#core.review[
  Parallel circuits proportion, or \"divide,\" the total circuit current
  among individual branch currents, the proportions being strictly
  dependent upon resistances: $ I_n = I_"Total" R_"Total"/R_n $
]
