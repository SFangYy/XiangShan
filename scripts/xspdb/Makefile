

picker_include = $(shell picker --show_xcom_lib_location_cpp|grep include|awk '{print $$2}')
pythonversion  = $(shell python3 --version|awk '{print $$2}'|cut -d'.' -f1-2)
lib_diff_path  = $(abspath ../../build/rtl)
SIM_LDFLAGS    = $(shell cat ../../build/python/sim_ld_flags.txt)

export LD_LIBRARY_PATH := ${lib_diff_path}

all: build_rtl build_lib env python update_lib test


build_rtl:
	cd ../.. && NOOP_HOME=`pwd` make sim-verilog WITH_CONSTANTIN=0 WITH_CHISELDB=0
	#cd .. && NOOP_HOME=`pwd` make sim-verilog

build_lib:
	rm ../../build/python -rf
	rm ../../build/swig_obj -rf
	cd ../.. && NOOP_HOME=`pwd` make -C difftest/ difftest-python WITH_CONSTANTIN=0 WITH_CHISELDB=0
	#cd .. && NOOP_HOME=`pwd` make -C difftest/ difftest-python

env:
	cp ../../difftest/src/test/vsrc/common/* ../../build/rtl/
	cp ../../build/python/_difftest.so ../../build/rtl/libdifftest.so
	cd ../../build/rtl && ls|grep -E "\.sv$$|\.v$$|\.cpp$$|\.so$$"|grep -v "SimTop\.sv" > picker.f
python:
	time picker export ../../build/rtl/SimTop.sv --rw 1 -w xs.fst --lang python --tdir XSIT --fs ../../build/rtl/picker.f -V "--no-timing;--threads;8;+define+DIFFTEST" -C "-fPIC -lz -I$(picker_include) -L$(lib_diff_path) -ldifftest -lpython${pythonversion} ${SIM_LDFLAGS}"

update_lib:
	cd XSIT && rm -rf _difftest.so libdifftest.so difftest.py
	cd XSIT && cp ../../../build/python/_difftest.so .
	cd XSIT && ln -s _difftest.so libdifftest.so
	cd XSIT && cp ../../../build/python/difftest.py .

build_firmware:
	rm -f ready-to-run/xspdb_flash_init.bin
	rm -f /tmp/xspdb_flash*
	riscv64-unknown-elf-gcc -march=rv64gc -mabi=lp64d -nostdlib -c XSPdb/flash_init.s -o /tmp/xspdb_flash_init.o
	riscv64-unknown-elf-ld -T XSPdb/flash_init.ld /tmp/xspdb_flash_init.o -o /tmp/xspdb_flash_init.elf
	riscv64-unknown-elf-objcopy -O binary /tmp/xspdb_flash_init.elf ready-to-run/xspdb_flash_init.bin
	rm -f /tmp/xspdb_flash_init*

XSPdb:
	git clone https://github.com/OpenXiangShan/XSPdb.git

test: XSPdb
	-cd XSPdb && make test

clean:
	rm -rf XSIT
	rm -rf __pycache__

info:
	@echo "include:" $(picker_include)
