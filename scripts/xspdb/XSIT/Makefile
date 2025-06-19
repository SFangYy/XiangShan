#Makefile for SimTop

export SIMULATOR = verilator
export TRACE := fst
export PROJECT := SimTop
export TARGET := UT_SimTop
export VERBOSE := OFF
export EXAMPLE := OFF
export TLANG := python
export SIMULATOR_FLAGS := --no-timing;--threads;8;+define+DIFFTEST
export CFLAGS := -fPIC -lz -I/nfs/home/songfangyuan/.local/share/picker/include -L/nfs/home/songfangyuan/work/XiangShan/build/rtl -ldifftest -lpython3.10 -lz -lzstd
export COVERAGE := OFF
export CHECKPOINTS := OFF
export VPI := OFF
export RW_TYPE := MEM_DIRECT
export NPROC := `nproc`

all: release 

compile:
	mkdir -p build
	cp pli.tab build/pli.tab
	cmake . -Bbuild -DSIMULATOR=$(SIMULATOR) -DTRACE=$(TRACE) -DPROJECT=$(PROJECT) -DCMAKE_BUILD_PARALLEL=$(NPROC) -DRW_TYPE=$(RW_TYPE)
	cmake --build build --config release --parallel $(NPROC)

ifeq ($(RW_TYPE), MEM_DIRECT)
ifeq ($(SIMULATOR), verilator)
# file exsit check with Makefile
ifeq ($(wildcard build/DPISimTop/VSimTop___024root.h),)
	@rm -rf mem_direct
	@/nfs/home/songfangyuan/.local/bin/picker export build/DPISimTop/VSimTop___024root.h \
		--source_dir /nfs/home/songfangyuan/.local/share/picker/template/mem_direct --target_dir ./mem_direct \
		--source_module_name SimTop
endif
	@cd mem_direct && make -j$(NPROC) TOP_NAME=SimTop
	@./mem_direct/export.bin > mem_direct/SimTop_offset.yaml
	@rm -rf mem_direct_tmp
endif
endif

release: compile
	@cp -r build/${TARGET} .
	@cp dut_base.hpp ${TARGET}/dut_base.hpp
	@cp mem_direct/SimTop_offset.yaml ${TARGET}/SimTop_offset.yaml 2>/dev/null|| true
	@make -f mk/${TLANG}.mk

ifeq ($(VERBOSE), OFF) # if VERBOSE is OFF
	@rm -rf build cmake cpp mk python java scala golang lua CMakeLists.txt dut_base.* 2>/dev/null|| true
	@rm -rf ${TARGET}.cpp filelist.f *.fst 2>/dev/null|| true
	@rm -rf mem_direct
	@mv ${TARGET}/*.v ${TARGET}/*.sv . 2>/dev/null|| true
	@cd ${TARGET} && make purge
ifeq ($(COVERAGE), OFF)
	@rm Makefile
	@rm *.v *.sv
endif
endif

coverage:
ifeq ($(COVERAGE), ON)
ifeq ($(SIMULATOR), verilator)
	@rm -rf coverage/
	@verilator_coverage -write-info coverage.info ./V${PROJECT}_coverage.dat
	@genhtml coverage.info --output-directory coverage
else
# TODO: add vcs?
	@echo $(SIMULATOR) TBD
endif
else
	@echo coverage is not on
endif

clean: 