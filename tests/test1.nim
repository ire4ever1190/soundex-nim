# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest
import soundex

test "Soundex":
  check soundex("gib") == "G100"
  check soundex("give") == "G100"
  check soundex("example") == "E251"
  check soundex("Tymczak") == "T522"
  check soundex("Pfister") == "P236"
  check soundex("honeyman") == "H555"
  check soundex("give") == soundex("gib")
