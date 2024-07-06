#import "../../core/core.typ"

=== Component failure analysis

The job of a technician frequently entails \"troubleshooting\" (locating
and correcting a problem) in malfunctioning circuits. Good
troubleshooting is a demanding and rewarding effort, requiring a
thorough understanding of the basic concepts, the ability to formulate
hypotheses (proposed explanations of an effect), the ability to judge
the value of different hypotheses based on their probability (how likely
one particular cause may be over another), and a sense of creativity in
applying a solution to rectify the problem. While it is possible to
distill these skills into a scientific methodology, most practiced
troubleshooters would agree that troubleshooting involves a touch of
art, and that it can take years of experience to fully develop this art.

An essential skill to have is a ready and intuitive understanding of how
component faults affect circuits in different configurations. We will
explore some of the effects of component faults in both series and
parallel circuits here, then to a greater degree at the end of the
\"Series-Parallel Combination Circuits\" chapter.

Let\'s start with a simple series circuit:

#image("static/00098.png")

With all components in this circuit functioning at their proper values,
we can mathematically determine all currents and voltage drops:

#image("static/10089.png")

Now let us suppose that R#sub[2] fails shorted. #emph[Shorted] means
that the resistor now acts like a straight piece of wire, with little or
no resistance. The circuit will behave as though a \"jumper\" wire were
connected across R#sub[2] (in case you were wondering, \"jumper wire\"
is a common term for a temporary wire connection in a circuit). What
causes the shorted condition of R#sub[2] is no matter to us in this
example; we only care about its effect upon the circuit:

#image("static/00099.png")

With R#sub[2] shorted, either by a jumper wire or by an internal
resistor failure, the total circuit resistance will #emph[decrease].
Since the voltage output by the battery is a constant (at least in our
ideal simulation here), a decrease in total circuit resistance means
that total circuit current #emph[must increase]:

#image("static/10090.png")

As the circuit current increases from 20 milliamps to 60 milliamps, the
voltage drops across R#sub[1] and R#sub[3] (which haven\'t changed
resistances) increase as well, so that the two resistors are dropping
the whole 9 volts. R#sub[2], being bypassed by the very low resistance
of the jumper wire, is effectively eliminated from the circuit, the
resistance from one lead to the other having been reduced to zero. Thus,
the voltage drop across R#sub[2], even with the increased total current,
is zero volts.

On the other hand, if R#sub[2] were to fail \"open\" -- resistance
increasing to nearly infinite levels -- it would also create
wide-reaching effects in the rest of the circuit:

#image("static/00100.png")

#image("static/10091.png")

With R#sub[2] at infinite resistance and total resistance being the sum
of all individual resistances in a series circuit, the total current
decreases to zero. With zero circuit current, there is no electron flow
to produce voltage drops across R#sub[1] or R#sub[3]. R#sub[2], on the
other hand, will manifest the full supply voltage across its terminals.

We can apply the same before/after analysis technique to parallel
circuits as well. First, we determine what a \"healthy\" parallel
circuit should behave like.

#image("static/00101.png")

#image("static/10092.png")

Supposing that R#sub[2] opens in this parallel circuit, here\'s what the
effects will be:

#image("static/00102.png")

#image("static/10093.png")

Notice that in this parallel circuit, an open branch only affects the
current through that branch and the circuit\'s total current. Total
voltage -- being shared equally across all components in a parallel
circuit, will be the same for all resistors. Due to the fact that the
voltage source\'s tendency is to hold voltage #emph[constant], its
voltage will not change, and being in parallel with all the resistors,
it will hold all the resistors\' voltages the same as they were before:
9 volts. Being that voltage is the only common parameter in a parallel
circuit, and the other resistors haven\'t changed resistance value,
their respective branch currents remain unchanged.

This is what happens in a household lamp circuit: all lamps get their
operating voltage from power wiring arranged in a parallel fashion.
Turning one lamp on and off (one branch in that parallel circuit closing
and opening) doesn\'t affect the operation of other lamps in the room,
only the current in that one lamp (branch circuit) and the total current
powering all the lamps in the room:

#image("static/00357.png")

In an ideal case (with perfect voltage sources and zero-resistance
connecting wire), shorted resistors in a simple parallel circuit will
also have no effect on what\'s happening in other branches of the
circuit. In real life, the effect is not quite the same, and we\'ll see
why in the following example:

#image("static/00103.png")

#image("static/10094.png")

A shorted resistor (resistance of 0 Ω) would theoretically draw infinite
current from any finite source of voltage (I\=E/0). In this case, the
zero resistance of R#sub[2] decreases the circuit total resistance to
zero Ω as well, increasing total current to a value of infinity. As long
as the voltage source holds steady at 9 volts, however, the other branch
currents (I#sub[R1] and I#sub[R3]) will remain unchanged.

The critical assumption in this \"perfect\" scheme, however, is that the
voltage supply will hold steady at its rated voltage while supplying an
infinite amount of current to a short-circuit load. This is simply not
realistic. Even if the short has a small amount of resistance (as
opposed to absolutely zero resistance), no #emph[real] voltage source
could arbitrarily supply a huge overload current and maintain steady
voltage at the same time. This is primarily due to the internal
resistance intrinsic to all electrical power sources, stemming from the
inescapable physical properties of the materials they\'re constructed
of:

#image("static/00104.png")

These internal resistances, small as they may be, turn our simple
parallel circuit into a series-parallel combination circuit. Usually,
the internal resistances of voltage sources are low enough that they can
be safely ignored, but when high currents resulting from shorted
components are encountered, their effects become very noticeable. In
this case, a shorted R#sub[2] would result in almost all the voltage
being dropped across the internal resistance of the battery, with almost
no voltage left over for resistors R#sub[1], R#sub[2], and R#sub[3]:

#image("static/00105.png")

#image("static/10095.png")

Suffice it to say, intentional direct short-circuits across the
terminals of any voltage source is a bad idea. Even if the resulting
high current (heat, flashes, sparks) causes no harm to people nearby,
the voltage source will likely sustain damage, unless it has been
specifically designed to handle short-circuits, which most voltage
sources are not.

Eventually in this book I will lead you through the analysis of circuits
#emph[without the use of any numbers], that is, analyzing the effects of
component failure in a circuit without knowing exactly how many volts
the battery produces, how many ohms of resistance is in each resistor,
etc. This section serves as an introductory step to that kind of
analysis.

Whereas the normal application of Ohm\'s Law and the rules of series and
parallel circuits is performed with numerical quantities
(#emph[\"quantitative\"]), this new kind of analysis without precise
numerical figures is something I like to call #emph[qualitative]
analysis. In other words, we will be analyzing the #emph[qualities] of
the effects in a circuit rather than the precise #emph[quantities]. The
result, for you, will be a much deeper intuitive understanding of
electric circuit operation.

#core.review[
- To determine what would happen in a circuit if a component fails,
  re-draw that circuit with the equivalent resistance of the failed
  component in place and re-calculate all values.

- The ability to intuitively determine what will happen to a circuit
  with any given component fault is a #emph[crucial] skill for any
  electronics troubleshooter to develop. The best way to learn is to
  experiment with circuit calculations and real-life circuits, paying
  close attention to what changes with a fault, what remains the same,
  and #emph[why]!

- A #emph[shorted] component is one whose resistance has dramatically
  decreased.

- An #emph[open] component is one whose resistance has dramatically
  increased. For the record, resistors tend to fail open more often than
  fail shorted, and they almost never fail unless physically or
  electrically overstressed (physically abused or overheated).
]
