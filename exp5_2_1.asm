#not a submission
#not a submission
#not a submission

main:
	addi	$sp,$sp,-8
	sw	$s0,0($sp)
	sw	$s1,-4($sp)
	#s0-dividend s1-divisor s2-A 
	li	$s0,3
	li	$s1,2
	li	$t0,1
	sll	$t0,$t0,31

start:
	and	$t1,$t0,$s0
	sll	$s0,$s0,1
	sll	$s2,$s2,1
	beqz	$t1,continue
	addi	$s2,$s2,1
	
continue:
	sub	$s2,$s2,$s1
	bltz	$s2,quo
	addi	$s0,$s0,1
quo:
	add	$s2,$s2,$s1
	li	$t6,0
	addi	$t5,$t5,1
	slt	$t6,$t5,33
	bnez	$t6,start
	j	$31

#not a submission
#not a submission
#not a submission
