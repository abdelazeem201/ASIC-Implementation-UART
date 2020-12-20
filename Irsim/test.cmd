| vector t_state t_state\[3\] t_state\[2\] t_state\[1\] t_state\[0\]
| vector r_state r_state\[3\] r_state\[2\] r_state\[1\] r_state\[0\]
| vector tx_data  tx_data\[7\] tx_data\[6\] tx_data\[5\] tx_data\[4\] tx_data\[3\] tx_data\[2\] tx_data\[1\] tx_data\[0\]
| vector rxrxout rxrxout\[7\] rxrxout\[6\] rxrxout\[5\] rxrxout\[4\] rxrxout\[3\] rxrxout\[2\] rxrxout\[1\] rxrxout\[0\]
ana p_clka p_clkb p_reset p_tx_rdy p_rx_rdy p_tx_error p_tx_busy p_tx_idle p_rx_error p_rx_busy p_rx_idle p_tx_done p_rx_done
| ana t_state\[3\] t_state\[2\] t_state\[1\] t_state\[0\] 
| ana r_state\[3\] r_state\[2\] r_state\[1\] r_state\[0\]
ana p_tx_data\[7\] p_tx_data\[6\] p_tx_data\[5\] p_tx_data\[4\] p_tx_data\[3\] p_tx_data\[2\] p_tx_data\[1\] p_tx_data\[0\]
ana p_rxrxout\[7\] p_rxrxout\[6\] p_rxrxout\[5\] p_rxrxout\[4\] p_rxrxout\[3\] p_rxrxout\[2\] p_rxrxout\[1\] p_rxrxout\[0\]
|            # 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
V        p_reset 1 1 0 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0
V p_tx_data\[7\] 0 0 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1
V p_tx_data\[6\] 0 0 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1  
V p_tx_data\[5\] 0 0 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1
V p_tx_data\[4\] 0 0 0 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0
V p_tx_data\[3\] 0 0 1 1 1 1 1 1 1 1  1  1  1  1  1  1  1  1  1  1  1
V p_tx_data\[2\] 0 0 0 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0 
V p_tx_data\[1\] 0 0 0 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0
V p_tx_data\[0\] 0 0 0 0 0 0 0 0 0 0  0  0  0  0  0  0  0  0  0  0  0
V       p_tx_rdy 0 0 0 1 1 1 1 1 1 1  1  0  0  0  0  0  0  0  0  0  0
V       p_rx_rdy 0 0 0 0 0 0 0 0 0 0  0  1  1  1  1  1  1  1  1  1  1

clock p_clka 0 1 0 0
clock p_clkb 0 0 0 1
R

