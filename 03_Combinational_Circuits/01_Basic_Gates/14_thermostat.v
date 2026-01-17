module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 

  // the order doesn't matter in combinational circuit, the synthesizer will synthesize the final circuit based upon the logic.
  // regardless of which you specify first.

  // creating circuit by the definition in the question
    assign heater = mode & too_cold;
    assign aircon = ~mode & too_hot;
    assign fan = heater | aircon | fan_on;

endmodule
