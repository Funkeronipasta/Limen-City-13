/client/proc/download_icon(atom/A, no_anim = FALSE)
	var/icon/I = get_flat_icon(A, no_anim = no_anim)
	src << ftp(I, "[A.name].png")

/client/proc/download_compound_icon(atom/A, no_anim = FALSE)
	var/icon/north = get_flat_icon(A, NORTH, no_anim)
	var/icon/south = get_flat_icon(A, SOUTH, no_anim)
	var/icon/east = get_flat_icon(A, EAST, no_anim)
	var/icon/west = get_flat_icon(A, WEST, no_anim)
	src << ftp(north, "[A.name]-north.png")
	src << ftp(south, "[A.name]-south.png")
	src << ftp(east, "[A.name]-east.png")
	src << ftp(west, "[A.name]-west.png")
