#import "../../core/core.typ"

=== Arithmetic with scientific notation

The benefits of scientific notation do not end with ease of writing and
expression of accuracy. Such notation also lends itself well to
mathematical problems of multiplication and division. Let\'s say we
wanted to know how many electrons would flow past a point in a circuit
carrying 1 amp of electric current in 25 seconds. If we know the number
of electrons per second in the circuit (which we do), then all we need
to do is multiply that quantity by the number of seconds (25) to arrive
at an answer of total electrons:

$ 6,250,000,000,000,000,000 "electrons per second" times 25 "seconds" = \
  156,250,000,000,000,000,000 "electrons passing by in 25 seconds" $

Using scientific notation, we can write the problem like this:

$ 6.25 times 10^18 "electrons per second" times 25 "seconds" $

If we take the \"6.25\" and multiply it by 25, we get 156.25. So, the
answer could be written as:

$ 156.25 times 10^18 "electrons" $

However, if we want to hold to standard convention for scientific
notation, we must represent the significant digits as a number between 1
and 10. In this case, we\'d say \"1.5625\" multiplied by some
power-of-ten. To obtain 1.5625 from 156.25, we have to skip the decimal
point two places to the left. To compensate for this without changing
the value of the number, we have to raise our power by two notches (10
to the 20th power instead of 10 to the 18th):

$ 1.5625 times 10^20 "electrons" $

What if we wanted to see how many electrons would pass by in 3,600
seconds (1 hour)? To make our job easier, we could put the time in
scientific notation as well:

$ (6.25 times 10^18 "electrons per second") times (3.6 times 10^3 "seconds") $

To multiply, we must take the two significant sets of digits (6.25 and
3.6) and multiply them together; and we need to take the two
powers-of-ten and multiply them together. Taking 6.25 times 3.6, we get
22.5. Taking $10^18$ times $10^3$, we get $10^21$
(exponents with common base numbers add). So, the answer is:

$ 
  22.5 times 10^21 "electrons" 
  "... or more properly ..."
  2.25 times 10^22 "electrons"
$


To illustrate how division works with scientific notation, we could
figure that last problem \"backwards\" to find out how long it would
take for that many electrons to pass by at a current of 1 amp:

$ (2.25 times 10^22 "electrons") / (6.25 times 10^18 "electrons per second") $

Just as in multiplication, we can handle the significant digits and
powers-of-ten in separate steps (remember that you subtract the
exponents of divided powers-of-ten):

$ (2.25 / 6.25) times (10^22 / 10^18) $

And the answer is: $0.36 times 10^4$, or $3.6 times 10^3$, seconds.
You can see that we arrived at the same quantity of time (3600 seconds).
Now, you may be wondering what the point of all this is when we have
electronic calculators that can handle the math automatically. Well,
back in the days of scientists and engineers using \"slide rule\" analog
computers, these techniques were indispensable. The \"hard\" arithmetic
(dealing with the significant digit figures) would be performed with the
slide rule while the powers-of-ten could be figured without any help at
all, being nothing more than simple addition and subtraction.

#core.review[
  - Significant digits are representative of the real-world accuracy of a
    number.

  - Scientific notation is a \"shorthand\" method to represent very large
    and very small numbers in easily-handled form.

  - When multiplying two numbers in scientific notation, you can multiply
    the two significant digit figures and arrive at a power-of-ten by
    adding exponents.

  - When dividing two numbers in scientific notation, you can divide the
    two significant digit figures and arrive at a power-of-ten by
    subtracting exponents.
]
