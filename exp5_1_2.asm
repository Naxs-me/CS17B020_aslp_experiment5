main:
	addi	$sp,$sp,-16
	sw	$s0,0($sp)
	sw	$s1,-4($sp)
	sw	$s2,-8($sp)
	sw	$s3,-12($sp)
	li	$s0,1
	li	$s1,2
	mult	$s0,$s1
	mfhi	$s2
	mflo	$s3
	lw	$s0,-12($sp)
	lw	$s1,-8($sp)
	lw	$s2,-4($sp)
	lw	$s3,0($sp)
	j	$31
