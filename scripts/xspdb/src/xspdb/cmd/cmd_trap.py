from xspdb.cmd.util import message, warn, GREEN, RESET, info

class CmdTrap:
    """Trap command class
    """

    def __init__(self):
        assert hasattr(self, "dut"), "this class must be used in XSPdb, canot be used alone"
        self.condition_good_trap = {}
        self.break_on_trap = {}

    def api_is_hit_good_trap(self, show_log=False):
        """Check if the good trap is hit

        Returns:
            bool: Whether the good trap is hit
        """
        trap = self.difftest_stat.trap
        if trap.hasTrap != 0 and trap.code == 0:
            if show_log:
                message(f"{GREEN}HIT GOOD TRAP at pc = 0x{trap.pc:x} cycle = 0x{trap.cycleCnt:x} {RESET}")
            return True
        return False

    def api_is_hit_good_loop(self, show_log=False):
        """Check if the good trap is hit

        Args:
            show_log (bool): Whether to show the log
        Returns:
            bool: Whether the good trap is hit
        """
        for i in range(8):
            cmt = self.difftest_stat.get_commit(i)
            if cmt and cmt.valid:
                if cmt.instr == 0x6f:
                    if show_log:
                        message(f"{GREEN}HIT GOOD LOOP at pc = 0x{cmt.pc:x}{RESET}")
                    return True
        return False

    def api_is_hit_trap_break(self, show_log=False):
        """Check if the trap is break

        Args:
            show_log (bool): Whether to show the log
        Returns:
            bool: Whether the trap is break
        """
        trap = self.difftest_stat.trap
        if trap.hasTrap != 0 and self.api_is_trap_break_on():
            if show_log:
                message(f"{GREEN}HIT TRAP BREAK pc: 0x{trap.pc:x} code: 0x{trap.code:x} hasWFI: {trap.hasWFI}{RESET}")
            return True
        return False
