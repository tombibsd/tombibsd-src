#	$NetBSD$

$2 == "*UND*" {
	undef[$4]=".";
}

$2 == "R_ARM_PC24" || $2 == "R_ARM_CALL" || $2 == "R_ARM_JUMP24" {
	if (x[$3] != "" || undef[$3] != ".")
		next;
	printf " --wrap="$3;
	x[$3]=".";
}
