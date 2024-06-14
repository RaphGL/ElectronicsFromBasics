=== An analogy for Ohm's Law

Ohm's Law also makes intuitive sense if you apply it to the water-and-pipe analogy. If we have a water pump that exerts pressure (voltage) to push water around a "circuit" (current) through a restriction (resistance), we can model how the three variables interrelate. If the resistance to water flow stays the same and the pump pressure increases, the flow rate must also increase. 

#table(
  stroke: none,
  columns: (auto, auto),
  align: left,
  [*Pressure* = increase], [*Voltage* = increase],
  [*Flow rate* = increase], [*Current* = increase],
  [*Resistance* = same], [*Resistance* = same],
)

$ E^arrow.t = I^arrow.t R $

If the pressure stays the same and the resistance increases (making it more difficult for the water to flow), then the flow rate must decrease: 

#table(
  stroke: none,
  columns: (auto, auto),
  align: left,
  [*Pressure* = same], [*Voltage* = same],
  [*Flow rate* = decrease], [*Current* = decrease],
  [*Resistance* = decrease], [*Resistance* = increase],
)

If the flow rate were to stay the same while the resistance to flow decreased, the required pressure from the pump would necessarily decrease: 

#table(
  stroke: none,
  columns: (auto, auto),
  align: left,
  [*Pressure* = decrease], [*Voltage* = decrease],
  [*Flow rate* = same], [*Current* = same],
  [*Resistance* = decrease], [*Resistance* = increase],
)

$ E_arrow.b = I R_arrow.b $

As odd as it may seem, the actual mathematical relationship between pressure, flow, and resistance is actually more complex for fluids like water than it is for electrons. If you pursue further studies in physics, you will discover this for yourself. Thankfully for the electronics student, the mathematics of Ohm's Law is very straightforward and simple. 

- With resistance steady, current follows voltage (an increase in voltage means an increase in current, and vice versa).
- With voltage steady, changes in current and resistance are opposite (an increase in current means a decrease in resistance, and vice versa).
- With current steady, voltage follows resistance (an increase in resistance means an increase in voltage).
