/obj/structure/table/rack/steel
	color = "#666666"

/obj/structure/table/rack/steel/Initialize(mapload)
	material = get_material_by_name(MAT_STEEL)
	return ..()

/obj/structure/table/rack/shelf
	name = "shelving"
	desc = "Some nice metal shelves."
	icon = 'icons/obj/objects.dmi'
	icon_state = "shelf"

/obj/structure/table/rack/shelf/steel
	color = "#666666"

/obj/structure/table/rack/shelf/steel/Initialize(mapload)
	material = get_material_by_name(MAT_STEEL)
	return ..()
