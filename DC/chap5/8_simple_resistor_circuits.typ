#import "../../core/core.typ"

=== Building simple resistor circuits

In the course of learning about electricity, you will want to construct
your own circuits using resistors and batteries. Some options are
available in this matter of circuit assembly, some easier than others.
In this section, I will explore a couple of fabrication techniques that
will not only help you build the circuits shown in this chapter, but
also more advanced circuits.

If all we wish to construct is a simple single-battery, single-resistor
circuit, we may easily use #emph[alligator clip] jumper wires like this:

#image("00444.png")

Jumper wires with \"alligator\" style spring clips at each end provide a
safe and convenient method of electrically joining components together.

If we wanted to build a simple series circuit with one battery and three
resistors, the same \"point-to-point\" construction technique using
jumper wires could be applied:

#image("00445.png")

This technique, however, proves impractical for circuits much more
complex than this, due to the awkwardness of the jumper wires and the
physical fragility of their connections. A more common method of
temporary construction for the hobbyist is the #emph[solderless
breadboard], a device made of plastic with hundreds of spring-loaded
connection sockets joining the inserted ends of components and/or
22-gauge solid wire pieces. A photograph of a real breadboard is shown
here, followed by an illustration showing a simple series circuit
constructed on one:

#image("50042.jpg")

#image("00446.png")

Underneath each hole in the breadboard face is a metal spring clip,
designed to grasp any inserted wire or component lead. These metal
spring clips are joined underneath the breadboard face, making
connections between inserted leads. The connection pattern joins every
five holes along a vertical column (as shown with the long axis of the
breadboard situated horizontally):

#image("00447.png")

Thus, when a wire or component lead is inserted into a hole on the
breadboard, there are four more holes in that column providing potential
connection points to other wires and/or component leads. The result is
an extremely flexible platform for constructing temporary circuits. For
example, the three-resistor circuit just shown could also be built on a
breadboard like this:

#image("00448.png")

A parallel circuit is also easy to construct on a solderless breadboard:

#image("00449.png")

Breadboards have their limitations, though. First and foremost, they are
intended for #emph[temporary] construction only. If you pick up a
breadboard, turn it upside-down, and shake it, any components plugged
into it are sure to loosen, and may fall out of their respective holes.
Also, breadboards are limited to fairly low-current (less than 1 amp)
circuits. Those spring clips have a small contact area, and thus cannot
support high currents without excessive heating.

For greater permanence, one might wish to choose soldering or
wire-wrapping. These techniques involve fastening the components and
wires to some structure providing a secure mechanical location (such as
a phenolic or fiberglass board with holes drilled in it, much like a
breadboard without the intrinsic spring-clip connections), and then
attaching wires to the secured component leads. Soldering is a form of
low-temperature welding, using a tin/lead or tin/silver alloy that melts
to and electrically bonds copper objects. Wire ends soldered to
component leads or to small, copper ring \"pads\" bonded on the surface
of the circuit board serve to connect the components together. In wire
wrapping, a small-gauge wire is tightly wrapped around component leads
rather than soldered to leads or copper pads, the tension of the wrapped
wire providing a sound mechanical and electrical junction to connect
components together.

An example of a #emph[printed circuit board], or #emph[PCB], intended
for hobbyist use is shown in this photograph:

#image("50039.jpg")

This board appears copper-side-up: the side where all the soldering is
done. Each hole is ringed with a small layer of copper metal for bonding
to the solder. All holes are independent of each other on this
particular board, unlike the holes on a solderless breadboard which are
connected together in groups of five. Printed circuit boards with the
same 5-hole connection pattern as breadboards can be purchased and used
for hobby circuit construction, though.

Production printed circuit boards have #emph[traces] of copper laid down
on the phenolic or fiberglass substrate material to form pre-engineered
connection pathways which function as wires in a circuit. An example of
such a board is shown here, this unit actually a \"power supply\"
circuit designed to take 120 volt alternating current (AC) power from a
household wall socket and transform it into low-voltage direct current
(DC). A resistor appears on this board, the fifth component counting up
from the bottom, located in the middle-right area of the board.

#image("50040.jpg")

A view of this board\'s underside reveals the copper \"traces\"
connecting components together, as well as the silver-colored deposits
of solder bonding the component leads to those traces:

#image("50041.jpg")

A soldered or wire-wrapped circuit is considered permanent: that is, it
is unlikely to fall apart accidently. However, these construction
techniques are sometimes considered #emph[too] permanent. If anyone
wishes to replace a component or change the circuit in any substantial
way, they must invest a fair amount of time undoing the connections.
Also, both soldering and wire-wrapping require specialized tools which
may not be immediately available.

An alternative construction technique used throughout the industrial
world is that of the #emph[terminal strip]. Terminal strips,
alternatively called #emph[barrier strips] or #emph[terminal blocks],
are comprised of a length of nonconducting material with several small
bars of metal embedded within. Each metal bar has at least one machine
screw or other fastener under which a wire or component lead may be
secured. Multiple wires fastened by one screw are made electrically
common to each other, as are wires fastened to multiple screws on the
same bar. The following photograph shows one style of terminal strip,
with a few wires attached.

#image("50033.jpg")

Another, smaller terminal strip is shown in this next photograph. This
type, sometimes referred to as a \"European\" style, has recessed screws
to help prevent accidental shorting between terminals by a screwdriver
or other metal object:

#image("50034.jpg")

In the following illustration, a single-battery, three-resistor circuit
is shown constructed on a terminal strip:

#image("00450.png")

If the terminal strip uses machine screws to hold the component and wire
ends, nothing but a screwdriver is needed to secure new connections or
break old connections. Some terminal strips use spring-loaded clips --
similar to a breadboard\'s except for increased ruggedness -- engaged
and disengaged using a screwdriver as a push tool (no twisting
involved). The electrical connections established by a terminal strip
are quite robust, and are considered suitable for both permanent and
temporary construction.

One of the essential skills for anyone interested in electricity and
electronics is to be able to \"translate\" a schematic diagram to a real
circuit layout where the components may not be oriented the same way.
Schematic diagrams are usually drawn for maximum readability (excepting
those few noteworthy examples sketched to create maximum confusion!),
but practical circuit construction often demands a different component
orientation. Building simple circuits on terminal strips is one way to
develop the spatial-reasoning skill of \"stretching\" wires to make the
same connection paths. Consider the case of a single-battery,
three-resistor parallel circuit constructed on a terminal strip:

#image("00451.png")

Progressing from a nice, neat, schematic diagram to the real circuit --
especially when the resistors to be connected are physically arranged in
a #emph[linear] fashion on the terminal strip -- is not obvious to many,
so I\'ll outline the process step-by-step. First, start with the clean
schematic diagram and all components secured to the terminal strip, with
no connecting wires:

#image("00452.png")

Next, trace the wire connection from one side of the battery to the
first component in the schematic, securing a connecting wire between the
same two points on the real circuit. I find it helpful to over-draw the
schematic\'s wire with another line to indicate what connections I\'ve
made in real life:

#image("00453.png")

Continue this process, wire by wire, until all connections in the
schematic diagram have been accounted for. It might be helpful to regard
common wires in a SPICE-like fashion: make all connections to a common
wire in the circuit as one step, making sure each and every component
with a connection to that wire actually has a connection to that wire
before proceeding to the next. For the next step, I\'ll show how the top
sides of the remaining two resistors are connected together, being
common with the wire secured in the previous step:

#image("00454.png")

With the top sides of all resistors (as shown in the schematic)
connected together, and to the battery\'s positive (+) terminal, all we
have to do now is connect the bottom sides together and to the other
side of the battery:

#image("00455.png")

Typically in industry, all wires are labeled with number tags, and
electrically common wires bear the same tag number, just as they do in a
SPICE simulation. In this case, we could label the wires 1 and 2:

#image("00456.png")

Another industrial convention is to modify the schematic diagram
slightly so as to indicate actual wire connection points on the terminal
strip. This demands a labeling system for the strip itself: a \"TB\"
number (terminal block number) for the strip, followed by another number
representing each metal bar on the strip.

#image("00457.png")

This way, the schematic may be used as a \"map\" to locate points in a
real circuit, regardless of how tangled and complex the connecting
wiring may appear to the eyes. This may seem excessive for the simple,
three-resistor circuit shown here, but such detail is absolutely
necessary for construction and maintenance of large circuits, especially
when those circuits may span a great physical distance, using more than
one terminal strip located in more than one panel or box.

#core.review[
  - A #emph[solderless breadboard] is a device used to quickly assemble
    temporary circuits by plugging wires and components into electrically
    common spring-clips arranged underneath rows of holes in a plastic
    board.

  - #emph[Soldering] is a low-temperature welding process utilizing a
    lead/tin or tin/silver alloy to bond wires and component leads
    together, usually with the components secured to a fiberglass board.

  - #emph[Wire-wrapping] is an alternative to soldering, involving
    small-gauge wire tightly wrapped around component leads rather than a
    welded joint to connect components together.

  - A #emph[terminal strip], also known as a #emph[barrier strip] or
    #emph[terminal block] is another device used to mount components and
    wires to build circuits. Screw terminals or heavy spring clips
    attached to metal bars provide connection points for the wire ends and
    component leads, these metal bars mounted separately to a piece of
    nonconducting material such as plastic, bakelite, or ceramic.
]
