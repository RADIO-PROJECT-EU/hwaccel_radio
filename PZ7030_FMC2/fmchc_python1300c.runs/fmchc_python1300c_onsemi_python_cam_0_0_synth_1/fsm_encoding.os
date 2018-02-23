
 add_fsm_encoding \
       {triggergenerator.TriggerState} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} }

 add_fsm_encoding \
       {iserdes_clocks.lockedmonitorstate} \
       { }  \
       {{0000 0000001} {0100 0000010} {0101 0000100} {0110 0001000} {0111 0010000} {1000 0100000} {1001 1000000} }

 add_fsm_encoding \
       {iserdes_sync.syncstate} \
       { }  \
       {{00 00} {01 01} {10 10} {11 11} }
