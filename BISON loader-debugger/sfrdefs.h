_DDRA           .equ 00h                ; Port A i/o config
_DDRB           .equ 01h                ; Port B i/o config
_WDC            .equ 02h                ; watch dog timer
_TIMER3         .equ 03h                ; Timer LSB (bit0~bit2)
_TIMER          .equ 04h                ; Timer MSB (bit11~bit18)
_TIMERL         .equ 05h                ; Timer LSB (bit3~bit10)
_SIDR_SODR      .equ 06h                ; Serial Input/Output Data Register
_SMRC_SIR       .equ 07h                ; Serial Master Register Control
_CPR0           .equ 08h                ; Timer comparison #0 MSB
_CPR0L          .equ 09h                ; Timer comparison #0 LSB
_CPR1           .equ 0Ah                ; Timer comparison #1 MSB
_CPR1L          .equ 0Bh                ; Timer comparison #1 LSB
_CPR2           .equ 0Ch                ; Timer comparison #2 MSB
_CPR2L          .equ 0Dh                ; Timer comparison #2 LSB
_CPR3           .equ 0Eh                ; Timer comparison #3 MSB
_CPR3L          .equ 0Fh                ; Timer comparison #3 LSB
_ASR0P          .equ 10h                ; ASR0 pos edge counter value MSB
_ASR0PL         .equ 11h                ; ASR0 pos edge counter value LSB
_ASR0N          .equ 12h                ; ASR0 neg edge counter value MSB
_ASR0NL         .equ 13h                ; ASR0 neg edge counter value LSB
_ASR1P          .equ 14h                ; ASR1 pos edge counter value MSB
_ASR1PL         .equ 15h                ; ASR1 pos edge counter value LSB
_ASR1N          .equ 16h                ; ASR1 neg edge counter value MSB
_ASR1NL         .equ 17h                ; ASR1 neg edge counter value LSB
_ASR2           .equ 18h                ; ASR2 edge counter value MSB
_ASR2L          .equ 19h                ; ASR2 edge counter value LSB
_ASR3           .equ 1Ah                ; ASR3 edge counter value MSB
_ASR3L          .equ 1Bh                ; ASR3 edge counter value LSB
_OMODE          .equ 1Fh                ; Mode control Register
_PORTA          .equ 20h                ; Port A Data Register
_PORTAL         .equ 21h                ; Port A Latch
_PORTB          .equ 22h                ; Port B Data Register
_PBCS           .equ 23h                ; Port B Control Register
_TAIT           .equ 24h                ; Timer ASR Control
_LDOUT          .equ 25h                ; Latch DOUT
_DOUT           .equ 26h                ; DOUT Data Register
_DOM            .equ 27h                ; DOUT Control Register
_PORTC          .equ 28h                ; Port C Data Register
_PORTD_ASRIN    .equ 29h                ; Port D Data Register / ASR Input Data
_RAMST          .equ 2Ah                ; Built-in RAM status
_SSD            .equ 2Bh                ; Serial Status Data Register
_IRQL           .equ 2Ch                ; Interrupt Request Flag MSB
_IRQLL          .equ 2Dh                ; Interrupt Request Flag LSB
_IMASK          .equ 2Eh                ; Interrupt Request Mask MSB

_FTDATA		.equ 0FF0h
_FTSTAT		.equ 0FF1h