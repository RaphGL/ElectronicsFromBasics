#import "../../core/core.typ"

=== Conductance

When students first see the parallel resistance equation, the natural
question to ask is, \"Where did #emph[that] thing come from?\" It is
truly an odd piece of arithmetic, and its origin deserves a good
explanation.

Resistance, by definition, is the measure of #emph[friction] a component
presents to the flow of electrons through it. Resistance is symbolized
by the capital letter \"R\" and is measured in the unit of \"ohm.\"
However, we can also think of this electrical property in terms of its
inverse: how #emph[easy] it is for electrons to flow through a
component, rather than how #emph[difficult]. If #emph[resistance] is the
word we use to symbolize the measure of how difficult it is for
electrons to flow, then a good word to express how easy it is for
electrons to flow would be #emph[conductance].

Mathematically, conductance is the reciprocal, or inverse, of
resistance:

$ "Conductance" = 1 / "Resistance" $

The greater the resistance, the less the conductance, and vice versa.
This should make intuitive sense, resistance and conductance being
opposite ways to denote the same essential electrical property. If two
components\' resistances are compared and it is found that component
\"A\" has one-half the resistance of component \"B,\" then we could
alternatively express this relationship by saying that component \"A\"
is #emph[twice] as conductive as component \"B.\" If component \"A\" has
but one-third the resistance of component \"B,\" then we could say it is
#emph[three times] more conductive than component \"B,\" and so on.

Carrying this idea further, a symbol and unit were created to represent
conductance. The symbol is the capital letter \"G\" and the unit is the
#emph[mho], which is \"ohm\" spelled backwards (and you didn\'t think
electronics engineers had any sense of humor!). Despite its
appropriateness, the unit of the mho was replaced in later years by the
unit of #emph[siemens] (abbreviated by the capital letter \"S\"). This
decision to change unit names is reminiscent of the change from the
temperature unit of degrees #emph[Centigrade] to degrees #emph[Celsius],
or the change from the unit of frequency #emph[c.p.s.] (cycles per
second) to #emph[Hertz]. If you\'re looking for a pattern here, Siemens,
Celsius, and Hertz are all surnames of famous scientists, the names of
which, sadly, tell us less about the nature of the units than the
units\' original designations.

As a footnote, the unit of siemens is never expressed without the last
letter \"s.\" In other words, there is no such thing as a unit of
\"siemen\" as there is in the case of the \"ohm\" or the \"mho.\" The
reason for this is the proper spelling of the respective scientists\'
surnames. The unit for electrical resistance was named after someone
named \"Ohm,\" whereas the unit for electrical conductance was named
after someone named \"Siemens,\" therefore it would be improper to
\"singularize\" the latter unit as its final \"s\" does not denote
plurality.

Back to our parallel circuit example, we should be able to see that
multiple paths (branches) for current reduces total resistance for the
whole circuit, as electrons are able to flow easier through the whole
network of multiple branches than through any one of those branch
resistances alone. In terms of #emph[resistance], additional branches
result in a lesser total (current meets with less opposition). In terms
of #emph[conductance], however, additional branches results in a greater
total (electrons flow with greater conductance):

Total parallel resistance is #emph[less] than any one of the individual
branch resistances because parallel resistors resist less together than
they would separately:

#image("static/00096.png")

Total parallel conductance is #emph[greater] than any of the individual
branch conductances because parallel resistors conduct better together
than they would separately:

#image("static/00097.png")

To be more precise, the total conductance in a parallel circuit is equal
to the sum of the individual conductances:

$ G_"total" = G_1 + G_2 + G_3 + G_4 $

If we know that conductance is nothing more than the mathematical
reciprocal (1/x) of resistance, we can translate each term of the above
formula into resistance by substituting the reciprocal of each
respective conductance:

$ 1 / R_"total" = 1 / R_1 + 1 / R_2 + 1 / R_3 + 1 / R_4 $

Solving the above equation for total resistance (instead of the
reciprocal of total resistance), we can invert (reciprocate) both sides
of the equation:

$ R_"total" = 1 / (1 / R_1 + 1 / R_2 + 1 / R_3 + 1 / R_4) $

So, we arrive at our cryptic resistance formula at last! Conductance (G)
is seldom used as a practical measurement, and so the above formula is a
common one to see in the analysis of parallel circuits.

#core.review[
  - Conductance is the opposite of resistance: the measure of how
    #emph[easy] is it for electrons to flow through something.

  - Conductance is symbolized with the letter \"G\" and is measured in
    units of #emph[mhos] or #emph[Siemens].

  - Mathematically, conductance equals the reciprocal of resistance: $G = 1/R$
]
