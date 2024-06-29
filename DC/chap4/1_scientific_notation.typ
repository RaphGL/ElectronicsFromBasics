=== Scientific notation

In many disciplines of science and engineering, very large and very
small numerical quantities must be managed. Some of these quantities are
mind-boggling in their size, either extremely small or extremely large.
Take for example the mass of a proton, one of the constituent particles
of an atom\'s nucleus:

$ "Proton mass" = 0.00000000000000000000000167 "grams" $

Or, consider the number of electrons passing by a point in a circuit
every second with a steady electric current of 1 amp:

$ 1 "amp" = 6,250,000,000,000,000,000 "electrons per second" $

A lot of zeros, isn\'t it? Obviously, it can get quite confusing to have
to handle so many zero digits in numbers such as this, even with the
help of calculators and computers.

Take note of those two numbers and of the relative sparsity of non-zero
digits in them. For the mass of the proton, all we have is a \"167\"
preceded by 23 zeros before the decimal point. For the number of
electrons per second in 1 amp, we have \"625\" followed by 16 zeros. We
call the span of non-zero digits (from first to last), plus any zero
digits #emph[not] merely used for placeholding, the \"significant
digits\" of any number.

The significant digits in a real-world measurement are typically
reflective of the accuracy of that measurement. For example, if we were
to say that a car weighs 3,000 pounds, we probably don\'t mean that the
car in question weighs #emph[exactly] 3,000 pounds, but that we\'ve
rounded its weight to a value more convenient to say and remember. That
rounded figure of 3,000 has only one significant digit: the \"3\" in
front -- the zeros merely serve as placeholders. However, if we were to
say that the car weighed 3,005 pounds, the fact that the weight is not
rounded to the nearest thousand pounds tells us that the two zeros in
the middle aren\'t just placeholders, but that all four digits of the
number \"3,005\" are significant to its representative accuracy. Thus,
the number \"3,005\" is said to have #emph[four] significant figures.

In like manner, numbers with many zero digits are not necessarily
representative of a real-world quantity all the way to the decimal
point. When this is known to be the case, such a number can be written
in a kind of mathematical \"shorthand\" to make it easier to deal with.
This \"shorthand\" is called #emph[scientific notation].

With scientific notation, a number is written by representing its
significant digits as a quantity between 1 and 10 (or -1 and -10, for
negative numbers), and the \"placeholder\" zeros are accounted for by a
power-of-ten multiplier. For example:

$ 
  1 "amp" &= 6,250,000,000,000,000,000 "electrons per second" \
  &"... can be expressed as ..." \
  1 "amp" &= 6.25 x 10^18 "electrons per second" 
$

10 to the 18th power ($10^18$) means 10 multiplied by itself 18
times, or a \"1\" followed by 18 zeros. Multiplied by 6.25, it looks
like \"625\" followed by 16 zeros (take 6.25 and skip the decimal point
18 places to the right). The advantages of scientific notation are
obvious: the number isn\'t as unwieldy when written on paper, and the
significant digits are plain to identify.

But what about very small numbers, like the mass of the proton in grams?
We can still use scientific notation, except with a negative
power-of-ten instead of a positive one, to shift the decimal point to
the left instead of to the right:

$ 
  "Proton mass" &= 0.00000000000000000000000167 "grams" \ 
  &"... can be expressed as ..." \
  "Proton mass" &= 1.67 x 10^-24 "grams"
$

10 to the -24th power ($10^-24$) means the inverse ($1/x$) of 10
multiplied by itself 24 times, or a \"1\" preceded by a decimal point
and 23 zeros. Multiplied by 1.67, it looks like \"167\" preceded by a
decimal point and 23 zeros. Just as in the case with the very large
number, it is a lot easier for a human being to deal with this
\"shorthand\" notation. As with the prior case, the significant digits
in this quantity are clearly expressed.

Because the significant digits are represented \"on their own,\" away
from the power-of-ten multiplier, it is easy to show a level of
precision even when the number looks round. Taking our 3,000 pound car
example, we could express the rounded number of 3,000 in scientific
notation as such:

$ "car weight" = 3 times 10^3 "pounds" $

If the car actually weighed 3,005 pounds (accurate to the nearest pound)
and we wanted to be able to express that full accuracy of measurement,
the scientific notation figure could be written like this:

$ "car weight" = 3.005 times 10^3 "pounds" $

However, what if the car actually did weigh 3,000 pounds, exactly (to
the nearest pound)? If we were to write its weight in \"normal\" form
(3,000 lbs), it wouldn\'t necessarily be clear that this number was
indeed accurate to the nearest pound and not just rounded to the nearest
thousand pounds, or to the nearest hundred pounds, or to the nearest ten
pounds. Scientific notation, on the other hand, allows us to show that
all four digits are significant with no misunderstanding:

$ "car weight" = 3.000 times 10^3 "pounds" $

Since there would be no point in adding extra zeros to the right of the
decimal point (placeholding zeros being unnecessary with scientific
notation), we know those zeros #emph[must] be significant to the
precision of the figure.
