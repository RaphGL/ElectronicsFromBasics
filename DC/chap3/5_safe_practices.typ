#import "../../core/core.typ"

=== Safe practices
If at all possible, shut off the power to a circuit before performing
any work on it. You must secure all sources of harmful energy before a
system may be considered safe to work on. In industry, securing a
circuit, device, or system in this condition is commonly known as
placing it in a #emph[Zero Energy State]. The focus of this lesson is,
of course, electrical safety. However, many of these principles apply to
non-electrical systems as well.

Securing something in a Zero Energy State means ridding it of any sort
of potential or stored energy, including but not limited to:

- Dangerous voltage
- Spring pressure
- Hydraulic (liquid) pressure
- Pneumatic (air) pressure
- Suspended weight
- Chemical energy (flammable or otherwise reactive substances)
- Nuclear energy (radioactive or fissile substances)

Voltage by its very nature is a manifestation of potential energy. In
the first chapter I even used elevated liquid as an analogy for the
potential energy of voltage, having the capacity (potential) to produce
current (flow), but not necessarily realizing that potential until a
suitable path for flow has been established, and resistance to flow is
overcome. A pair of wires with high voltage between them do not look or
sound dangerous even though they harbor enough potential energy between
them to push deadly amounts of current through your body. Even though
that voltage isn\'t presently doing anything, it has the potential to,
and that potential must be neutralized before it is safe to physically
contact those wires.

All properly designed circuits have \"disconnect\" switch mechanisms for
securing voltage from a circuit. Sometimes these \"disconnects\" serve a
dual purpose of automatically opening under excessive current
conditions, in which case we call them \"circuit breakers.\" Other
times, the disconnecting switches are strictly manually-operated devices
with no automatic function. In either case, they are there for your
protection and must be used properly. Please note that the disconnect
device should be separate from the regular switch used to turn the
device on and off. It is a safety switch, to be used only for securing
the system in a Zero Energy State:

#image("static/00064.png")

With the disconnect switch in the \"open\" position as shown (no
continuity), the circuit is broken and no current will exist. There will
be zero voltage across the load, and the full voltage of the source will
be dropped across the open contacts of the disconnect switch. Note how
there is no need for a disconnect switch in the lower conductor of the
circuit. Because that side of the circuit is firmly connected to the
earth (ground), it is electrically common with the earth and is best
left that way. For maximum safety of personnel working on the load of
this circuit, a temporary ground connection could be established on the
top side of the load, to ensure that no voltage could ever be dropped
across the load:

#image("static/00065.png")

With the temporary ground connection in place, both sides of the load
wiring are connected to ground, securing a Zero Energy State at the
load.

Since a ground connection made on both sides of the load is electrically
equivalent to short-circuiting across the load with a wire, that is
another way of accomplishing the same goal of maximum safety:

#image("static/00066.png")

Either way, both sides of the load will be electrically common to the
earth, allowing for no voltage (potential energy) between either side of
the load and the ground people stand on. This technique of temporarily
grounding conductors in a de-energized power system is very common in
maintenance work performed on high voltage power distribution systems.

A further benefit of this precaution is protection against the
possibility of the disconnect switch being closed (turned \"on\" so that
circuit continuity is established) while people are still contacting the
load. The temporary wire connected across the load would create a
short-circuit when the disconnect switch was closed, immediately
tripping any overcurrent protection devices (circuit breakers or fuses)
in the circuit, which would shut the power off again. Damage may very
well be sustained by the disconnect switch if this were to happen, but
the workers at the load are kept safe.

It would be good to mention at this point that overcurrent devices are
not intended to provide protection against electric shock. Rather, they
exist solely to protect conductors from overheating due to excessive
currents. The temporary shorting wires just described would indeed cause
any overcurrent devices in the circuit to \"trip\" if the disconnect
switch were to be closed, but realize that electric shock protection is
not the intended function of those devices. Their primary function would
merely be leveraged for the purpose of worker protection with the
shorting wire in place.

Since it is obviously important to be able to secure any disconnecting
devices in the open (off) position and make sure they stay that way
while work is being done on the circuit, there is need for a structured
safety system to be put into place. Such a system is commonly used in
industry and it is called #emph[Lock-out/Tag-out].

A lock-out/tag-out procedure works like this: all individuals working on
a secured circuit have their own personal padlock or combination lock
which they set on the control lever of a disconnect device prior to
working on the system. Additionally, they must fill out and sign a tag
which they hang from their lock describing the nature and duration of
the work they intend to perform on the system. If there are multiple
sources of energy to be \"locked out\" (multiple disconnects, both
electrical and mechanical energy sources to be secured, etc.), the
worker must use as many of his or her locks as necessary to secure power
from the system before work begins. This way, the system is maintained
in a Zero Energy State until every last lock is removed from all the
disconnect and shutoff devices, and that means every last worker gives
consent by removing their own personal locks. If the decision is made to
re-energize the system and one person\'s lock(s) still remain in place
after everyone present removes theirs, the tag(s) will show who that
person is and what it is they\'re doing.

Even with a good lock-out/tag-out safety program in place, there is
still need for diligence and common-sense precaution. This is especially
true in industrial settings where a multitude of people may be working
on a device or system at once. Some of those people might not know about
proper lock-out/tag-out procedure, or might know about it but are too
complacent to follow it. Don\'t assume that everyone has followed the
safety rules!

After an electrical system has been locked out and tagged with your own
personal lock, you must then double-check to see if the voltage really
has been secured in a zero state. One way to check is to see if the
machine (or whatever it is that\'s being worked on) will start up if the
#emph[Start] switch or button is actuated. If it starts, then you know
you haven\'t successfully secured the electrical power from it.

Additionally, you should #emph[always] check for the presence of
dangerous voltage with a measuring device before actually touching any
conductors in the circuit. To be safest, you should follow this
procedure of checking, using, and then checking your meter:

- Check to see that your meter indicates properly on a known source of
  voltage.
- Use your meter to test the locked-out circuit for any dangerous
  voltage.
- Check your meter once more on a known source of voltage to see that it
  still indicates as it should.

While this may seem excessive or even paranoid, it is a proven technique
for preventing electrical shock. I once had a meter fail to indicate
voltage when it should have while checking a circuit to see if it was
\"dead.\" Had I not used other means to check for the presence of
voltage, I might not be alive today to write this. There\'s always the
chance that your voltage meter will be defective just when you need it
to check for a dangerous condition. Following these steps will help
ensure that you\'re never misled into a deadly situation by a broken
meter.

Finally, the electrical worker will arrive at a point in the safety
check procedure where it is deemed safe to actually touch the
conductor(s). Bear in mind that after all of the precautionary steps
have taken, it is still possible (although very unlikely) that a
dangerous voltage may be present. One final precautionary measure to
take at this point is to make momentary contact with the conductor(s)
#emph[with the back of the hand] before grasping it or a metal tool in
contact with it. Why? If, for some reason there is still voltage present
between that conductor and earth ground, finger motion from the shock
reaction (clenching into a fist) will #emph[break] contact with the
conductor. Please note that this is absolutely the #emph[last] step that
any electrical worker should ever take before beginning work on a power
system, and should #emph[never] be used as an alternative method of
checking for dangerous voltage. If you ever have reason to doubt the
trustworthiness of your meter, use another meter to obtain a \"second
opinion.\"

#core.review[
  - #emph[Zero Energy State]: When a circuit, device, or system has been
    secured so that no potential energy exists to harm someone working on
    it.

  - Disconnect switch devices must be present in a properly designed
    electrical system to allow for convenient readiness of a Zero Energy
    State.

  - Temporary grounding or shorting wires may be connected to a load being
    serviced for extra protection to personnel working on that load.

  - #emph[Lock-out/Tag-out] works like this: when working on a system in a
    Zero Energy State, the worker places a personal padlock or combination
    lock on every energy disconnect device relevant to his or her task on
    that system. Also, a tag is hung on every one of those locks
    describing the nature and duration of the work to be done, and who is
    doing it.

  - Always verify that a circuit has been secured in a Zero Energy State
    with test equipment after \"locking it out.\" Be sure to test your
    meter before and after checking the circuit to verify that it is
    working properly.

  - When the time comes to actually make contact with the conductor(s) of
    a supposedly dead power system, do so first with the back of one hand,
    so that if a shock should occur, the muscle reaction will pull the
    fingers away from the conductor.
]
