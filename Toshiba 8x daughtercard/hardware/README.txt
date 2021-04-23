--WARNING--
this pcb does not connect portb latch signals IS/OS which caused a problem on the 1Uz pcm (/IDL was measured using IS as a GPIO in the PBCS register) I fixed it with a bodge wire and some extra CUPL code
this surely will cause problems for other PCMs as the 1UZ can't be the only code base to implement this "feature"
----

SW1 is a 4 bit rotary encoder to select different code bases for the CPU (I kept two copies of the bootloader just in case)

The FT245 is gods gift to retroembedded - bus to usb-serial! Bang in 8 bits and it's sent to your PC that was built in the last decade. Plus it's got MASSIVE FIFOs. USB data logging on your 88MR2? you betcha.
