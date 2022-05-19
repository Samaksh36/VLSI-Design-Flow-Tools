/* Generated by Yosys 0.11+10 (git sha1 4871d8f19, clang 6.0.0-1ubuntu2 -fPIC -Os) */

(* top =  1  *)
(* src = "Q5.v:1.1-14.10" *)
module Q5(A, B, C, Sum, Carry);
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
  (* src = "Q5.v:2.8-2.9" *)
  input A;
  (* src = "Q5.v:3.8-3.9" *)
  input B;
  (* src = "Q5.v:4.8-4.9" *)
  input C;
  (* src = "Q5.v:6.9-6.14" *)
  output Carry;
  (* src = "Q5.v:5.9-5.12" *)
  output Sum;
  INV_X1 _12_ (
    .I(B),
    .ZN(_08_)
  );
  INV_X1 _13_ (
    .I(C),
    .ZN(_09_)
  );
  INV_X1 _14_ (
    .I(A),
    .ZN(_10_)
  );
  NAND2_X1 _15_ (
    .A1(_09_),
    .A2(_10_),
    .ZN(_11_)
  );
  INV_X1 _16_ (
    .I(_11_),
    .ZN(_00_)
  );
  NAND2_X1 _17_ (
    .A1(C),
    .A2(A),
    .ZN(_01_)
  );
  INV_X1 _18_ (
    .I(_01_),
    .ZN(_02_)
  );
  NAND2_X1 _19_ (
    .A1(_08_),
    .A2(_01_),
    .ZN(_03_)
  );
  NAND2_X1 _20_ (
    .A1(_11_),
    .A2(_03_),
    .ZN(_04_)
  );
  INV_X1 _21_ (
    .I(_04_),
    .ZN(Carry)
  );
  NAND2_X1 _22_ (
    .A1(_08_),
    .A2(_00_),
    .ZN(_05_)
  );
  NAND2_X1 _23_ (
    .A1(B),
    .A2(_02_),
    .ZN(_06_)
  );
  NAND2_X1 _24_ (
    .A1(_04_),
    .A2(_05_),
    .ZN(_07_)
  );
  NAND2_X1 _25_ (
    .A1(_06_),
    .A2(_07_),
    .ZN(Sum)
  );
endmodule