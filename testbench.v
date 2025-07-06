`timescale 1ns/1ps

module ram_tb;

    reg clk;
    reg write_enable;
    reg [3:0] address;
    reg [3:0] data_in;
    wire [3:0] data_out;

    // Instantiate the RAM module
    ram uut (
        .clk(clk),
        .write_enable(write_enable),
        .address(address),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation: 10ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        // Initialize inputs
        write_enable = 0;
        address = 0;
        data_in = 0;

        // Wait for global reset
        #10;

        // Write data to address 3
        write_enable = 1;
        address = 4'd3;
        data_in = 4'd9;
        #10;

        // Write data to address 7
        address = 4'd7;
        data_in = 4'd12;
        #10;

        // Disable write, read from address 3
        write_enable = 0;
        address = 4'd3;
        #10;

        // Read from address 7
        address = 4'd7;
        #10;

        // Try reading from an unwritten address 5
        address = 4'd5;
        #10;

        // Finish simulation
        $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t | clk=%b | write_enable=%b | address=%d | data_in=%d | data_out=%d", 
                  $time, clk, write_enable, address, data_in, data_out);
    end

endmodule
