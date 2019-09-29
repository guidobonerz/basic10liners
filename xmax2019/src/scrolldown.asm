*=$c000

ldx #$0
lda $720,x
sta $748,x
lda $6f8,x
sta $720,x
lda $6d0,x
sta $6f8,x
lda $6a8,x
sta $6d0,x
lda $680,x
sta $6a8,x
lda $658,x
sta $680,x
lda $630,x
sta $658,x
lda $608,x
sta $630,x

lda $db20,x
sta $db48,x
lda $daf8,x
sta $db20,x
lda $dad0,x
sta $daf8,x
lda $daa8,x
sta $dad0,x
lda $da80,x
sta $daa8,x
lda $da58,x
sta $da80,x
lda $da30,x
sta $da58,x
lda $da08,x
sta $da30,x
rts
