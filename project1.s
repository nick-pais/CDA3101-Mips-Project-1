#This program finds the average of the positive 6 elements in an array of 12.

.data
    A: .word -89, 19, 19, -23, -31, -96, 3, 67, 17, 13, -43, 74 # initial array
    printout: .asciiz "Average of positive array elements: " # final printout
.globl main
.text
main:
    la $s4, A #Let $s4 = address of A
    li $s0, 0 # Sum
    li $s1, 0 # average
    li $s2, 0 # counter i
    li $s3, 12 # number of iterations
    li $s7, 6 # divisor for average
loop:
    beq $s2, $s3, average # s2 = 12 stop
    lw $s6,0($s4) # $t5 = whatever is in A[i]
    slt $t4,$s6, 0 # if( A[i] > 0 )
    beq $t4,0,ifstatement # if $t4 = 0 go to ifstatement function
    j incremnter # Jump to incrementer method

ifstatement:
    add $s0, $s0, $s6 # sum = sum + A[i]
    j incremnter # Jump to incrementer method

incremnter:
    addi $s2, $s2, 1 # i++
    addi $s4,$s4,4 # adds 4 spaces on to array counter to move array forward 1
    j loop # Jumps to top of loop

average:
    div $s0, $s7 # sum/6
    mfhi $s8 # remainder moved into $s8
    mflo $s1 # quotient moved into $s1
    j printer # jumps to printer

printer:
    la $a0, printout # set $a0 = to printout statement
    syscall # prints $a0
    li $v0, 1 # prepares console for printing int
    move $a0, $s1 # copies int in $s1 to $a0
    syscall # prints $a0
    li $v0,10 # prepares system for exit
    syscall # calls $a0 to exit
