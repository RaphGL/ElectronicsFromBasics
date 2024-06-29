#import "../../core/core.typ"

=== Metric prefix conversions

To express a quantity in a different metric prefix that what it was
originally given, all we need to do is skip the decimal point to the
right or to the left as needed. Notice that the metric prefix \"number
line\" in the previous section was laid out from larger to smaller, left
to right. This layout was purposely chosen to make it easier to remember
which direction you need to skip the decimal point for any given
conversion.

Example problem: express 0.000023 amps in terms of microamps.

$ 0.000023 "amps" "(has no prefix, just plain unit of amps)" $

From UNITS to micro on the number line is 6 places (powers of ten) to
the right, so we need to skip the decimal point 6 places to the right:

$ 0.000023 "amps" = 23 ", or" 23 "microamps" (mu A) $

Example problem: express 304,212 volts in terms of kilovolts.

304,212 volts (has no prefix, just plain unit of volts)

From the #emph[(none)] place to #emph[kilo] place on the number line is
3 places (powers of ten) to the left, so we need to skip the decimal
point 3 places to the left:

$ 304,212. = 304.212 "kilovolts" ("kV") $

Example problem: express 50.3 Mega-ohms in terms of milli-ohms.

$ 50.3 "M ohms" ("mega" \= 10^6) $

From mega to milli is 9 places (powers of ten) to the right (from 10 to
the 6th power to 10 to the -3rd power), so we need to skip the decimal
point 9 places to the right:

$ 50.3 "M ohms" = 50,300,000,000 "milli-ohms" (m Omega) $

#core.review[
  - Follow the metric prefix number line to know which direction you skip
    the decimal point for conversion purposes.

  - A number with no decimal point shown has an implicit decimal point to
    the immediate right of the furthest right digit (i.e. for the number
    436 the decimal point is to the right of the 6, as such: 436.)
]
