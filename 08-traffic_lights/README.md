# Lab 8: INSERT_YOUR_FIRSTNAME INSERT_YOUR_LASTNAME

### Traffic light controller

1. Listing of VHDL code of the completed process `p_traffic_fsm`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    --------------------------------------------------------
    -- p_traffic_fsm:
    -- A sequential process with synchronous reset and
    -- clock_enable entirely controls the s_state signal by
    -- CASE statement.
    --------------------------------------------------------
 p_output_fsm : process (sig_state) is
  begin

    case sig_state is
      when WEST_STOP =>
        south <= c_RED;
        west  <= c_RED;

      when WEST_GO =>
        south <= c_RED;
        west <= c_GREEN;

      when WEST_WAIT =>
        south <= c_RED;
        west <= c_YELLOW;

      when SOUTH_STOP =>
        south <= c_RED;
        west  <= c_RED;

      when SOUTH_GO =>
        south <= c_GREEN;
        west <= c_RED;

      when SOUTH_WAIT =>
        south <= c_YELLOW;
        west <= c_RED;
        
      when others =>
        south <= c_RED;
        west  <= c_RED;
    end case;

  end process p_output_fsm;
```

2. Screenshot with simulated time waveforms. The full functionality of the entity must be verified. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   !![image](https://user-images.githubusercontent.com/124742212/228495199-b1e9691b-e652-4194-9dc7-1f0837926b56.png)

3. Figure of Moor-based state diagram of the traffic light controller with *speed button* to ensure a synchronous transition to the `WEST_GO` state. The image can be drawn on a computer or by hand. Always name all states, transitions, and input signals!

   ![your figure]()
