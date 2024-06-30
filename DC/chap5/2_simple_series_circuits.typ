#import "../../core/core.typ"
// todo: change the tables for a better formatted one

=== Simple series circuits

Let\'s start with a series circuit consisting of three resistors and a
single battery:

#image("static/00087.png")

The first principle to understand about series circuits is that the
amount of current is the same through any component in the circuit. This
is because there is only one path for electrons to flow in a series
circuit, and because free electrons flow through conductors like marbles
in a tube, the rate of flow (marble speed) at any point in the circuit
(tube) at any specific point in time must be equal.

From the way that the 9 volt battery is arranged, we can tell that the
electrons in this circuit will flow in a counter-clockwise direction,
from point 4 to 3 to 2 to 1 and back to 4. However, we have one source
of voltage and three resistances. How do we use Ohm\'s Law here?

An important caveat to Ohm\'s Law is that all quantities (voltage,
current, resistance, and power) must relate to each other in terms of
the same two points in a circuit. For instance, with a single-battery,
single-resistor circuit, we could easily calculate any quantity because
they all applied to the same two points in the circuit:

#image("static/00088.png")

$ 
  I &= E / R \
  I &= (9 "volts") / (3 k Omega) = 3m"A" 
$

Since points 1 and 2 are connected together with wire of negligible
resistance, as are points 3 and 4, we can say that point 1 is
electrically common to point 2, and that point 3 is electrically common
to point 4. Since we know we have 9 volts of electromotive force between
points 1 and 4 (directly across the battery), and since point 2 is
common to point 1 and point 3 common to point 4, we must also have 9
volts between points 2 and 3 (directly across the resistor). Therefore,
we can apply Ohm\'s Law ($I = E/R$) to the current through the resistor,
because we know the voltage (E) across the resistor and the resistance
(R) of that resistor. All terms (E, I, R) apply to the same two points
in the circuit, to that same resistor, so we can use the Ohm\'s Law
formula with no reservation.

However, in circuits containing more than one resistor, we must be
careful in how we apply Ohm\'s Law. In the three-resistor example
circuit below, we know that we have 9 volts between points 1 and 4,
which is the amount of electromotive force trying to push electrons
through the series combination of R#sub[1], R#sub[2], and R#sub[3].
However, we cannot take the value of 9 volts and divide it by 3k, 10k or
5k $Omega$ to try to find a current value, because we don\'t know how much
voltage is across any one of those resistors, individually.

#image("static/00087.png")

The figure of 9 volts is a #emph[total] quantity for the whole circuit,
whereas the figures of 3k, 10k, and 5k $Omega$ are #emph[individual]
quantities for individual resistors. If we were to plug a figure for
total voltage into an Ohm\'s Law equation with a figure for individual
resistance, the result would not relate accurately to any quantity in
the real circuit.

For R#sub[1], Ohm\'s Law will relate the amount of voltage across
R#sub[1] with the current through R#sub[1], given R#sub[1]\'s
resistance, 3k$Omega$:

$ I_(R 1) = E_(R 1) / (3 k Omega) $
$ E_(R 1) = I_(R 1) (3 k Omega) $

But, since we don\'t know the voltage across R#sub[1] (only the total
voltage supplied by the battery across the three-resistor series
combination) and we don\'t know the current through R#sub[1], we can\'t
do any calculations with either formula. The same goes for R#sub[2] and
R#sub[3]: we can apply the Ohm\'s Law equations if and only if all terms
are representative of their respective quantities between the same two
points in the circuit.

So what can we do? We know the voltage of the source (9 volts) applied
across the series combination of R#sub[1], R#sub[2], and R#sub[3], and
we know the resistances of each resistor, but since those quantities
aren\'t in the same context, we can\'t use Ohm\'s Law to determine the
circuit current. If only we knew what the #emph[total] resistance was
for the circuit: then we could calculate #emph[total] current with our
figure for #emph[total] voltage ($I = E / R $).

This brings us to the second principle of series circuits: the total
resistance of any series circuit is equal to the sum of the individual
resistances. This should make intuitive sense: the more resistors in
series that the electrons must flow through, the more difficult it will
be for those electrons to flow. In the example problem, we had a 3 k$Omega$,
10 k$Omega$, and 5 k$Omega$ resistor in series, giving us a total resistance of 18
k$Omega$:

$ 
  R_"total" &= R_1 + R_2 + R_3 \
  R_"total" &= 3k Omega + 10k Omega + 5k Omega \
  R_"total" &= 18k Omega
$

In essence, we\'ve calculated the equivalent resistance of R#sub[1],
R#sub[2], and R#sub[3] combined. Knowing this, we could re-draw the
circuit with a single equivalent resistor representing the series
combination of R#sub[1], R#sub[2], and R#sub[3]:

#image("static/00089.png")

Now we have all the necessary information to calculate circuit current,
because we have the voltage between points 1 and 4 (9 volts) and the
resistance between points 1 and 4 (18 k$Omega$):

$
  I_"total" &= E_"total" / R_"total" \
  I_"total" &= (9 "volts") / (18k Omega) = 500 mu A
$

Knowing that current is equal through all components of a series circuit
(and we just determined the current through the battery), we can go back
to our original circuit schematic and note the current through each
component:

#image("static/00090.png")

Now that we know the amount of current through each resistor, we can use
Ohm\'s Law to determine the voltage drop across each one (applying
Ohm\'s Law in its proper context):

$
  E_(R 1) &= I_(R 1) R_1 \
  E_(R 1) &= (500 mu A) (3k Omega) = 1.5 V 
$
\
$
  E_(R 2) &= I_(R 2) R_2 \
  E_(R 2) &= (500 mu A) (10k Omega) = 5 V 
$   
\
$
  E_(R 3) &= I_(R 3) R_3 \
  E_(R 3) &= (500 mu A) (5k Omega) = 2.5 V 
$

Notice the voltage drops across each resistor, and how the sum of the
voltage drops (1.5 + 5 + 2.5) is equal to the battery (supply) voltage:
9 volts. This is the third principle of series circuits: that the supply
voltage is equal to the sum of the individual voltage drops.

However, the method we just used to analyze this simple series circuit
can be streamlined for better understanding. By using a table to list
all voltages, currents, and resistances in the circuit, it becomes very
easy to see which of those quantities can be properly related in any
Ohm\'s Law equation:

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  table.header([], [R1], [R2], [R3], [Total], []),
  [E], [], [], [], [], [Volts],
  [I], [], [], [], [], [Amps],
  [R], [], [], [], [], [Ohms],
)

The rule with such a table is to apply Ohm\'s Law only to the values
within each vertical column. For instance, E#sub[R1] only with I#sub[R1]
and R#sub[1]; E#sub[R2] only with I#sub[R2] and R#sub[2]; etc. You begin
your analysis by filling in those elements of the table that are given
to you from the beginning:

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  table.header([], [R1], [R2], [R3], [Total], []),
  [E], [], [], [], [], [Volts],
  [I], [], [], [], [], [Amps],
  [R], [3k], [10k], [5k], [], [Ohms],
)

As you can see from the arrangement of the data, we can\'t apply the 9
volts of E#sub[T] (total voltage) to any of the resistances (R#sub[1],
R#sub[2], or R#sub[3]) in any Ohm\'s Law formula because they\'re in
different columns. The 9 volts of battery voltage is #emph[not] applied
directly across R#sub[1], R#sub[2], or R#sub[3]. However, we can use our
\"rules\" of series circuits to fill in blank spots on a horizontal row.
In this case, we can use the series rule of resistances to determine a
total resistance from the #emph[sum] of individual resistances:

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  table.header([], [R1], [R2], [R3], [Total], []),
  [E], [], [], [], [], [Volts],
  [I], [], [], [], [], [Amps],
  [R], [3k], [10k], [5k], [*18k*], [Ohms],
)

$ 
  "using the rule of series circuits we get:" \
  R_T = R_1 + R_2 + R_3 = 18k 
$

Now, with a value for total resistance inserted into the rightmost
(\"Total\") column, we can apply Ohm\'s Law of $I = E / R$ to total voltage
and total resistance to arrive at a total current of 500 $mu$A:

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  table.header([], [R1], [R2], [R3], [Total], []),
  [E], [], [], [], [9], [Volts],
  [I], [], [], [], [$500 mu$], [Amps],
  [R], [3k], [10k], [5k], [*18k*], [Ohms],
)

Then, knowing that the current is shared equally by all components of a
series circuit (another \"rule\" of series circuits), we can fill in the
currents for each resistor from the current figure just calculated:

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  table.header([], [R1], [R2], [R3], [Total], []),
  [E], [], [], [], [9], [Volts],
  [I], [$500 mu$], [$500 mu$], [$500 mu$], [$500 mu$], [Amps],
  [R], [3k], [10k], [5k], [*18k*], [Ohms],
)

$ 
  "using the rule of series we get:" \
  I_T = I_1 = I_2 = I_3
$

Finally, we can use Ohm\'s Law to determine the voltage drop across each
resistor, one column at a time:

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  table.header([], [R1], [R2], [R3], [Total], []),
  [E], [1.5], [5], [2.5], [9], [Volts],
  [I], [$500 mu$], [$500 mu$], [$500 mu$], [$500 mu$], [Amps],
  [R], [3k], [10k], [5k], [*18k*], [Ohms],
)

Just for fun, we can use a computer to analyze this very same circuit
automatically. It will be a good way to verify our calculations and also
become more familiar with computer analysis. First, we have to describe
the circuit to the computer in a format recognizable by the software.
The SPICE program we\'ll be using requires that all electrically unique
points in a circuit be numbered, and component placement is understood
by which of those numbered points, or \"nodes,\" they share. For
clarity, I numbered the four corners of our example circuit 1 through 4.
SPICE, however, demands that there be a node zero somewhere in the
circuit, so I\'ll re-draw the circuit, changing the numbering scheme
slightly:

#image("static/00091.png")

All I\'ve done here is re-numbered the lower-left corner of the circuit
0 instead of 4. Now, I can enter several lines of text into a computer
file describing the circuit in terms SPICE will understand, complete
with a couple of extra lines of code directing the program to display
voltage and current data for our viewing pleasure. This computer file is
known as the #emph[netlist] in SPICE terminology:

```
series circuit
v1 1 0
r1 1 2 3k
r2 2 3 10k
r3 3 0 5k
.dc v1 9 9 1
.print dc v(1,2) v(2,3) v(3,0)
.end
```

Now, all I have to do is run the SPICE program to process the netlist
and output the results:

```
v1            v(1,2)      v(2,3)      v(3)        i(v1)       
9.000E+00     1.500E+00   5.000E+00   2.500E+00  -5.000E-04
```

This printout is telling us the battery voltage is 9 volts, and the
voltage drops across R#sub[1], R#sub[2], and R#sub[3] are 1.5 volts, 5
volts, and 2.5 volts, respectively. Voltage drops across any component
in SPICE are referenced by the node numbers the component lies between,
so v(1,2) is referencing the voltage between nodes 1 and 2 in the
circuit, which are the points between which R#sub[1] is located. The
order of node numbers is important: when SPICE outputs a figure for
v(1,2), it regards the polarity the same way as if we were holding a
voltmeter with the red test lead on node 1 and the black test lead on
node 2.

We also have a display showing current (albeit with a negative value) at
0.5 milliamps, or 500 microamps. So our mathematical analysis has been
vindicated by the computer. This figure appears as a negative number in
the SPICE analysis, due to a quirk in the way SPICE handles current
calculations.

In summary, a series circuit is defined as having only one path for
electrons to flow. From this definition, three rules of series circuits
follow: all components share the same current; resistances add to equal
a larger, total resistance; and voltage drops add to equal a larger,
total voltage. All of these rules find root in the definition of a
series circuit. If you understand that definition fully, then the rules
are nothing more than footnotes to the definition.

#core.review[
  - Components in a series circuit share the same current: 
    $ I_"Total" = I_1 = I_2 = ... = I_n $

  - Total resistance in a series circuit is equal to the sum of the
    individual resistances: 
    $ R_"Total" = R_1 + R_2 + ... + R_n $

  - Total voltage in a series circuit is equal to the sum of the
    individual voltage drops: 
    $ E_"Total" = E_1 + E_2 + ... + E_n$
]
