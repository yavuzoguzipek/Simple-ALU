transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/YAVUZ/Desktop/test {C:/Users/YAVUZ/Desktop/test/MyXor.v}
vlog -vlog01compat -work work +incdir+C:/Users/YAVUZ/Desktop/test {C:/Users/YAVUZ/Desktop/test/MyAnd.v}
vlog -vlog01compat -work work +incdir+C:/Users/YAVUZ/Desktop/test {C:/Users/YAVUZ/Desktop/test/mux_full.v}
vlog -vlog01compat -work work +incdir+C:/Users/YAVUZ/Desktop/test {C:/Users/YAVUZ/Desktop/test/Sub4.v}
vlog -vlog01compat -work work +incdir+C:/Users/YAVUZ/Desktop/test {C:/Users/YAVUZ/Desktop/test/mux_base.v}
vlog -vlog01compat -work work +incdir+C:/Users/YAVUZ/Desktop/test {C:/Users/YAVUZ/Desktop/test/Adder4.v}
vlog -vlog01compat -work work +incdir+C:/Users/YAVUZ/Desktop/test {C:/Users/YAVUZ/Desktop/test/Adder1.v}
vlog -vlog01compat -work work +incdir+C:/Users/YAVUZ/Desktop/test {C:/Users/YAVUZ/Desktop/test/SevenSegment.v}
vlog -vlog01compat -work work +incdir+C:/Users/YAVUZ/Desktop/test {C:/Users/YAVUZ/Desktop/test/Proje_Pin.v}
vlog -vlog01compat -work work +incdir+C:/Users/YAVUZ/Desktop/test {C:/Users/YAVUZ/Desktop/test/proje.v}

