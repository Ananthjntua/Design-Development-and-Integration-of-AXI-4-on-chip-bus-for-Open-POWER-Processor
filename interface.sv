interface axi_interface(input bit ACLK,input bit ARESETn);

  
  logic [3:0]AWID;
  logic [31:0]AWADDR;
  logic [3:0]AWLEN;
  logic [2:0]AWSIZE;
  logic [1:0]AWBURST;
  logic AWVALID;
  logic AWREADY;
  
  logic [3:0]WID;
  logic [31:0]WDATA;
  logic [3:0]WSTRB;
  logic WLAST;
  logic WVALID;
  logic WREADY;
  
  logic [3:0]BID;
  logic [1:0]BRESP;
  logic BVALID;
  logic BREADY;
  
  logic [3:0]ARID;
  logic [31:0]ARADDR;
  logic [3:0]ARLEN;
  logic[2:0]ARSIZE;
  logic[1:0]ARBURST;
  logic ARVALID;
  logic ARREADY;
  
  logic [3:0]RID;  
  logic [31:0]RDATA;
  logic [1:0]RRESP;
  logic RLAST;
  logic RVALID;
  logic RREADY;
  
  
   //checking 
  

  
  
  clocking master_driver @(posedge ACLK);
    default input #1 output #1;
    
    
    //checking 
 

	output AWID;
	output AWADDR;
	output AWLEN;
	output AWSIZE;
	output AWBURST;
	output AWVALID;
	input AWREADY;
	
	
	output WID;
    output WSTRB;
	output WDATA;
	output WLAST;
	output WVALID;
	input WREADY;
	
	//ID
	input BID;
	input BRESP;
    input BVALID;
    output BREADY;
	
    output ARID;
    output ARADDR;
    output ARLEN;
    output ARSIZE;
    output ARBURST;
    output ARVALID;
    input ARREADY;
  
   input RID; 
   input RDATA;
   input RRESP;
   input RLAST;
   input RVALID;
   output RREADY;
  
  endclocking
  
  
  clocking master_monitor @(posedge ACLK);
    default input #1 output #1;
    
	input AWID;
	input AWADDR;
	input AWLEN;
	input AWSIZE;
	input AWBURST;
	input AWVALID;
	input AWREADY;
	
	
	input WID;
    input WSTRB;
	input WDATA;
	input WLAST;
	input WVALID;
	input WREADY;
	
	//ID
	input BID;
	input BRESP;
    input BVALID;
    input BREADY;
	
    input ARID;
    input ARADDR;
    input ARLEN;
    input ARSIZE;
    input ARBURST;
    input ARVALID;
    input ARREADY;
  
   input RID; 
   input RDATA;
   input RRESP;
   input RLAST;
   input RVALID;
   input RREADY;
  
  endclocking
  
    clocking slave_driver @(posedge ACLK);
    default input #1 output #1;
	
      
     
    input AWID;
	input AWADDR;
	input AWLEN;
	input AWSIZE;
	input AWBURST;
	input AWVALID;
	output AWREADY;
	
	
	input WID;
    input WSTRB;
	input WDATA;
	input WLAST;
	input WVALID;
	output WREADY;
	
	//ID
	output BID;
	output BRESP;
    output BVALID;
    input BREADY;
	
    input ARID;
    input ARADDR;
    input ARLEN;
    input ARSIZE;
    input ARBURST;
    input ARVALID;
    output ARREADY;
  
   output RID; 
   output RDATA;
   output RRESP;
   output RLAST;
   output RVALID;
   input RREADY;
  
  endclocking
  
  clocking slave_monitor @(posedge ACLK);
    default input #1 output #1;
	
    
    input AWID;
	input AWADDR;
	input AWLEN;
	input AWSIZE;
	input AWBURST;
	input AWVALID;
	input AWREADY;
	
	
	input WID;
    input WSTRB;
	input WDATA;
	input WLAST;
	input WVALID;
	input WREADY;
	
	//ID
	input BID;
	input BRESP;
    input BVALID;
    input BREADY;
	
    input ARID;
    input ARADDR;
    input ARLEN;
    input ARSIZE;
    input ARBURST;
    input ARVALID;
    input ARREADY;
  
   input RID; 
   input RDATA;
   input RRESP;
   input RLAST;
   input RVALID;
   input RREADY;
  
  endclocking
  
  modport MR_DRV(clocking master_driver,input ARESETn);
  modport MR_MON(clocking master_monitor); 
    modport SL_DRV(clocking slave_driver,input ARESETn);
  modport SL_MON(clocking slave_monitor); 
  
 endinterface 
  
  
  
  