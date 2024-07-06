#import "../../core/core.typ"

=== Voltage divider circuits

Let\'s analyze a simple series circuit, determining the voltage drops
across individual resistors:

#image("static/00106.png")

#image("static/10096.png")

From the given values of individual resistances, we can determine a
total circuit resistance, knowing that resistances add in series:

#image("static/10097.png")

From here, we can use Ohm\'s Law ($I = E/R$) to determine the total
current, which we know will be the same as each resistor current,
currents being equal in all parts of a series circuit:

#image("static/10098.png")

Now, knowing that the circuit current is 2 mA, we can use Ohm\'s Law
($E = I R$) to calculate voltage across each resistor:

#image("static/10099.png")

It should be apparent that the voltage drop across each resistor is
proportional to its resistance, given that the current is the same
through all resistors. Notice how the voltage across R#sub[2] is double
that of the voltage across R#sub[1], just as the resistance of R#sub[2]
is double that of R#sub[1].

If we were to change the total voltage, we would find this
proportionality of voltage drops remains constant:

#image("static/10100.png")

The voltage across R#sub[2] is still exactly twice that of R#sub[1]\'s
drop, despite the fact that the source voltage has changed. The
proportionality of voltage drops (ratio of one to another) is strictly a
function of resistance values.

With a little more observation, it becomes apparent that the voltage
drop across each resistor is also a fixed proportion of the supply
voltage. The voltage across R#sub[1], for example, was 10 volts when the
battery supply was 45 volts. When the battery voltage was increased to
180 volts (4 times as much), the voltage drop across R#sub[1] also
increased by a factor of 4 (from 10 to 40 volts). The #emph[ratio]
between R#sub[1]\'s voltage drop and total voltage, however, did not
change:

$ E_(R 1) / E_"total" = (10 V) / (45 V) = (40 V) / (180 V) = 0.22222 $

Likewise, none of the other voltage drop ratios changed with the
increased supply voltage either:

$ E_(R 2) / E_"total" =  (20 V) / (45 V) = (80 V) / (180 V) = 0.44444 $
$ E_(R 3) / E_"total" =  (15 V) / (45 V) = (60 V) / (180 V) = 0.33333 $


For this reason a series circuit is often called a #emph[voltage
divider] for its ability to proportion -- or divide -- the total voltage
into fractional portions of constant ratio. With a little bit of
algebra, we can derive a formula for determining series resistor voltage
drop given nothing more than total voltage, individual resistance, and
total resistance:

$ "Voltage drop across any resistor" => E_r = I_r R_r $
$ "Current in a series circuit" => I_"total" = E_"total" / R_"total" $
$ ... "Substituting" E_"total" / R_"total" "for" I_r "in the first equation" ... $
$ "Voltage drop across any series resistor" => E_r = E_"total" / R_"total" R_r $
$ ... "or" .. $

#core.boxed_text[
  $ E_r = E_"total" R_r/R_"total" $
]

The ratio of individual resistance to total resistance is the same as
the ratio of individual voltage drop to total supply voltage in a
voltage divider circuit. This is known as the #emph[voltage divider
formula], and it is a short-cut method for determining voltage drop in a
series circuit without going through the current calculation(s) of
Ohm\'s Law.

Using this formula, we can re-analyze the example circuit\'s voltage
drops in fewer steps:

#image("static/00106.png")

$ 
  E_(R 1) &= 45 V (5k Omega)/(22.5k Omega) = 10 V \
  E_(R 2) &= 45 V (10k Omega)/(22.5k Omega) = 20 V \
  E_(R 3) &= 45 V (7.5k Omega)/(22.5k Omega) = 15 V \
$

Voltage dividers find wide application in electric meter circuits, where
specific combinations of series resistors are used to \"divide\" a
voltage into precise proportions as part of a voltage measurement
device.

#image("static/00107.png")

One device frequently used as a voltage-dividing component is the
#emph[potentiometer], which is a resistor with a movable element
positioned by a manual knob or lever. The movable element, typically
called a #emph[wiper], makes contact with a resistive strip of material
(commonly called the #emph[slidewire] if made of resistive metal wire)
at any point selected by the manual control:

#image("static/00108.png")

The wiper contact is the left-facing arrow symbol drawn in the middle of
the vertical resistor element. As it is moved up, it contacts the
resistive strip closer to terminal 1 and further away from terminal 2,
lowering resistance to terminal 1 and raising resistance to terminal 2.
As it is moved down, the opposite effect results. The resistance as
measured between terminals 1 and 2 is constant for any wiper position.

#image("static/00109.png")

Shown here are internal illustrations of two potentiometer types, rotary
and linear:

#image("static/00483.png")

#image("static/00484.png")

Some linear potentiometers are actuated by straight-line motion of a
lever or slide button. Others, like the one depicted in the previous
illustration, are actuated by a turn-screw for fine adjustment ability.
The latter units are sometimes referred to as #emph[trimpots], because
they work well for applications requiring a variable resistance to be
\"trimmed\" to some precise value. It should be noted that not all
linear potentiometers have the same terminal assignments as shown in
this illustration. With some, the wiper terminal is in the middle,
between the two end terminals.

The following photograph shows a real, rotary potentiometer with exposed
wiper and slidewire for easy viewing. The shaft which moves the wiper
has been turned almost fully clockwise so that the wiper is nearly
touching the left terminal end of the slidewire:

#image("static/50031.jpg")

Here is the same potentiometer with the wiper shaft moved almost to the
full-counterclockwise position, so that the wiper is near the other
extreme end of travel:

#image("static/50032.jpg")

If a constant voltage is applied between the outer terminals (across the
length of the slidewire), the wiper position will tap off a fraction of
the applied voltage, measurable between the wiper contact and either of
the other two terminals. The fractional value depends entirely on the
physical position of the wiper:

#image("static/00363.png")

Just like the fixed voltage divider, the potentiometer\'s voltage
#emph[division ratio] is strictly a function of resistance and not of
the magnitude of applied voltage. In other words, if the potentiometer
knob or lever is moved to the 50 percent (exact center) position, the
voltage dropped between wiper and either outside terminal would be
exactly 1/2 of the applied voltage, no matter what that voltage happens
to be, or what the end-to-end resistance of the potentiometer is. In
other words, a potentiometer functions as a variable voltage divider
where the voltage division ratio is set by wiper position.

This application of the potentiometer is a very useful means of
obtaining a variable voltage from a fixed-voltage source such as a
battery. If a circuit you\'re building requires a certain amount of
voltage that is less than the value of an available battery\'s voltage,
you may connect the outer terminals of a potentiometer across that
battery and \"dial up\" whatever voltage you need between the
potentiometer wiper and one of the outer terminals for use in your
circuit:

#image("static/00364.png")

When used in this manner, the name #emph[potentiometer] makes perfect
sense: they #emph[meter] (control) the #emph[potential] (voltage)
applied across them by creating a variable voltage-divider ratio. This
use of the three-terminal potentiometer as a variable voltage divider is
very popular in circuit design.

Shown here are several small potentiometers of the kind commonly used in
consumer electronic equipment and by hobbyists and students in
constructing circuits:

#image("static/50037.jpg")

The smaller units on the very left and very right are designed to plug
into a solderless breadboard or be soldered into a printed circuit
board. The middle units are designed to be mounted on a flat panel with
wires soldered to each of the three terminals.

Here are three more potentiometers, more specialized than the set just
shown:

#image("static/50038.jpg")

The large \"Helipot\" unit is a laboratory potentiometer designed for
quick and easy connection to a circuit. The unit in the lower-left
corner of the photograph is the same type of potentiometer, just without
a case or 10-turn counting dial. Both of these potentiometers are
precision units, using multi-turn helical-track resistance strips and
wiper mechanisms for making small adjustments. The unit on the
lower-right is a panel-mount potentiometer, designed for rough service
in industrial applications.

#core.review[
  - Series circuits proportion, or #emph[divide], the total supply voltage
    among individual voltage drops, the proportions being strictly
    dependent upon resistances: $E_(R_n) = E_"Total" (R_n /
    R_"Total")$

  - A potentiometer is a variable-resistance component with three
    connection points, frequently used as an adjustable voltage divider.
]
  
