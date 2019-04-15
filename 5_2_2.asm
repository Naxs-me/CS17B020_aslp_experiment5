main:
	li	$s0,-8
	li	$s1,3
	li	$t7,-1
	slt	$t0,$s0,$0
	slt	$t1,$s1,$0
	beq	$t0,1,num
cont_num:
	beq	$t1,1,den
cont_den:
	
	move	$t2,$s0
quo:
	add	$t5,$0,$0#s0 remainder	$s2 quo 
	sub	$t4,$s0,$s1
	slt	$t5,$0,$t4
	add	$s2,$s2,$t5
	add	$s0,$t4,$0
	beq	$t5,1,quo
r:
	add	$s0,$s0,$s1
	beq	$t0,0,t0_pos
	beq	$t0,1,t0_neg
t0_pos:
	beq	$t1,1,t1_neg_1
	j	$ra
t1_neg_1:
	mul	$s2,$s2,$t7
	j	$ra
	
t0_neg:
	beq	$t1,1,t1_neg_2
	mul	$s2,$s2,$t7
	mul	$s0,$s0,$t7
	j	$ra
t1_neg_2:
	mul	$s0,$s0,$t7
	j	$ra
num:
	mul	$s0,$s0,$t7
	j	cont_num
den:
	mul	$s1,$s1,$t7
	j	cont_den