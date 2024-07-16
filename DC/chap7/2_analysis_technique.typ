#import "../../core/core.typ"

=== Analysis technique

The goal of series-parallel resistor circuit analysis is to be able to
determine all voltage drops, currents, and power dissipations in a
circuit. The general strategy to accomplish this goal is as follows:

- *Step 1*: Assess which resistors in a circuit are connected together in
  simple series or simple parallel.
- *Step 2*: Re-draw the circuit, replacing each of those series or
  parallel resistor combinations identified in step 1 with a single,
  equivalent-value resistor. If using a table to manage variables, make
  a new table column for each resistance equivalent.
- *Step 3*: Repeat steps 1 and 2 until the entire circuit is reduced to
  one equivalent resistor.
- *Step 4*: Calculate total current from total voltage and total
  resistance ($I=E/R$).
- *Step 5*: Taking total voltage and total current values, go back to last
  step in the circuit reduction process and insert those values where
  applicable.
- *Step 6*: From known resistances and total voltage / total current
  values from step 5, use Ohm\'s Law to calculate unknown values
  (voltage or current) ($E=I R$ or $I=E/R$).
- *Step 7*: Repeat steps 5 and 6 until all values for voltage and current
  are known in the original circuit configuration. Essentially, you will
  proceed step-by-step from the simplified version of the circuit back
  into its original, complex form, plugging in values of voltage and
  current where appropriate until all values of voltage and current are
  known.
- *Step 8*: Calculate power dissipations from known voltage, current,
  and/or resistance values.

This may sound like an intimidating process, but its much easier
understood through example than through description.

#image("static/00123.png")

#image("static/10126.png")

In the example circuit above, R#sub[1] and R#sub[2] are connected in a
simple parallel arrangement, as are R#sub[3] and R#sub[4]. Having been
identified, these sections need to be converted into equivalent single
resistors, and the circuit re-drawn:

#image("static/00124.png")

The double slash (\/\/) symbols represent \"parallel\" to show that the
equivalent resistor values were calculated using the 1/(1/R) formula.
The 71.429 $Omega$ resistor at the top of the circuit is the equivalent of
R#sub[1] and R#sub[2] in parallel with each other. The 127.27 $Omega$ resistor
at the bottom is the equivalent of R#sub[3] and R#sub[4] in parallel
with each other.

Our table can be expanded to include these resistor equivalents in their
own columns:

#image("static/10127.png")

It should be apparent now that the circuit has been reduced to a simple
series configuration with only two (equivalent) resistances. The final
step in reduction is to add these two resistances to come up with a
total circuit resistance. When we add those two equivalent resistances,
we get a resistance of 198.70 $Omega$. Now, we can re-draw the circuit as a
single equivalent resistance and add the total resistance figure to the
rightmost column of our table. Note that the \"Total\" column has been
relabeled ($R_1 \/\/ R_2 - R_3 \/\/ R_4$) to indicate how
it relates electrically to the other columns of figures. The \"--\"
symbol is used here to represent \"series,\" just as the \"\/\/\" symbol
is used to represent \"parallel.\"

#image("static/00125.png")

#image("static/10128.png")

Now, total circuit current can be determined by applying Ohm\'s Law
($I=E/R$) to the \"Total\" column in the table:

#image("static/10129.png")

Back to our equivalent circuit drawing, our total current value of
120.78 milliamps is shown as the only current here:

#image("static/00126.png")

Now we start to work backwards in our progression of circuit re-drawings
to the original configuration. The next step is to go to the circuit
where $R_1 \/\/ R_2$ and $R_3 \/\/ R_4$ are in series:

#image("static/00127.png")

Since $R_1 \/\/ R_2$ and $R_3 \/\/ R_4$ are in series with
each other, the current through those two sets of equivalent resistances
must be the same. Furthermore, the current through them must be the same
as the total current, so we can fill in our table with the appropriate
current values, simply copying the current figure from the Total column
to the $R_1 \/\/ R_2$ and $R_3 \/\/ R_4$ columns:

#image("static/10130.png")

Now, knowing the current through the equivalent resistors
$R_1 \/\/ R_2$ and $R_3 \/\/ R_4$, we can apply Ohm\'s Law
($E=I R$) to the two right vertical columns to find voltage drops across
them:

#image("static/00128.png")

#image("static/10131.png")

Because we know $R_1 \/\/ R_2$ and $R_3 \/\/ R_4$ are
parallel resistor equivalents, and we know that voltage drops in
parallel circuits are the same, we can transfer the respective voltage
drops to the appropriate columns on the table for those individual
resistors. In other words, we take another step backwards in our drawing
sequence to the original configuration, and complete the table
accordingly:

#image("static/00129.png")

#image("static/10132.png")

Finally, the original section of the table (columns R#sub[1] through
R#sub[4]) is complete with enough values to finish. Applying Ohm\'s Law
to the remaining vertical columns (I\=E/R), we can determine the
currents through R#sub[1], R#sub[2], R#sub[3], and R#sub[4]
individually:

#image("static/10133.png")

Having found all voltage and current values for this circuit, we can
show those values in the schematic diagram as such:

#image("static/00130.png")

As a final check of our work, we can see if the calculated current
values add up as they should to the total. Since R#sub[1] and R#sub[2]
are in parallel, their combined currents should add up to the total of
120.78 mA. Likewise, since R#sub[3] and R#sub[4] are in parallel, their
combined currents should also add up to the total of 120.78 mA. You can
check for yourself to verify that these figures do add up as expected.

A computer simulation can also be used to verify the accuracy of these
figures. The following SPICE analysis will show all resistor voltages
and currents (note the current-sensing vi1, vi2, . . . \"dummy\" voltage
sources in series with each resistor in the netlist, necessary for the
SPICE computer program to track current through each path). These
voltage sources will be set to have values of zero volts each so they
will not affect the circuit in any way.

#image("static/00131.png")

```
series-parallel circuit  
v1 1 0  
vi1 1 2 dc 0    
vi2 1 3 dc 0    
r1 2 4 100      
r2 3 4 250      
vi3 4 5 dc 0    
vi4 4 6 dc 0    
r3 5 0 350      
r4 6 0 200      
.dc v1 24 24 1  
.print dc v(2,4) v(3,4) v(5,0) v(6,0)   
.print dc i(vi1) i(vi2) i(vi3) i(vi4)   
.end    
```

I\'ve annotated SPICE\'s output figures to make them more readable,
denoting which voltage and current figures belong to which resistors.

```
v1            v(2,4)      v(3,4)      v(5)        v(6)        
2.400E+01     8.627E+00   8.627E+00   1.537E+01   1.537E+01
Battery       R1 voltage  R2 voltage  R3 voltage  R4 voltage
voltage
```

```
v1            i(vi1)      i(vi2)      i(vi3)      i(vi4)      
2.400E+01     8.627E-02   3.451E-02   4.392E-02   7.686E-02
Battery       R1 current  R2 current  R3 current  R4 current
voltage 
```

As you can see, all the figures do agree with the our calculated values.

#core.review[
  - To analyze a series-parallel combination circuit, follow these steps:
  - Reduce the original circuit to a single equivalent resistor,
    re-drawing the circuit in each step of reduction as simple series and
    simple parallel parts are reduced to single, equivalent resistors.
  - Solve for total resistance.
  - Solve for total current (I\=E/R).
  - Determine equivalent resistor voltage drops and branch currents one
    stage at a time, working backwards to the original circuit
    configuration again.
]
