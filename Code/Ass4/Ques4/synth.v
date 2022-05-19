/* Generated by Yosys 0.11+10 (git sha1 4871d8f19, clang 6.0.0-1ubuntu2 -fPIC -Os) */

(* top =  1  *)
(* src = "MyFSM.v:1.1-43.10" *)
module MyFSM(in, clk, rst, out);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  (* src = "MyFSM.v:5.11-5.13" *)
  wire [2:0] cS;
  (* src = "MyFSM.v:2.11-2.14" *)
  input clk;
  (* src = "MyFSM.v:2.7-2.9" *)
  input in;
  (* src = "MyFSM.v:6.11-6.13" *)
  wire [2:0] nS;
  (* src = "MyFSM.v:3.8-3.11" *)
  output out;
  (* src = "MyFSM.v:2.16-2.19" *)
  input rst;
  INV_X1 _12_ (
    .I(rst),
    .ZN(_01_)
  );
  BUF_X8 _13_ (
    .I(_01_),
    .Z(_00_)
  );
  INV_X2 _14_ (
    .I(cS[2]),
    .ZN(_02_)
  );
  NOR4_X2 _15_ (
    .A1(_02_),
    .A2(cS[1]),
    .A3(cS[0]),
    .A4(in),
    .ZN(_03_)
  );
  BUF_X8 _16_ (
    .I(_03_),
    .Z(out)
  );
  INV_X16 _17_ (
    .I(cS[1]),
    .ZN(_04_)
  );
  NOR3_X2 _18_ (
    .A1(cS[2]),
    .A2(_04_),
    .A3(cS[0]),
    .ZN(_05_)
  );
  AND4_X1 _19_ (
    .A1(_02_),
    .A2(_04_),
    .A3(cS[0]),
    .A4(in),
    .Z(_06_)
  );
  NOR2_X2 _20_ (
    .A1(_05_),
    .A2(_06_),
    .ZN(_07_)
  );
  BUF_X12 _21_ (
    .I(_07_),
    .Z(nS[0])
  );
  INV_X1 _22_ (
    .I(in),
    .ZN(_08_)
  );
  NOR4_X1 _23_ (
    .A1(cS[2]),
    .A2(_04_),
    .A3(cS[0]),
    .A4(_08_),
    .ZN(_09_)
  );
  OR2_X2 _24_ (
    .A1(_06_),
    .A2(_09_),
    .Z(_10_)
  );
  BUF_X16 _25_ (
    .I(_10_),
    .Z(nS[1])
  );
  AND2_X2 _26_ (
    .A1(_08_),
    .A2(_05_),
    .Z(_11_)
  );
  BUF_X12 _27_ (
    .I(_11_),
    .Z(nS[2])
  );
  (* src = "MyFSM.v:37.1-42.4" *)
  DFFSNQ_X1 _28_ (
    .CLK(clk),
    .D(nS[0]),
    .Q(cS[0]),
    .SN(_00_)
  );
  (* src = "MyFSM.v:37.1-42.4" *)
  DFFRNQ_X1 _29_ (
    .CLK(clk),
    .D(nS[1]),
    .Q(cS[1]),
    .RN(_00_)
  );
  (* src = "MyFSM.v:37.1-42.4" *)
  DFFRNQ_X1 _30_ (
    .CLK(clk),
    .D(nS[2]),
    .Q(cS[2]),
    .RN(_00_)
  );
endmodule