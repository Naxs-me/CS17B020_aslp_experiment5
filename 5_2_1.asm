main:
	li	$s0,8#s0 remainder	$s2 quo 
	li	$s1,3
	move	$t0,$s0
quo:
	add	$t3,$0,$0
	sub	$t2,$s0,$s1
	slt	$t3,$0,$t2
	add	$s2,$s2,$t3
	add	$s0,$t2,$0
	beq	$t3,1,quo
r:
	add	$s0,$s0,$s1
	j	$ra