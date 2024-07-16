#import "../../core/core.typ"

=== Re-drawing complex schematics

Typically, complex circuits are not arranged in nice, neat, clean
schematic diagrams for us to follow. They are often drawn in such a way
that makes it difficult to follow which components are in series and
which are in parallel with each other. The purpose of this section is to
show you a method useful for re-drawing circuit schematics in a neat and
orderly fashion. Like the stage-reduction strategy for solving
series-parallel combination circuits, it is a method easier demonstrated
than described.

Let\'s start with the following (convoluted) circuit diagram. Perhaps
this diagram was originally drawn this way by a technician or engineer.
Perhaps it was sketched as someone traced the wires and connections of a
real circuit. In any case, here it is in all its ugliness:

#image("static/00132.png")

With electric circuits and circuit diagrams, the length and routing of
wire connecting components in a circuit matters little. (Actually, in
some AC circuits it becomes critical, and very long wire lengths can
contribute unwanted resistance to both AC and DC circuits, but in most
cases wire length is irrelevant.) What this means for us is that we can
lengthen, shrink, and/or bend connecting wires without affecting the
operation of our circuit.

The strategy I have found easiest to apply is to start by tracing the
current from one terminal of the battery around to the other terminal,
following the loop of components closest to the battery and ignoring all
other wires and components for the time being. While tracing the path of
the loop, mark each resistor with the appropriate polarity for voltage
drop.

In this case, I\'ll begin my tracing of this circuit at the negative
terminal of the battery and finish at the positive terminal, in the same
general direction as the electrons would flow. When tracing this
direction, I will mark each resistor with the polarity of negative on
the entering side and positive on the exiting side, for that is how the
actual polarity will be as electrons (negative in charge) enter and exit
a resistor:

#image("static/00369.png")

#image("static/00133.png")

Any components encountered along this short loop are drawn vertically in
order:

#image("static/00134.png")

Now, proceed to trace any loops of components connected around
components that were just traced. In this case, there\'s a loop around
R#sub[1] formed by R#sub[2], and another loop around R#sub[3] formed by
R#sub[4]:

#image("static/00135.png")

Tracing those loops, I draw R#sub[2] and R#sub[4] in parallel with
R#sub[1] and R#sub[3] (respectively) on the vertical diagram. Noting the
polarity of voltage drops across R#sub[3] and R#sub[1], I mark R#sub[4]
and R#sub[2] likewise:

#image("static/00136.png")

Now we have a circuit that is very easily understood and analyzed. In
this case, it is identical to the four-resistor series-parallel
configuration we examined earlier in the chapter.

Let\'s look at another example, even uglier than the one before:

#image("static/00137.png")

The first loop I\'ll trace is from the negative (-) side of the battery,
through R#sub[6], through R#sub[1], and back to the positive (+) end of
the battery:

#image("static/00138.png")

Re-drawing vertically and keeping track of voltage drop polarities along
the way, our equivalent circuit starts out looking like this:

#image("static/00139.png")

Next, we can proceed to follow the next loop around one of the traced
resistors (R#sub[6]), in this case, the loop formed by R#sub[5] and
R#sub[7]. As before, we start at the negative end of R#sub[6] and
proceed to the positive end of R#sub[6], marking voltage drop polarities
across R#sub[7] and R#sub[5] as we go:

#image("static/00140.png")

Now we add the R#sub[5]--R#sub[7] loop to the vertical drawing. Notice
how the voltage drop polarities across R#sub[7] and R#sub[5] correspond
with that of R#sub[6], and how this is the same as what we found tracing
R#sub[7] and R#sub[5] in the original circuit:

#image("static/00141.png")

We repeat the process again, identifying and tracing another loop around
an already-traced resistor. In this case, the R#sub[3]--R#sub[4] loop
around R#sub[5] looks like a good loop to trace next:

#image("static/00142.png")

Adding the R#sub[3]--R#sub[4] loop to the vertical drawing, marking the
correct polarities as well:

#image("static/00143.png")

With only one remaining resistor left to trace, then next step is
obvious: trace the loop formed by R#sub[2] around R#sub[3]:

#image("static/00144.png")

Adding R#sub[2] to the vertical drawing, and we\'re finished! The result
is a diagram that\'s very easy to understand compared to the original:

#image("static/00145.png")

This simplified layout greatly eases the task of determining where to
start and how to proceed in reducing the circuit down to a single
equivalent (total) resistance. Notice how the circuit has been re-drawn,
all we have to do is start from the right-hand side and work our way
left, reducing simple-series and simple-parallel resistor combinations
one group at a time until we\'re done.

In this particular case, we would start with the simple parallel
combination of R#sub[2] and R#sub[3], reducing it to a single
resistance. Then, we would take that equivalent resistance
($R_2 \/\/ R_3$) and the one in series with it (R#sub[4]),
reducing them to another equivalent resistance
($R_2 \/\/ R_3 - R_4$). Next, we would proceed to calculate
the parallel equivalent of that resistance
($R_2 \/\/ R_3 - R_4$) with R#sub[5], then in series with
R#sub[7], then in parallel with R#sub[6], then in series with R#sub[1]
to give us a grand total resistance for the circuit as a whole.

From there we could calculate total current from total voltage and total
resistance ($I=E/R$), then \"expand\" the circuit back into its original
form one stage at a time, distributing the appropriate values of voltage
and current to the resistances as we go.

#core.review[
  - Wires in diagrams and in real circuits can be lengthened, shortened,
    and/or moved without affecting circuit operation.
  - To simplify a convoluted circuit schematic, follow these steps:
  - Trace current from one side of the battery to the other, following any
    single path (\"loop\") to the battery. Sometimes it works better to
    start with the loop containing the most components, but regardless of
    the path taken the result will be accurate. Mark polarity of voltage
    drops across each resistor as you trace the loop. Draw those
    components you encounter along this loop in a vertical schematic.
  - Mark traced components in the original diagram and trace remaining
    loops of components in the circuit. Use polarity marks across traced
    components as guides for what connects where. Document new components
    in loops on the vertical re-draw schematic as well.
  - Repeat last step as often as needed until all components in original
    diagram have been traced.
]
