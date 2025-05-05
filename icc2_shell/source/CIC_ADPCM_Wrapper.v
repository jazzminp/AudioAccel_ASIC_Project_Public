

module CIC_ADPCM_Wrapper (
    clk,
    slow_clk,
    block_enable,
    pdm_in,
    outValid,
    encPcm
);

(timescale 1ns / 1ns

input clk;               // Clock input
input slow_clk;          // ADPCM clock (generated from clk)
input block_enable;      // Block enable input
input pdm_in;            // 1-bit PDM input
output outValid;         // Output valid signal
output [3:0] encPcm;     // 4-bit PCM encoded output

reg clk_enable;
reg rst;
reg inValid;
wire signed [15:0] filter_out;
reg signed [1:0] filter_in;

always @(*) begin
    filter_in = {(~pdm_in), 1'b1};
end

// State machine states
`define IDLE        2'd0
`define TRANSITION  2'd1
`define COMPRESS    2'd2

reg [1:0] state, next_state;

// State transition
always @(posedge clk) begin
    state <= next_state;
end

// Next state logic
always @(*) begin
    case (state)
        `IDLE: begin
            if (block_enable)
                next_state = `TRANSITION;
            else
                next_state = `IDLE;
        end
        `TRANSITION: next_state = `COMPRESS;
        `COMPRESS: begin
            if (!block_enable)
                next_state = `IDLE;
            else
                next_state = `COMPRESS;
        end
        default: next_state = `IDLE;
    endcase
end

// Output logic
always @(*) begin
    case (state)
        `IDLE: begin
            clk_enable = 0;
            rst = 1;
        end
        `TRANSITION: begin
            clk_enable = 0;
            rst = 0;
        end
        `COMPRESS: begin
            clk_enable = 1;
            rst = 0;
        end
        default: begin
            clk_enable = 0;
            rst = 1;
        end
    endcase
end

// CIC Decimator instantiation
CICDecimatorVerilogBlock cic (
    .clk(clk),
    .clk_enable(clk_enable),
    .reset(rst),
    .filter_in(filter_in),
    .filter_out(filter_out),
    .ce_out() // not used
);

// inValid generation (clk_enable delayed by 66 cycles)
reg [6:0] counter;
reg oldValue;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        counter <= 7'd0;
        inValid <= 1'b0;
        oldValue <= 1'b0;
    end else if (counter >= 66) begin
        inValid <= oldValue;
        counter <= 1'b0;
    end else if (counter == 0) begin
        oldValue <= clk_enable;
        counter <= counter + 1;
    end else begin
        counter <= counter + 1;
    end
end

// ADPCM encoder instantiation
ima_adpcm_enc enc (
    .clock(slow_clk),
    .reset(rst),
    .inSamp(filter_out),
    .inValid(inValid),
    .inReady(), // not used
    .outPCM(encPcm),
    .outValid(outValid),
    .outPredictSamp(), // not used
    .outStepIndex()    // not used
);

endmodule
