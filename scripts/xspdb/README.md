# XSDebuger

## 快速开始

- 下载仓库，安装依赖，测试运行
```
git clone https://github.com/XS-MLVP/XSDebuger.git
pip3 install urwid capstone
cd XSDebuger
make test
```
- 示例输出：
```
PYTHONPATH=. python3 XSIT_test.py
Using simulated 1024MB RAM
The image is ./ready-to-run/microbench.bin
Using simulated 32768B flash
reset complete
> /XSDebuger/XSIT_test.py(46)test_sim_top()
-> try:
 - (XiangShan) tui     # 通过tui可进入字符界面
```

## 从头开始
- 下载香山并初始化
```bash
git clone https://github.com/OpenXiangShan/XiangShan.git
cd XiangShan
NOOP_HOME=`pwd` make init
```
- 下载XSDebuger到XiangShan目录
```bash
cd XiangShan
git clone https://github.com/XS-MLVP/XSDebuger.git
```
- 在difftest中链接Make文件：
```bash
cd difftest
ln -s ../XSDebuger/python.mk .
```
- 在difftest/Makefile中添加python.mk，diff内容如下：
```diff
diff --git a/Makefile b/Makefile
index bf9300dc..119b03c0 100644
--- a/Makefile
+++ b/Makefile
@@ -232,6 +232,7 @@ include verilator.mk
 include vcs.mk
 include palladium.mk
 include libso.mk
+include python.mk

 clean: vcs-clean pldm-clean
        rm -rf $(BUILD_DIR)
```
- 修改 difftest/src/test/csrc/difftest/difftest.h 文件以支持python导出：

   当前swig不支持`const static`格式，因此用宏定义进行替换

```diff
diff --git a/src/test/csrc/difftest/difftest.h b/src/test/csrc/difftest/difftest.h
index fa3c8f1b..8daae850 100644
--- a/src/test/csrc/difftest/difftest.h
+++ b/src/test/csrc/difftest/difftest.h
@@ -29,6 +29,9 @@
 #include "emu.h"
 #endif // FUZZING

+#define DEBUG_GROUP_TRACE_SIZE 16
+#define DEBUG_INST_TRACE_SIZE 32
+
 enum {
   ICACHEID,
   DCACHEID,
@@ -180,12 +183,10 @@ public:
   void display(int coreid);

 private:
-  const static int DEBUG_GROUP_TRACE_SIZE = 16;
   int retire_group_pointer = 0;
   uint64_t retire_group_pc_queue[DEBUG_GROUP_TRACE_SIZE] = {0};
   uint32_t retire_group_cnt_queue[DEBUG_GROUP_TRACE_SIZE] = {0};

-  const static int DEBUG_INST_TRACE_SIZE = 32;
   int retire_inst_pointer = 0;
   std::vector<CommitTrace *> commit_trace;
    ```
```

- 编译测试
```bash
cd XiangShan/XSDebuger
make
```

