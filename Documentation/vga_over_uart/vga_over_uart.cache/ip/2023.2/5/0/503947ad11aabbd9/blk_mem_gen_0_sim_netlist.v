// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri May 17 20:02:39 2024
// Host        : DESKTOP-PGGP91I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20272)
`pragma protect data_block
CRRa4205QA94Fz6l2MqkMm3mNpidSXib58XE1qhIIO+ypW/gNjK45iPOZLFoozogVXZP7JlXoD9v
iJph5bfWSwvlY//fOdhho7ndHJ6CSGFL2X6M8jEidjUyi6nFhzV6v/vfBt5NGuJukCw1g5iqaA7s
r33OBKTB8wb+VRa/As04PPA4DCqg16RcDoPo9jU2ZIfB98VQkXcbXsq1KtEEMYi4Xz17pjqHLkkP
718HE9P8ty4tOq0EnGesbtFMrrRXZlMWE5mXhA/d1AIMxBDBpK7bsKOIk7EZQX0XQjjgO851z3xm
XNxp6x59bA5BeNrPL4CbXMiRBzdcojgfOhsxuxbojGUGXJs6Ij7K2DY5cY+TTawFYWOAg8CftLwp
1V1MYFI0xRQ5/A0mXuqSNKEfjRb6Lb2Nxd2tF++w88yAbBJ7oa2NTj5ByYVAIwYXAnlJwLd0vPWA
eIL9zpXlepbqGpYXd7wJc8MRHDfbO6QYDnmWGBt8G9fTEXDY9dw11ZEkDzPtTOT2kUM+Q2xtbanq
0ysA5jC3DGJfdlec+Ffauta18LUPh8bGVfakEL9m9QtJ3BAalGECkNMh3sfAoL0N+w7+/fGuxPTw
MEaKGXunCM4P0ynlfyH4Hm8uvjKMRjl864YNQ9WSBBvyUUVQGm6Hsq6MKgMzLecHe9NAL0E79RTb
FaHnqiqBZS612CEszSRqEoElL6ha9MzarJK/qcYyx5xKrjqkT3lLR6+QXw1FhtBB/b+roxmriFg5
kRMT3/VcZydb95V1LfBAp1L8RU5mJtwN1ewc5EnVj2F0c93BKKPXgmyoYLvNQeUpEGYWuK0YCBTv
xk8qaYPlWUZeSYozdsrg5R+CgkXL+ZZBiWqs8yJSa0NZ5SJDi3egtpPwZWDjhhEn43hX5V6nibLl
pgy/O8EN19K3RvLQJaxNbH9urguG1HMaGi9COkWo/dy1YyY+BiIvM4n6Ckpi3fyJsoAGesJ0BHFT
j9da2oat/uwBpzhCtYhn1jet57rHMeWsH+QqFYGpvgubavQst+ekBr6bYZS2wtwk2swuTlLsulJd
kmoWI16XjYnABEc6A35X3uqgnB2vxGreNxsGlD9mPcz5oDhAlWQsBICx946Ie6aymgExh/lKDzZU
Db3rYN4hf9fkhC0JfTMST+s6xfI6oUKoifiL/6Q1ZFd0NzraPE+o6pzQxBiLJU279dA8324953WG
r3Igk0F4pS9+nnNaRwbqTRKfvVGbyy5V41NY4P3Ak0qM8YVge1wlaVLr1sXQbc5bgKYA8y/xn6bp
7LWCvBRMDhQNMapmb960OOQfxKRBGoPFBo5kb/DcqQMR4bzsHby4vVPhUkkiR3AxenD/f1vSuqnK
jTnV99uT4fnWVfvhfubMoXGHy/UYBTyaXGg4DeDuCfiX7JqOOdlLCfYdkCQVpZ3E2vAso/RpLF3I
OWxQJ0ygk4E0WXUvsYWkPj1z+c9OuBoSvL4GKM6bHGZfF1X/EG3SlX17zs9nYHcISN+0mwhd3Kge
EURXyUI2esHzNckJ/UMXkSGWG0KO4BObqkNcKy5/JblBkKK1Og6PJ76aKsXQGG1QOGn/dJrwnfu0
tvQx10zynZ3KG8jmMrXSD4n1a588x/9NIEqy9Dde/ya0ESbPxshaiw190EvoNPvxbZRhDez82waa
iYJoKahFLUoJ3DpPNT1vu83bcFwhxEhOV360ToONsNJOfRJnZdEO7wOZSv7GbppaTloZt6AWQY4s
lzUhl2t8gpHTU4sIDK6mydWPtoxnqgsh55e4X7PDVg57tRflUVIDKTPxYdhmM6+krGNxgtk17XH1
amtHMb6qosWzply9oobtrMpXzzWCDCOOQdIzimYK2A0Q97tOWcd7B7Uqhm5OLAnnAnhyTDTamjKt
zIoNGNdeE0oo6HWyb88RnmSO+FwrBIJ8JydNdzace0VMv1Kcw0tz26cvnDi8TzYCoQq2tu4d3iiI
8owD/BqLOVVRGsAGzmnQZGf4uYfWqL2dRKVSuJahG6RfLy1w2cGjcIBwckUhQ1DerSOgNQ6oGPJm
BFqHkSExEX0LqdjwlVt0H7GCVnv2C/C3tIl05j90DLgBLyBeLkeF02rPVcIs6nzMUOO7XDHqAfDl
tTCrTJ1L1iljtQEDGZl4dgh4yeGF4lnN8a0D5vgHy6OEAeIdlUiNRIxmj4E7MWlr91bErvpwKb85
JF3dB0XpsfTF/jbnJwRZ/As7WnxfMllRND7tV4nwyP1HnvWQAZ1ZppbMuf10yFLqYdXWv7fKKaEy
n6HgeY5lKbvhrwXad0vjT6J2yGpmAkL3O3mSwvfzb851ltSAerUoAICzZhoiKlhUU92k5ozJZBA2
56c8HCTEZD3OT0IsoeaV3GVFQ76k1nYImktxXXLS2vtHfEaHSIJ/itoMdQbKkfJW+n5lKWycrvTx
lfHjJprVZBG1pX/GePNS/AGAFyWcu99DC4DM/Jw8NHNZVgbo+x6fvBv7Lu+umdXbefKVF5S0Rv6E
8rHsh+yoVm4tYrMmJeLRLjTfir+5otlN+TWoOInADPFL5LUOfFlWbplPXofHZCUKF5Dizxu7FxPz
tGT8fbAO8GaGejw2iKTylaYT2ihhNeYTlY3dObJgylGrhzshUi5txzOOKVmR78VdeyvRxZiNxYDw
Jcf6XXrQIIfhCRciXhnf1ue0arqS3ubASeuV4DC8cHcgtHYkZiskyw+qJ6h87YfiywwayIx2P+Fr
CRp5rb4eSRijhjUmPzMB02EGXbmAT48eOyMEsuNxRSBoDbZqtJoxGwS4/M2P0c9HyqgeMKIQAfe5
Jle83Pgv83CZqmFJy779NnNoDFMsKsVZt0PKIB3IRBJU1igrS9dp/gaHxyzlaxSRlsy6wfGDvnj1
yb5VGZ0/Gdhe/odV6040YeLT7yIO5NF9SuRK+UUNJfUBhZ9Qq79EObzEYuzXcHVanh5fCNJsXY3W
ojSEXwrXRmqzgF0ULQt07tMUj381YxHqw8hnYf39PW3O+WygXn8sdEeU57c9RQln8XRLagIFuR5/
cVjJqB3arNCxAf29k/I16NR6ZbiEjH6SXSNFYN6oVeQ9St+WHQ4wtiZK4XQDLOecgAfQn+NUdzgc
K/akqjTilLPvugcrVvmdkTuHHa8bu19Er4I2I4GH1GBoWCPU1zmozsVWYgRhkGIW7aiYCAF0fFqT
Txu44SqyM9L2JWzeJxgPnZsPotICjEyBNovgvpDhMdEofhz9hb89PGNl7G5TpIRsUt7GN8+UOEsw
xMMGub0bWhXHk6v7dz1w1Jz553efpOlMXCpAA7oncgs2hZ/FwnQLEMdp2OKkYLeKxqIvp5vxjjZ7
BnZABOvtpChd738aKuRCBa6cGixEuSTzgat/qTOF7zO2lxAebG92AqEknkuOR4iwmwRz1FVr9ku3
pq3EDSDO2dK7B0MiAsLe0v2PmLNLXXmkKn/jCfm4j/PSQCOGU48A04bewGGpI2RaaoZoHQF6PXMk
KB4MDMXh+3cCuMVk3dXbdGBHT3lyNx02x9yk4tMwbLOZOJE4V96KFuPaTGRWby8tsQyxcjx40tze
1wiCphIbZ3JI+bIe+N2UemnkE6IxEozqS3uTXtcYrV3myZ0u18EQAXE5Np2lGk1t/+oAJSL0v8LH
4CdQZG/Nm6+MwC3Rx/z1xfshKc07Ys7H3eWZ0ahdGAlaQ9eFDftRTlNESHdjBOCngn1LBa8reTXu
0MuHcIgELaOBGuIIhUNlJBbqhAw44rVjNiX+w9atGfmBlkgoI99xoa90qEurrHe23GAeMU2+D3HV
ZfRBp88RgIWH9gmbhZMSd9rMLqOcSRsTxUc8N/EURXGgl5hTxebiHWuTGhZa2txwiisPxpxBwJSG
6pqes+r09d29FFG5dC1zFfiW8c1XPC4FUSlRxCmsBjImbYfJC8XlcW2mkJ6NIqsjig8s1Y52Jli6
0bO6yhf95i6oJ3gArvLphnWaeGXdlakNR6mH/lKP/jgjPfLYHc/2hDEdAWCug9cYdz4Y8a6uvZxp
/Cu7HjJRpC94SSzvFMfWaZvonirEgd9xOgr2S1ZdByeshSAGMQee0r4sqhQGkzCaqQdQ80au4m7T
R2h5zuR+UUZF0e25ToYFlhwJPdiV2OmpgbIVPE0hrM90/vVS1kvtp3U+Ff0OK5/NgzFnlTxW9uRz
nFytfTT6fEb3LYGIqQidN35AsbSkgYyXxqxPdS3iExSDvwLpB4qU0+UASo5nCRSvEA/tb84Qtvqu
n7JUSHcU1smjUV/f1uwJBvlwy0j6J8S0zlcQxjl2sCZq4efbw1BZkyxKipTjVSu0xae54gPjCCXV
+vBcAmTzWSkvnX+9qzMiZw9fqUYjrtDdajhAAr0bVEe70KFMj29v8ovZx0B2DAqSY/91YOgJIZJl
e+l4Gt6QsMyaJxZm3n4Sz5yFw9DuzqQITRgNw8aX/USmAw6UB3x0uIRe8X+VLfiZvGybMMqfH04M
iEDLmujx38Dr8OUfPmpnGCByhE0LgHaCkaERV6pCF3gHFViaHUub8QH2icd945tj1H35VNdZvSed
uVLALPQjfVK77GxQHSi2bMiWEKKOJEF7Y9RwrQmIkEo8rYU05mtPkmyKBVimTVX7YrmRE2TuPicm
oNKsGM+FLtP4g6qi2rYezb8rUkfmUBtWkOS58kB2kSiSw/vAxO9X7zS1i4cf4ZOKIe8WdryEA+dt
kfyMhNRNHySnI6eV4Yn5rHmi+d79xjmZ+kv7ckywXtx1B39YfEpwwo/+RQPEnT/g05KZ+1VHHM+0
dmJy8M4nujimbZjo2umeoSCy/jWxPLciw0p1LA6v7gnkIgwdlKhLqfkpIiYw5ji6XdOuSsOD1gGE
HxIfLZumQp4MQvpmqyfefkZ93tRqk+NdgIoa7DKQBw2ojLMNJByL29efl2EKljprteDDHTMjCcEg
vuyHok8Vs5mbMgJR4UJai+gaG6gtqo8yjI22Raxie42+FERFCWHQdL39ukb0CUZ0yPbEevurXFyt
IKoDE8D7vZhIX+1fCZkv/68Ku8UpJTj8inHPpUtdXq6WYtN27JCbl16dkEfyYALz3iRUJVssdl/1
At36KA7eHaL0VPJgNl89soYyia3AqSVGRpa9pEYGOkc/CvFKA0WlWBGfGCVd97fCW3TpFMJa5Bw5
B9NLeEwfN9UbmE60Y+qy3PArPR0j6+vPswLLFRei6cUzXf8JJG69wZIRMBV1Ev3XW11CwOrWDJR8
NmwAs167T52F2APv012pJAnNOBp8cApvpGIgkreM93/DoNCjmKBRqVIWJqxYcPC/K6hUAu6IYDBi
AtTYCVS1wyC+uBDHGKt5gnQiOxivYV0xet3kMswp3s9H1KK45Fo0ihdKpSdbbB20i5VZXINUCkzb
nJHZT4s+j17c/N5HGxusudVQH7qxnrWvYZTpN+CIjoTtPDQ5RDUPSpCa+x2WnSRyr10HvF/XqhDn
m9X9O7M9U4ASO52sicrLDBc9vkif6NN2qiIFoid5jQ4l2ksQnp+zYVvkrfk2HXhFPStw6pQEo3S0
Cn/ezd4NvJw6CMBLU9GgrCwaZyiIi8fzUlw3heeUV3DPdady90Op8jRfXdAgHRUt/RMpE5jEz83P
oxQqoFQ6qSJhVz9/wotRXssVSvr3o5kgC6PlXZRO1F8OsffrxZTT7QA0eZnfU7VqcQxnClcLksEb
WnyUyGSul0QrSNkh2dwk9N2abcHN9lBuhfCjeVoppUNGjEewt6Saz/EBS7InFDY/MNI3wafUPbB9
Xywrb9vR2IIbo7Xd7Xo7GWiTYTNq4MpZIU0kRpHZZ8K/+2XA8EYGdLx2X/C4D2LS2l8IuTfuuGKa
7PdvE6p/XxWJ+LXdh3lr3cN6fW4mb7/szjKLWlbmkbfM3fc/ZKUrzfvW2B18yULv5A4KP9H2ivHX
RBd09Mgq42M0cfKK1D5Scm7OZdlatCTsUc/07CCKJpW1kIWODFKxpJd2SjHRVj6vtndOSFkJiMCs
Rc5i1uGDev1nuuM3O3Za4X1aC8OrwTg0mNJ7PkrDSL8bMCcCWDysAgRumi9DC9T/ooC8jpqeDaHy
DrAg6rWfPsT6M+YCyUWIOvoYbsGfTieNkTZLeUsX491vYBZKHiNo0wvL2QwkJ5mQ936FzCICFeX9
KhrGCxDGf9KX22ehNdfPE+Mjx44ilkApQjsX0y96oWRPQT2cPF2ae7ol3R8BbmASdML9TXnkINFu
464xXAD5Sd4p7Z+ON+ms5XpsWdK3ULDCjiPMj4wsdx8EzXx+pUbtn2OCVb80MR7ubr2yuAbKi15b
k6HI8ZOkXd6SR0oFEljOtJZVzRo+q4LHKA5LPq5JqKJI7hD6mgfJA/A6/9QKxz68Ct6Ut5OMxmHh
3PF8A8B/uQMqa4WtVXLmi5sB/obBJxz5bGBhM7GxnXRmHjLqNiAJ8AX41r3wUltx3htItW2KQoHc
pWcQuVulVaYCXZExnW+R31JKYiuwVEYjGdQHpzfo1LbA8oMxVXV/WPeC1ICSdlszyv1JnA5MVOLp
kDUm8mmnlw27pQuvZrnwSLwgMO3Hp/+4IeTX9le4jdPYva8zGiFH6kZhqSvYxFO3nMhVF5rqsMyW
MxsTRGrdYWKqqUVTfl5dmvshgKsvqZYQZq5OADaV1I6T8ZVihZgtjU9OwUMJe5wa6ZqNw4IIDMyq
WHUPAhRvviVUvVvibvFngXD5LSfPCHxJPHCi4M/FfbVjgwAtq4OvuT95YS+AO60vfEIhwHCXvLNE
mcLXxyAHW6nDF7QOsUXj992pkQLRT0vHp95O5Ml1nQsEwTwg6xl1Sl/Y5JhgNIJviXUn8QpKqXWn
Q94znMAE+KMg4NgDhPAyQI3P2E1ycFC46g8mc+ft0eH10yRAbPoW7La4pRBXvPoYLXClfNOA1eIx
FDeH2BoRT1IavCnob57fO2x+eJW8LVWObINJ7hQ+kxXfhDw3hMPm0jjK/Q5c2hbOrZTqHvxb7EnT
KnBx311Mj4rIXdL7bIjtbFBVzsujydXu5MKOG2oMfFYIGx83glOZHqFP1SvTEcs6Et/Y9JkhZJtz
9RYbqJH0Ima2KkEDvTJjK/N24VVmm/CPsGJeM7wOu56jwo1lxYfMtw2ZhdQEBwxFMnbGOkqDtuG4
c67ShGxJ26AICUhuY9qqk3uhFqAwEsGIq2F+moRHeFxh686JEA9azTqoJStF7PHdMyd8LqkmxjJl
CkKh0q1wogl+Pq1+PEw7iDYm9q15/YDmq7adQE23wJxMQHBLMpEdQ+20d8mJ65NlJK6i3xdMXb+X
lEJ2pglJgVdeOvmHKD2TtrP697BGRB2j+u0/5SzJHznezPFS6RWqF3N4usobtOkCbSA6tK3wm1sk
Y3p6fqjEtB9rwBhbXrxu67N7ECL4FbvWcmeTV8+jm1iO5bXKCc2fzq4eniWZ863XohiFW4LIlj0z
NgxVEGNEaZeCHPX3qzN3nIBoMAsJaTfXuFSVoVEjBbBe3M5cYWu/lc1Ajo1MfYsEAQSktZoqyA8Y
MQyACm0eL88dt4TE+kXuDVW15EG1vPeY4xKVEUCAl2Gv38DnodVw+4p+m1E2PnKytKWKKirinN1H
hwqEUB9krGBhNBNMPFgDC7OILCecZz4ikqBBOzEjTcFz/vS7nkPEf0ijY/bt6zRyrM07weQJyKSY
XsosQiaNF3iMZapru0ak33AY2v3QShaLw/+joDEO+foINm5OTomDmh3kvKm6bSe2I+oqaWp7MyGo
xtFELSwGto3OgrOeZcE0P8sLwPlKZDgjkNAEKxg93CK9OUUOHe+/3j8azDE9f+sfXCk4AsJBkF4u
sGbj9dswSMDamqH3z9XxiSF5R5SmpXnAXDbs5ap3DMI9UtivbSRdNi1ifF9I6BZ8tZpfhDuesWqt
RfzRsF7thW/H95BuWbPmRewFwtW7K2c5x+LtZaNVBiyp5eyIexsZdnbiO83LbY2uKNKDqaK1mUM/
VGR70ziJ+OLnlSbGtSy68e6qi7DLhlVFmY7SVAT5S+HfoBbDxHF07CeO+bF6l6eoyKNgP2Xn0cf+
3o7IwnZR76gQg7NlchtZBoG+XTRBX/YxSVpm/+Afyx1W7By2EJhLohjoaVGW12oYRFxblVZBX7T6
qr/qVPX4yuca3pzkQx3lkLNIOMuKRDSiE0KoQgTWFjheMzkHPcBKwfWLiJ1WKZLRi0yqkVQmawUX
DYANNI9zuIKl/u0Su8JJyqPlFoKQ70HW4dAs4mLCoTijTl5VkOcbOI1MMc1PbZst4YrZ0lFHLv+3
BDyySEfD59UXXMO8y99zcGhTEFWMyKQwWvQjzVkfDofzezF0VEUYjzSlTucG9tkoQMwd0R+Y8pc+
lxk66Tk1gyHYR5YPPDZztaaYPv4/Upb1JDYDGsk0ZBIFKQbvrXSQuXo+0fcPqmRLgxyJpvPi9bnQ
s4Ud0Bot7oPRZfXsa5J3JMbhkFFSp8yQJgMVFnE1xxl4glgvYSUV2vkn1lOIQZ6ikFszlJb77ZMx
r33ccHNF1VJbkdnClDKi+MXDzcCZ/kQudOK8Cg4kRvkijKoB3SYf6r6+A2Snc4LXpNSwqMN+49ry
3D/qhg86/sfgAPasto0bBvez5crhXpNumnMFV5PMY9DpgZXcfHcpfTFlHWrStL+F4C9mpJ8KQUhA
gSItFX8W9KdWxr1op+tsUvnyt6mPu5wPjaGHzsgx56mQB+aPIDnjUkO371yub/eMxdSneacQuQY8
ePvdehn+Z+7WjxUYrPaCJNjOeyczjKer+Hq6PSOaNtFVpybqSO2ROr+Ixv3qJ8N4f5EL43gdbAi3
bn2SdTXO/adXun7Rapq0OtpQsLV03kK9S5jzPv7mkMTf8oKxGdIoR3gjBtgPYoeSQi5XFeWnXVBb
3qMbubPGbHa6aCTYll890Nnj4sxYC0XcM/uM/IHVxWtL2CIZUfcaezSXtsT+jgwJSNlQGodXGOgg
tehVNV713Rgx6c6daOi5l0ak3RlxVvjlVGc3nvg3p6h7dehB9idaxijsis9NHrFlovBkMDm2i8II
dDF1QIs58szaAK9qif52Nm+ecHgmKSRpVN19S3T+VGnAi+i4xl6EBOgZXKgyJr2l/j7oLDGYachK
wYS6fUgDRYkbpDE4huvpUzLQxm3xEEIxQ1ujpg8j/vmdEGBpiTf5oEFMzfZCZQgMOlB97gvwcTTt
rsux6fvit7OrBT5qaj5gFfAOKqgrj0Ke4cNevq6TSJQNX5QewuJF0RRrYLdETtgd39TsXIy+Trvk
eFOR4KFRp3oPXoSDXB9GGLU4/esknnM7kA8tjLE2VlogJiYPLS7wLFnq5+9z7GRceCdEtdlkgExY
P3AFS4yvaPIH/LzjxNWpDVMZT2r++NiRWc3oVOOcAhfjDoEwedNvSPZUKYs8+jGec/ooWoVjWMKn
elUMdfADXbF+1/KVLl3nvKPpd3UbA31cuQGIVvxacVfjzhHGR67A7ALiM/t1iyug0zr3t18OgAWE
v10ECiSOCEi9wWA1VjJKEob+EPnqMFqun+LWyE21w7lZtR+7SJ55anWiohOctzHghM07GKu0hz+r
FW+ImxdB6tAkouZbvQFmAKnNJSX9eVxsNHt1+AFjDag0nfgRkWpzYTvRLBjFpcSlRYS/f+LZ7Jj8
ffngfVjODhxNffUCBVuztU6/yiboaBtbD2WqzSeHnc63PLi8qAJP3KBWEiB1wcLUQbJNQCsJswL3
R6pKccW8isKjQp7PeGe42VIGAVaTydcEK54U/PmS+c6oEdihHgxwzGG6wylBrzHqUg8T5ifu3EiE
mIjW6cXm6F8+EoXQtoMn/+ao5xzcEEiNfQEdeLqznzH6RHNk2B0aTVXpP3uxxfzrF+z7tn6aSr83
z7OQPpKPibyI4UjohRaNoBlcaPNbVhbXwmTmtFH6HWfi/PV+vtHre1CP2lDkz8fNSzkltRe51fMD
VEOpauPgOFxF4hK3BiIx4KZsLYtCHrlldTRIX/SY7BBrGyDC+x7BvTwWJj03LcqWdgZty31PW1BE
wY+7aUrCPw9GDdMchN7P+QrAeF9DJssZ9HE0HsnVwxQrqNe4gjexrxCZufNiqIxgFVKmiIXAnEC4
igxRUOP8dquKOtjlquELAwlIbfYIcxggmUN9ABWQ7bE4Aqalb1AL6OpK6a364RuIiu/U+1R3uSs4
rfdd3PzMklj3ROk2s6aICXMOfMXynyAb4THJNLXBetxlRuBRTpHafir3I6JP+eBVluuJUxLr5jgz
Cypw3AAmyxnwCQYdHmJyPHGowDtvxht1Pv8WjgzNUKrnJokeSq6Z4qFJFQYKHReAjfZDdhRcy6GR
QeFczCQ0poHa8vN476jZLoShimYqg+mn1t8c7JZ/pDvpSbnTKPuBvRcFQoK9t7FqX3/Z8ur+hAJ1
jKY/oASEnPB3sN9NSENSirb3OXF9+cdayY7Nf3OOsCFjTPb1mmmeBCuyowZSO001s4umMFgJ7NiQ
ZXzxxtqzWVYCBUrFTdTOk6IhszjxsrZ4dEmHs9AZ/6febRFvJJfNKPOwYSDevJOf464qRZwIy+se
+MG2y/XoqVQ66O0fgT62AgsakznwTK1hJCAbqU/8ZF5HTFqSydiFO8/ayYeXeTaiGIBdkJ+gRzV1
pVW7MeOXEypC2txbI8oX2+KF7YLyqfYn/edYgZl5tDFeFbkhcXGnUYhKHLcEGu33fdNX8/b1pDiA
71fnE2fy7GeK9S7ejBdCopcQZ6NBbHsr9x24UtGYNpRHNN4GBBuIvhgVybCMSPFXn/3au28PisL8
AXkEgujXk9nzagSYKMOeh5qk9xrkWoobI0HKCzW6oRoQdds38QGV9O6hGrpxmR8rWB0Ze7icG5Ef
PyyhjVqfn6Z4vWmHV6PjR+mxBp/ib7XFeC1y1yd8UbcDU2TwCzv+gjWkhUfZGfUe1amttDGcehPh
3g4sasspAeqWniTFzdEbqXFkfb5DKiFqtbO/GQ0KOrxf9/QeLUbT6EBSKeiS7WtBQg3+QIPQXS0a
w33yAaBMA/lqLyL5F4IHAV8on+81YPblkQvYmSkoV/nE1WKnQZJ4eUUKtWGJPpMqMBDf2q7NbcdP
0Cl/8mLKGKDXt6hnHwHJEE4TYpUb20ARoqqfjLAYYvB6pnCbxh6xWN1J1+IR7znfhMWWIm36fVeF
U1Ce5Zp3AnGoXBZVm1sfQE+kSHysZKg3ixrtIMHjQsbwgRpbfPL/iulj+qLnVm4j2imKXEGxgUlN
Xi4QRHB0wezYsEOgx5da2nlWqyeIrOYvEYHhdERXxZGn0WnKxR224wWoJT+cqo0RsASLgYi6IemS
sKxx2LI0dL6PLIOwfiDvzZA/X1dMSszcsMV061RbDHL9n9NMX0ezJyXBFD7XCrP+kZzstoXfLRXO
+0rhuitQXM/cwNxw6Iybl7KMq5RmEQIJnwG6kQZqgOs+ANr8Z+hyiK5PjS+j/teZdtMU3RD4jLEA
hg2HDnJRezf20JoGKlVqX4LatJ60+wRrNBeiBHMLK9kju3To6NRsxrb6of0h2RwJODrYiW0Y+t+V
8Zg2y8CgWhKHPc3tf2W6yGgrsQLBb7Tt85+FNCPrPbYewm7rJYZBoYiA/YdomzYeLIQuX3/nBHKG
Q6tJTq1ZeOkUigkpMwFmtOptEoKBHk8XlLQynP6SWEpTOc9qj3pgZdWgXidBTOnXg9XPKUrnyhXE
t2nZJEfGqkeju0rfYCZdo0DoC/3l0VbR8oxmBRtbdcTQlkvs3EaRtbhhYJO7lPY6pKYPSBYu5D2K
Dbu53kxzErdp2wrqzw0AyDhjK1kfGnNM4TIqvJ8GeMRzzKG/pvwbymKyUUmoO5t3OLyM63d/IEup
uls6Q7oBOeYTylYK78ucZ11p790CWDqkHnlMloSfNFTR9cVzKMAihu17tpiygk53qVZ+wGRv/n+O
rjCgW6/nYUeAVZ4UjmQdoZTF62Qt+mgVhceoXgUtELoHJpUHZeM5rSqezlwOpgG36YFt10htD7RU
ePltGZmfg5H/G1EmkgU/elJi9K3kL9CFeHUIUCb+Qna+fR0+tBZYX3rznse1amJoXhqfBJ+rHZnc
HDK9Xb71Y3L/CgBSdVqdN32JUVhNAQ0Xlk/HdU9xhjVmqWtI3T8fwyX5iCigHs6KQBp44pe3rS3G
2BJ/E9+JpSW77DrlocpkdgEynWkOlAvok9SHQsHIx/MKYqmy02dDt0nGNQUscx8N/jWduvc7iEoJ
UnjN7T4yWL0f4X6vfa91oIMVaAsREGQ9EUByR/4IwnhY2cjgn1RyKMN6jNQz0lFtUPXfMNLvRSiw
7Wq0m/QXllb019RFCr8enyMxylMys0q4weY7Cr3xDozdfWf1fWeKVw1MGVxa2ZsKB8Yp8cgwzOhe
4nWS07KrpCXt/5fyigliAQXLm6fgjUGJvwrPWjCunv0oqSLAoiqi1gPrOrH0RrybzK1GkxnRhFzX
IBjVupiMJklleYzKZ6mxi+AmezYuSye6swHLVso+8pR/7HQJKTM1gSi/1Dthf1B90V+AAirc92uC
HacpK03G6t0Wwdm31Sh9Gd8iLrDBSofjjskajKYHmV1D1jfq+8h3F131KIwHSFd6jUIUw+nlQ9wZ
2e91fJyK9x5b8i/PjS8qqKXgO7NPufjwROLossAc53Q9tOhh2M2nkdqqGvcIqx3sLhnklwW2MS8O
2pLEZboyBclGSOOSASSL5rWOkEqRkG9tQi0xe5tlXKXTHD20GRi1dhBXlZvOL0QvEcHd3TP4CawI
Fx2CjgvUMneFMzqI0saHqE9QRRtZlrbBvylzGC1O40t1dTUBNp8D0v+aeU5P8ecFoRZLOIrVuKC6
POHWV8H5BzWeDTv7hwzGDwztkqVvfOBe3tku991+BQSbmSk7ReEFfpLtRjej24cfQwTs2783u0vX
sgueMgibPEOsenxUJJ3P61B+zqnuL7HLe+fQXd7ZtVShCi/VXvARBer0jYtzA5pLkaVUhc1XnbIK
vJniJ1EPtbjeBz9y9giHub0fBfFnopiX/uQVw2heJnhU/zz/ZN3TTplyXM7r2MrX3KGD0xUokUE0
PPv4nbN4vO1g0DPyMa60V5TyRfhTjNYuvj36nq83zmjdr9RuvG7ZEwFQeS2RyXtoFtanXhraE30i
475keoWug7npUGnwlCeCT8thph2tUAqPcft4BpfUFu/pk/RaVmKsm2O6+htj7Y+0o+7/pWD1Jn28
rOKlvdEfUJQu5gZXukAU2GkfgiU4VbQxp1ifJikHSBQD7ArYE4hoY6zaPtcOxwrHg3sKkArFRs72
eyTlrtUneeGfK/96tHeEVKl5r31N0OnbLh4sBr2YA9zxM7zsnCbx30o8v0WQUBjZuN0TtKeLeQtV
tvAi117N3+f4IpFJcm+lW30xYB1kQEABKbLqjih88ZH3jrKXfJ2tHURLxlgHOMsdiKlqgsALaCDA
GES0ecqqXFsh+Y77ViVupPrZ/96p7GLDCxfMb9njvSbPcl+kmIf+EZoEt5CaztwKRoczUpxhldhQ
uFPnQxaD7808g8rJy2Ln6BRSUIh4t2fPPHpzgD+jC0Q7I0reoY86e8PKev+UtofUIC94B+Md+Seo
BMCkyDoGu4z/bbO4jNGieH4u2lTxTOfssTCyCFCMKNOxPY6BelxZ0ZKtowpxqM6Uludazw56kBRp
bbirvrNhASBLEIPpsWJKXHz/fxuEj+LBiFeS7M93UJ6tT/TJp5A1XDaBvtJ+DR8CpFc1JdM1LKTw
eFpvDpbZwNoAJ6HZdoCVC7rGjznEMUfy7lUfwCf9BjsDDZvgaTBQKXQLwQflH/cG3B2lARnxwgvR
Ib/zKldN5Do/c+fNfu4BoKngM73KhWDPFBo9bvAAhpZxHXBBSOokNI8PINl2KgmwCPeJsWkqtq4s
ABUC4t3KNMjk2MT3jBtGofx0GfnNia0wY20SgYO06bqu/4T5WKoX8vQVskhg+9zgzghQJEnQDQy4
KsXxG0qViF3sR/FSmwWdNkr7rQywsB2Y8gtmWisOJt3kWw+fSE0twO0DNpm3V/3xoDHZeL3GNhHp
OybfdWE6cHly20FdtC0K1aCk24sz5g9NP+7SENKY83bWsM/uzMU/Z7+GnFcwptbqKCfv2owsk/PG
m2KQ+bTMAUsRYTRG/Y50zLeXxlmXz44dsrQ/CrlCG8fnTVTMBYr1UuxH9nlRINU8jYpT0agDGcmW
PJ/WEIiJQLBShfq30DwCCLDQtPohI/0evz+nZMeKl89Xni47YQroMn2jyl2klphZ0zi3vYd+akLK
Yn1GGE5NGDnZiKm+0r6j0txtA/KAK76OVqZ0sAtyKtGb/z/CHsYQ2ku0W4xxSTInUYRIs+L5ouBZ
WwgWv9eszVol06SjKIAnl3tPYqxzn6iDplNgn5SvAVcFXGXHup1zgQZt3NEysNq+yW+4Qqx5BHVo
7jInbBTys4okR4SQB2UDsz5v4bNbtVdx3mtspjD8c1phopou+3Xi1n9GhwS+473m7Bd+eEblKh0u
AWP9xnH0zQCtlPIDCMRfc4db7syuIEzgUiKUi0AIURMbmA5iPfnuBD2g/YZmNi5e/loVILP379wp
BGb3ooRe9zlRDhdGL/NRy6IDi6G9dsSAa06PVhebrrQpI5drqR+1myaK3Tms5JQ63JTkI9tPp2/X
GTL4VFpod6PrpROicvL3//mjQRJuMJ4X89BN7uxHZZ+pW62zh8uzGyQaDikuL/ZHPFeVRM6ZoGWb
qrcNuoss17OvBAw7+5noaH55VrVUGNT/CW5BTOXj+hKN+vwLudFJ4+7UiWhKUrbQUD/z/jVB2i8y
8LM2EBKApTG729V1OrCaYNVqD2g6RQYGnVn0ubDZADUskkT1y478le0imwTM5h8+5AFGR80oZ29c
/t60wWtdGqERIvcVioDtUOnvFapHAB+2WeN5klE5wqj6dCbPQ6C0Vy1bntkx5fBaGPC0tOXhTrG6
IRY+Yp03SqcCvJizIvccsBxIb3idcmr+aOj8qEJvfUXLUFTK2vnnzWEtG2Qg0yxgbjPCPugA9RJc
a4whBcNym8DmY66cYstsAwSexBnI3aPDyCyHC3tzjRVGspcy30yE1AzJu7wvRMcFjSEYpzvJYORz
ge+/b5K0tfz1JyBRGaVgP3ln5f9/Tj73RDbnUbJaw0YrXE9v4vMpueWEPViBrODLKX6Pirk4BRNJ
x2uMz02S2kHzeYFNFQrjPO3oKKJtf4YUp8r/ZHAdZ6eOShtslIpIbjNq7RdLTRRfXLnAnXQPkLMO
r42v/+VZL2Rn2UkJZ/NaUyRMuyPac9qGjy5sNmSwU1UNRutdw/6jbhIJV8BzeF3TIlGyHcYgK6Vl
beL9zyG+GQO0U+IVVHx3ur8txcTekjPPcCP+9MWmqfAJsgTXPNHu91rcoRMOdR7gRIL1eduyfxvL
1ocmH+9Ua6ADkN35Fk9km786OC/RotsgcGstKAr9akzu7Btfi8vxurDQar6+B53YXOQZrgpG5687
9IZdflReeothH/Iac0FX3KHUWelAHddQ1sPT+53hdi8IbvY9v+jePxIMOQsdtjv2tF8g5n2bfgNO
7nkZ1i6ftCCrE57mjBJlsZNIjBlqwgGTzUhQniwEtsGqlFH1NLNViw89oQHAiNwlcYmbakLhgzvp
V+0sBdYBEhZwT+w/DpHqkDqi6shY6f3iu/yzVBPsl5tB68gqAfYtdtc8ZiA34GVPYgnqcc1AJbUh
MaiF4U7EEKDP19A/ZJibaQgkdwrqaP/4CaDQ/J6PuO0vwn/Fa+cDyUEn2ajAh04SalK7Ghtiy8V9
Y7HkJkLY4ZZhS03yqyW+oPs7QoD+UQ7W1fv9mdSOuFAgBerRWq7gW0x77lh+hLYD19NTyVrpss1S
X+foQAjDsueL8Stod4DJ3szuAU1In7+/KmFauiDrWKg0rYBWPbu9eTWi94R4gHKCnjwaJKAXzNAw
TEwSHyygkyJwNxg4aiFnIwhaLsBA4UYyTuCNS+jE9ZyFINT9gzpqiVq8xtxnh95+oP5QMc5kGaS0
jFPrWlCfWqtOZPGnNrfRzlVGdqtcT2+AxykoYc9FSlHqpw49YMqhC6XXwA6zjsC3RJ7MD0nD6bGF
pSgRQDp72ESzy8+eg4XyJjvEfXSf1OGct42GngmgJksQLOqrd8tVhp4JHaLNTLbbV/y7x0AXbPTp
YNpOxg/xFn1bN9lykdbMQoubdrqpxRESWssatShkhb9Bt18qHmt/EoE0iLWWhJI4TlQumo/l+AER
Mj420tMXl8i+caqQ62hOYGC3dlM6CAWZMfQhA2SVlmk0qvlnWQfwBhNjplC8L/4U4Bqr6y+H9op9
uh9AkCtVJRIs7pfhSDMhcRn0RWG1GKJHtOfcj+/WEZWuDQqqK7oK45815R9WlkOlD+bHRLSGMbIC
6ITO7wLs/9WFHQ0IpEB0Mfre3agz+aGL9VCe+mFOj1WEsU6L5tSCkaNixKcX6II8aokghDu4jlxb
KEB6VZ03nfKxtsowjLaKNId+IwC0HDsXAoZvTZY/Pd1TWn4uj0yqRMF1K5pICFYnQnoAO1DFItYQ
A+G1tgBm2o/EA7Lp2s12euZ4EnjCgn0hXOSQx1R2mSjKgiFfrefBrKobtS6EQSPgAjDumNjSBGfq
tPjLRaTXxiUvDJDCwe+BdFVygqD6yDhSSgx8mbB8ncLAZw1Vl37POiBwXTrZX98P6ynkXlVWxqwm
oOci8DUROsHxhwXlv6aZq7Mks2aCbLy6CW+BjJvQK2F3aI+aFPnIV7Ot43C6+b2J8a5DE9M31wl1
+S3lPlk+uGRI6Mi/b294rKv6oPmXAlde3WbkJD4jaTUPM+j1UP4e4jpFRh9Rig+sGsOHKEr/Prn8
Zk67m3WRKr0Yg4UC0rgnOqGDaVjgsNKoBu0xKGPmsz6N1S8EGWuwTGFMArcjv4KyAo7YQ9KdUshX
l4JDPinlD7I6cb9Z30y+nXmDGCWnKVFd9Bjn5sW2UYxTveAcdSQyqogYj+IJVhCHEXFDpH+1LZC5
JKQwGxXU+2cX7g01lLEk9+X6RiQKBMvgx73bKBX+/upeqI4u5dCP7WZvBdooha5jEe3mA5WocEGS
f0gOhFpSdSMMLw/lydA/BZy58F3tXCk8NEQzo059p/UtrAIJzgQ/XCB45YJNr8r0HobKvMHOBJ9N
XOp1xgyWQSbkc5+EVAPym+Chv/1IMwPLSVr64hVA+a8VFliFQzE+KaxXBQ5Hhj2zYru2VqtNaZDn
Dwr9AfY5FkRTonkRGiQDnkrHw+8ClYkCvCkrYRNnMnGmlUd6pE0wL8vN7zh8fnzL8/FVLaXtbv8P
QSh/AkQgMvEkElvFxiBdvt7kw+rQqRJcIS/v0bk6we6N1VnKjhDD7uSjggeOPHFvZSOkDKKqv0jW
Fj8tbvzjg5zQJlj3I5SJr/hzfxr0dD4qsZSPNi6a/Z/uW1iCfxp4msTCZDwiLDX/vx7HjwLGzXps
QLz27yzd5PfoEfrVMQnfMwMHaDkgUtBhfdPHWI6l++gtTZs6LBXifR2hDsHLUA5K8i3BvSIYiKrh
NpgnjFWVD5CxQ9bTS9B4s1VjS/CbuoUfL4U6Sirn6J4zcQBGHULzC/+tpEWlApGYRuuEtJcDLhRI
mJ8SKEnC6nMm/ATEiri3Bka5IHu54Mm0DRKIBvk6oBZtamm6/YGqX61PuBxpTA7qzqeImvhwrv2M
6tLWWufqYfaghNuQyksewZwT7XcndnAbpYgxFnYNWo/DpWgb3jJDBS8QH9bKbz2McTdkGJT9y+RX
z1EL3q9P4wwIZZX5ljjRS9CI3YCTULaUgJSFHwaKUM6ioy19q1KIe++OmmGwgk2zB7bp6SQP298W
rPCCgul20NbY+5qUNDVFamr6SWXEsEuTqGBx1oSAtWH4Lhl9j0ckeD30ofF8X46Cte1vHBu46ahB
ZHpPrP3XP88F/Z+KSBmmKm3B6DDofpatuV7BnrG0WBtMXfosRwOdYWur58WnT3/YIy714z6/Zrav
H0mEovtRr5Z0SUFkxTyBtDlrz0osEdxuEWeLLB9rwBWAPdPt0yja5XU1Y0Z+1ZgRDjZ4ioUlPOJr
tQRu0ib0hgGIJbkwzxwKOrrBqZq7Bu4vrKBHHLx1F3KYyJjgQDROTK2lFGVOI9oUtXC4xvOAD9TR
3A4QLCOoMuJTwEJSBBfHvur5TQK8Q0YAyvSE29kOAGv36nUSPmcM7OPXIzO2BtR+uP+KeaBOEc4m
IQOuoujD2kmiMYp1j+ceBeUlXiUOHfFjHFr2r+unQPtzZRDr6IKqhTM5aEExeh+cFTHJy64q8CvD
srF9xey+Ubv6RhfaeYJU6Hnf68tMsc2PS65NMeuzmWTpKSH+50mQERpDz9EqMAFhj0hzis3BWulY
wznU1yFxSKD8WNi9L0VPHZdSq7yiIGxujAopwUy9jXnJqQHFrZUeh0SRj/L0d67DB49WDxogwqq/
k5N7qjOP/FS9ZNk+MYxuFgA8Hax6GUaeXXx6HVCx3duAKaPU4QDcgWjjUGaoJPyzRxrHATiKzV1n
3Uts85ksYiGK12VPlrf0yyGxE17eS8CMuSmRBaMgc2Ye84uAp3ZmG2dwA/EK/B8GCGgw1zSeM4fv
NpvT9yHBZkuwfn4yU59KA8NPw3I6E7+So3eYfWL4xXAYqRpZ6q7WZLNYyhzaGY7QDJlYSH9fAqwH
ruvTDDbLkRzVsHUV+nFcgjmpACpK9anY91eheuAeaK8SNag815vSCBjKMGANboB4URz+TrVnjIaj
oFqD6s2GayZPQb/CezLcKf9VeYjCoLy6E5lcLp9XYWGYo82CClRva6PHyQXjmNBBgDYBkrQQgRzr
e4XoXrVnpIBCqS98CN3tAvNHyzYRKsTReeV6ZN/cLvrcoqbKq+AkRFrZMwwATElNXX51MSTjTsic
lNQBCFjPOQXd8YsN69RV/PL5C/VcKQ8sKvamkB10sLncYUdEdJohZ4Wmp5oCifedsT0FK8/3tljb
yTlS6MHfk4LSke6sT9p/QJwsvoAfhAJGx4D+uL/8DAndeX1A+5LxAGf6wM9l7YWOVTzAQAYDmTHB
b373ZKlFV743zVt7zGEqjzjqoCtW5InTxKU3qjhabhfnA5bymjejEsvewDHsHXX4QaPtcsxInZJw
758ZJJwUYPeQJ283+zwdP/bHIHmPgeZRkSLobQht/wSSMiM6zoDjpBudS9A4dVp4XkgWQUAZrNKU
1Ag96AmW9Pp9v1pXjLel2KQj1KUQsr9T/dwjQVuPFCDSE7idmr5AicPLrtnq1n7meBM1L7ojrmQf
mn/GXnI9cQeiR0SK9KZwpPbH28YsGw/nD1dRu8/n9t/+DbpO4Bzzw55SPvzk5gYb6LhIZifwcKsM
T7yYEMF7w+/HR4vsgC5NCfJBg2eIsohnTvAoUsCFvwlT2j0DTJCYhp5y4gmXTyRqlQz0SMoRbaL6
D8sLIRk9QbOoALEtp3oUgqJJgFN8jvm6RFrRnPH4QYgRYD8JsqLoVJoVX1UT9BEXEevU3pW3FQDR
PMZYZXkQG7aeSYj9KKoHTu01EJ86A33BxbpBKbgOFEv+D0tWEqMK6Wy5SUEDOHwrGW6ggBB3I7QC
RwKiSPeguzWYxNWuOpKwxrsMrjfeqdHxlIeV7lRQZShpfG57+QHW8KU8wo45DLeniLFLlXnWJaGK
h2TAYiPaAFoUbpyZXYix8NcfSOCTwXeO0m/l7pfAB0YPMBwMp3vXbh13pbRcmOXl3Fzi91iBAvT3
mY81X1jFJ9WPt8DiT3EPRPXI6KkM0hvpWHXHCrEVTpboTOEMtlZMM0rMzNHBEuI++aBRIbtOC+Xt
vxSQ5ZAfKC6YXEQwgMOpybKR2uBELVPhzJ5y4fU3gcNGHd2uZL2kpoApwWmgI3rzVc4zKx0uEDpS
nqBGHC8g+atV4THe06ZwzPy7kB1xgsC1C7m2FVSEP110WVse/lHTVQ9Qz31MqVDOmwPO/eyg3lhf
I9dI8J1rD1eUWEkZXIbSY0ZY2Up1djsSlGW9CSxuSwSjZ8Mqens34UqAZ1IvWMhV4HHl3VR9Cwpv
nX8ygiDWbf8oZ4YF7Ku7SIOKxvrpvn3kUtIp/oygWyesp973vXD8lEbeZT/CKK7nE3EVXXoCN7f4
gFf3Olk3xDZzmXh0qNuL4UFF97mlUbYV3P5LWELz2lAOwNH8bFTpOjWzMZmtngZW1sFd0mjvbjWK
oZeKnghTdoPIQsKos+GWpQeSOfbFmxdZI/2Zj2mIW7rfUjA+5cA/vnGFVwWKsIIpfUeC8gveV52H
IQ6cBCacY3Dcu1IfOwo19bWGFtkKP6mgceDnh8Rlyo5a1zXpqDEgeqFjEclVJkz85dcJZICV4wKD
PnJN5x198rYu7lavqnb/lvbzL/EkcdH/xvvUgFZIEMVqB35N3sP2onTkd5Qzr40dNkKaFmwL8BXJ
mJc066tjj70yfe8/80NXzOb0PrOFIt0hffDKNI9ysgMGvVEQ3ABiDIT54DuvRBuASQlwmlOy+UZX
z6r/cOcAMkMwdrWwqMSL0jMH9KeBGVzSSNp/ki0+QHBzFd0WapBGXo0qzvDcAYDerRuEr/NUgJwJ
9UIOvunHYq26RuwHNeKCaoDyeAwWR04pYte5EkO+E/PdCrP32ZQy/KN/K85Qh75nLguHum/y2h3H
oaLTFpSWdUYcsa9G+kyQbpMHAR+vmL7eJj2AK477M8iCoeyPKbYoHZiPOwVS8GSfHNleDxEOpJtl
Q5xz6ztEqfkZt4quxWUw4/ZF1bqJ8vXb+/1d/DjWNoL/u+z2R4AGTosgBxYGC/b6a0Hc69bFG9pR
q2xLHLPliXTT2kwsIvfnlx6cga0pXrQKtCxgFdXThMOQGk8UxwdwXzMhqBUQn5K+OU8+jWyw7jFq
dD6ijpBhXR3ZfsGOYtn5Xdx/FPUDPnfXRz2GBbh4+tjlhtglw67wKGIhXkuFNoGZRNNa4P+GgBte
/blxKzNexLyyigee01EK31/MXhMRM9GDOGEA21X5p5MzplFFALQGMARP3BsjcC1oDGK4iBc7y0ab
NzJ/I6Tg5Bsoyx+Dj8HT9o7pk0dxmHe6INMx3jR+PK17ONS8clzHhieUrE9+u9sbXIpv2kq8Q0RO
7MH+xgJogLs3AUqaTgnsrLNaInUfro9ltmGLAbK89mNH313bMnJ7i1okkFOabxUYprJ6g41plpTi
2W11HK2NVRBDiQsb0Ujtn0vR7X+y9wM6AGpucklKTYuAt0MsJ8uLUZ/XACh9MFmSdoTq02y8uTKJ
8WScpxRBWcISj3W/ZCN/t+2FYcRnkpGdCokoZn1iF87jToi5Eqk6hwKn5QrmTa+Qc6UHuz31Vtw8
/I6l9cnQo4ry6/kPyPgV8aU9iUuM4NeFsNNsvjv+oByEtaXJC/BBYxXYbXWMF9lgIWcv6DIJ3b+K
NdH1xDdt5K3XDVHNr6Bj3mRbte6uiBR7Xfm9CQEl6CneBWxtZo8q0d+CUjnxXloJpPI+u2MOGEdU
QX4Leh9F5CRSfEGaL9oKi3aruUHjW2gOOgG27yZRJAeY+kE4PQHtQIlXKRvfDqMgHh+efEgeeFAT
UOpefftzdw2EYM4dyTIPHwuZsyvj/jSPiUPaKn7f4qpJSZmTn+/PohWrpts09S1Mkxsee7ZHetey
qHVrN2v/+Um6YM3WQWhOJIaooeIIokBNZXKAY1dzfkPF8Pt9CtRsqHMPO3retbZDpEsZzP5MjRQB
HGKV3t0jrdph6Mos1IvF5XsbnEUXRpXBl6OKm2dk7ilhIqpYrYeh2G+J+R5cCdQUaRrr5HGZNViD
zAoscKBnc9vLxHHaFS4RGZXx5kFbQ5+x4vg4FoENDlhGpoYz+c+kOZD8AtNj2rpxT3GvwT2MlFG1
+j3jqkt/QUO+jUU1ttJy6QNsRFy9UqKB1uOVLD97gIytH0USZW8XyqsY5KOEnJj3BZ3dELIwjCQ+
kcTujD6xFTsuQcmgbL6j5ipFlwkcomQinsWNg5bTBr0kq8OjOtqMPuHY7KvaBdt8+gS9ux08FvpO
dFnuXi0yehVXaueuduzu+rEM2BAbpJpcL1yHOgv5+sLSOVjfk/Kq3UewlTUVeYSUn0fjwdN+Ss9M
MOMs3IAAv+5B+0+NJNpDfse+EWUMIjY+fEKCqO9vtBFfCKwvDbKwKUohN3giL9SBl2lNAtlEPoUV
o0X2IQ/+5H0nJ/iqpxBPjIPiGpN8C+od6yuLoZ2psKW8ApufqWeeVOP7ygjIW/xp+2DF8PAjoiUW
93GehED3/Jd3KmOrYY9dW8N8gmeAHtEPhjpH3qEVVLk+NjVON36xFrCqb2nIu6Vuf1k0i7id88l9
MuJiOKT6zPAyP2JpufhAVreFIKT5KACZ8DaIXnYe0r77ksBsRWeyUsbh0tIQGMf826/vj2ygyIfs
Yo2Yr+MZRD2gvCUEP5BXxbnz+F+Xa4FE4/XP012aaw9ESQtWOhIi1qKVhWGHNJu5ObSj8LjmJ2YJ
y8lC8SMbZORVjuufGp3QbBB1toLy+eLObigPSnfANivVBFM9Isz3+fU0Oj80mo10c9CpeS+Sz8Me
j0fMQPxm9QBDuKz9kSe7SyFTyc1AnMKbNmCz49e3PIviw035/b9+PUWOAUQTcsrCewn7o48MnKMl
Q0MLasV/XzroHwlfVhqVu3/tNvx7CKsynHf/3t8Fdm7uSvryHSY0W5wqY6lupnleV+bhQNJ+3omG
77eAWg04SlGnZi7ulia2oilctf9SKGP9mRUzHeZ6Kdsev64jSRytp8anHJC15nNyUY2TmQHxUPSt
2RwVkPq1AocAVb0/lUhOlX4lRh+PWpFCrm0cEAGQZ5jbwvXyj6y7L+ycjlkEteLjFm3856Zzbrs2
J6rbcBDZs64BMaB/g96eYVnZto1MiyLzMyjY6V1o/5OEb9P3yROhvQ25Ud5F7qdyONe2QGJSyQPc
0EBjcBoHQWpA1cEAQ5hE2qZQ6SC7iZNDn8bMlRR11zkBviLobCxQiXXXsAiyqkpiYEugYF/ee9df
xX4yexHrZWVZ7MCyRYGhhXRG76pb2xWOTXJr8At5rosdAW6B/stF+3tdhiFtqvmOlImLrt/4zHbW
hMLn4IwJY0MhSojJdL+d2Ds4dXRAuMnuIH5PrXOoHACUyQJmGy8Z8XQ3KK+qV72Xa9xViDWz8Het
u1clOfcRn1n43yNAHNjonBZ/YatdgTgpXwuxsJWvf7mrN9Kka6RtO9FLMek1iaNLsFIZgMm6Bgkb
EfHXaQa51e+jdZqJpJ5QNwxORhngS0eRMDN1DU5xvo122OtTf0IXxor+myLAAivgmX+SVK7M6agw
0Zurk5qReVIpfhfGn5gtSvpZY9pVKoMR3eicv7OWbPfMCwQJZlYeOcHkCDde+a7YhTfKSLFEf7e8
z/HRsGjhB5ZDkswNBSWqkEAr3aduDm5iA/Hsw3uZMxAKTcenb6Apwr+HHhlMszTENL2TTEMNdjW2
diTcMcHKPxAjdyr+yx2O9uQgYrVkqjb+Ox6CGkTcaERDDcMpQAc2xsGCLKYYFFhw7jkLpnBMCzkN
Re2f8FwLfIz6cVvkMIfQlYMESrftJ8Z+ZeVHxH9nekj69ua1dW5T6EAdZhrzBUKiehr11igQAlw+
GT8ngHxmiX2jcdFY/bDTdROi/FNTqJ7fGMkCnUkjH0abGo3zELpfbqmLpTWnZ7S+JbfVX1Y3rewN
piecWySWlhvAcFrmy4bqCrVbiCnPvukWUAXPuuRijFzu7/zRnuOMLAcZwGLETqVZt767QVvJcRfx
tzPA4k2fLKeByUGxkjC7XUUTBU5koTyBghcJ9rcaD9LZuJ1q9W6IfNMx1t7oXUr6aZGeK3bQKNcz
EyCE113BoM6v7cTsqRZPi8yYvOaZNE9hp/e+QU3GnyeukzuauX9i9D8HvFvOmbOmvDhS+Kqii88h
dYLH67HztwqA2SFNUhyZH1jOxx1cZXjoy6PD2iU4LaxO+ic50QSd3S+YHsSyPAUc0Eypw1iNtQUj
mHizp963VyklfysvYmqgL7+kckkeFwPudYUTTqQpzIKTN8EFa/jyM68XulrfD5fgquueTfgIdVrI
8LkQuEtAbz3h1oAbvJ3JvvPsQsQTwIOVaiRFXOLwC4pnj8CqdT0Jbulm8sIM8QG0ble3JhMBREwi
+0sdH3p6XRUfK76FpN7iRp6a+L4cyfcW+/mrXXsQv9pn2odZfcw/OyCcHqrXfBTY0hBMgOYLSO6y
ZajO1D4B+yeI9LOzTbrk2jA/CULztU+TXSc+a2Co02iNhiG3PbqLcMsIvGQsUGF2BKEHsnclxs0P
3p+l1ZWnpm4Ux4QXi3BigJwGaUbaw8/UpAdbLzqNR+gOhOyi+G4b4+hQKpKYJALx/RQQrjlSQEUV
X6ylyyOJc5SvVZqdM72KgXBxaeFOxMeRXGcu9w2HtorDj/4zUJTD7Dj7lejJ12ZYQYn93sg+zFPV
nSamGPv5Hfc4mVECKn+LwrFPUVUSNbmuo2uzA4ZWqtQjJzTdiSnHK0KM6x/Z8SkI1AFlbcZmgbIt
kFh+QLyHN4MI0J7cXstPjWrzWTexdntCzj1fQDtoivaXN7HdPHCwj0NTP1Q0JGrMKzdnJxPB+TCY
ddj6caSbtKW4H91Zb3plZ61ZV2030LBizPHtYU2kivMjD/ujo7T7oIo3ViZ9Aia4G7y61J2lCIPs
DRcI+YyDtq5rQiOUiTGX8IRdKuJ1cn4tkfZSx2AGNH5Fvpg3d4ELYlK0Znc8wH7qsq/vYTn7eR/8
llylIIENI+JMz2/X09m1D+fx2kXDWFCWnXDmO6ulDvdnu3DeU7Elge0FXdyOUy2aZbU7yweXxqIu
nzoWtBTAcsinZ8A/4qUBUQcXk/bXaeSgQ6GrzgggNVcS37xWX/DsRolq/cowAPdYdGTawI85tDxw
7o/EYImwu/5WIa22lZ8d5bYhTCm+zjHwRu8cQbSEc3TD1aWPH8CI4c5GTvruRaML78Ce43s/rKuz
e6Ujum/Jp9v5RKTEKeOABmQlIb3GB7imccKxS1LlXJ6OapRRTQdspTXwqVlQ2a8rozOCCo0zJrUT
lIrAR+9r9BDw9IjzbdvjtFxLrsfmHNHWrgaalwJJ9BehIKW13e+p7FDPYcVqtUpfA7A+odSbzPzu
QTivvarGKsvI4hMdtnZ8xyjyEZLqctErpjgStFDPGrwP4DQ6/GKe9qBHEFLNOMXhCcaRkUbAoO9W
c3NJWYmQ3FUpmeAnUwrVGqY9ak0lvHF/sirvnXdt6um5FlZwfKBxp+lg7OnxrLQA89jIEuujppkP
NZU/NvG3+1xtT3d3AK5EuWaSvG8/K8RFQxOfi2UznWFc0FgtW+r7RF/WLvoUwGulU2zE0L6Udj1q
iW0oRqihGndudxHk4Ndcyvs3/Q3qwpzr21BpmHi4fAtM6OjIy+gsAQLHgC/BfFG9y1cgtmU/KhcF
NoAZfuBoHiomBNRZKVYSQixsxfsQCKzED42Jlk3p4CSZt56Bys+bJsf1W5Xf48bXoHW2UPgkwfrj
HF64PMDYyZsY4dXn0MG16I491O5Mgo1BT2oaPEmP3xy6K8+lu/aWZ5yIuubrBJP0/qHWcvGP5CXN
PwxCJkc1wwIeGu5cTRKv4NqjOvA6SI67Q8QFrXMZcXhv7vcZGdk3R7urHaxTksPqn6SxZ9cWG0hd
gber4qHnRRnrSdoDvL7YcnAZjuznIQhEGeO30nZ0sa4Too2tA9PrGq+F+Br6mE+M+ABC6mLkt8fd
n4lg/gHUErKih7e/oQcbtKITRllS/YHeym3DTE5EdKR1OJDfl4k5j5BAXMXXHKp0mrdGCznLYHQs
0FPEsIlkOfWgx3eI4Uvrd285/QGvJkYLIHAgkv14Q5dS7YrnlHpx6KGpN0zH+7U0XPRCCoepF4jY
DGbBAtBOxLGEKwlYK+cRGFMEgfNoDRErxNL/yaAh+ei371JtHt/6LILs0NuVZQoLjd/5MRXS2d9q
sap8SesGsZjsmpn93Nowvlcq4CA09Oq7/mwWZNCI4r0huYwQV5M4bSENfc8H0++7eW1Wht1YYDf5
SZmswx2gvAl9HY+844aM+k92UYxb2wzEdI/L5OwkUs/+qd47Ia2YK2cBRbU5Hcp9TjsITU3WWuz+
PhS3UTVL/Dw2e3Yf+YzDWwOK+HmVSneSJysSGI9I+WxGLLCr/pvxtrSrx+k13gxBPHTRFgz3ifXj
AbFUYJZaP0A9sHJxtcUaYPxeZlnF2alGclyswQWlAcJRAqMmZU3hhcm58FeDlkQjslG9B46Vj9Rk
tldQHoWJvAMqfNUlDIio0KkqGx1WVf4oq4x3q/zD2ovyaXlmxvUGPD/H83JHQnq4Ia8JSIhttY4r
u/NCjO/UQjb98tKwUpba04SqZ44oBSVVAr89Z/oUFe1wwzALWc7E2985EXvckDoB22wGcZvIYYcD
ySzH1knXhqJNuWdVCph2eA3At80iosPbyk5L/i+WyLllMHKWhxxuIixN6gdiIDElREhgkAmiv+SI
joLcokqzWfhXHRC1QnH2cmGxWZ5aYVdwo3rGcxrolbVmh3AVKnv75l+M4XFDaOJx9UIkJDM1Gs0A
qMRdKmd6Nl63oibmJOdBebviQl/4P79g8jVqLPv48x/yNpfZJhTgeM5iS9tHCTjnzYdOZHbPhVos
dTiAt+11E02ZD/O59FCXDyyW7EbRTSQNyEOu8H6kPGxKBlOJ6+xIwQ2gVsTGuB+Jc+mkbkahz9cW
v9Jz/hDP0SO2kZMO9YEa/k2NCOJQc3uSmLrTUCJbstUjg4fohGK9KMU/mV/ySZRvNOWLxDxoenky
yLLBhMr//mGbtl9FVUgyTZH8noO8JoH0hbA0+OSSCdAcQO3i7STJqR5Pq4PhxHgr6aiZjj5PWPSZ
mHae780ZQIc3eEwUu6oESd7jtih68OKFL76MgFUVyOehMwXDwhviaEzcPvrflsBRA+oUjZ0FOLul
mRK1QWU1vmPiJZYMNL6HAWJnTnA18CRwRlbS6GAC7+KA9klIaA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
