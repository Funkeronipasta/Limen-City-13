#ifndef T_BOARD
#error T_BOARD macro is not defined but we need it!
#endif

/obj/item/circuitboard/unary_atmos
	board_type = new /datum/frame/frame_types/machine

/obj/item/circuitboard/unary_atmos/after_construct(atom/A)
	. = ..()
	if(!istype(A, /obj/machinery/atmospherics/component/unary))
		return
	var/obj/machinery/atmospherics/component/unary/U = A
	//TODO: Move this stuff into the relevant constructor when pipe/construction.dm is cleaned up.
	U.atmos_init()
	U.build_network()
	if (U.node)
		U.node.atmos_init()
		U.node.build_network()

/obj/item/circuitboard/unary_atmos/heater
	name = T_BOARD("gas heating system")
	build_path = /obj/machinery/atmospherics/component/unary/heater
	origin_tech = list(TECH_POWER = 2, TECH_ENGINEERING = 1)
	req_components = list(
		/obj/item/stack/cable_coil = 5,
		/obj/item/stock_parts/capacitor = 2,
		/obj/item/stock_parts/matter_bin = 1,
	)

/obj/item/circuitboard/unary_atmos/cooler
	name = T_BOARD("gas cooling system")
	build_path = /obj/machinery/atmospherics/component/unary/freezer
	origin_tech = list(TECH_MAGNET = 2, TECH_ENGINEERING = 2)
	req_components = list(
		/obj/item/stack/cable_coil = 2,
		/obj/item/stock_parts/capacitor = 2,
		/obj/item/stock_parts/manipulator = 1,
		/obj/item/stock_parts/matter_bin = 1,
	)
