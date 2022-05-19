/* Generated by Yosys 0.11+10 (git sha1 4871d8f19, clang 6.0.0-1ubuntu2 -fPIC -Os) */

(* top =  1  *)
(* src = "Q3a.v:1.1-14.10" *)
module Q3a(sel, a, b, x, y, z);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  (* src = "Q3a.v:2.27-2.28" *)
  input [3:0] a;
  (* src = "Q3a.v:2.40-2.41" *)
  input [3:0] b;
  (* src = "Q3a.v:2.11-2.14" *)
  input sel;
  (* src = "Q3a.v:2.53-2.54" *)
  input [3:0] x;
  (* src = "Q3a.v:2.67-2.68" *)
  input [3:0] y;
  (* src = "Q3a.v:2.86-2.87" *)
  output [7:0] z;
  MUX2_X1 _060_ (
    .I0(a[0]),
    .I1(x[0]),
    .S(sel),
    .Z(_000_)
  );
  MUX2_X1 _061_ (
    .I0(b[0]),
    .I1(y[0]),
    .S(sel),
    .Z(_001_)
  );
  AND2_X1 _062_ (
    .A1(_000_),
    .A2(_001_),
    .Z(z[0])
  );
  MUX2_X1 _063_ (
    .I0(b[1]),
    .I1(y[1]),
    .S(sel),
    .Z(_002_)
  );
  MUX2_X1 _064_ (
    .I0(a[1]),
    .I1(x[1]),
    .S(sel),
    .Z(_003_)
  );
  AND3_X1 _065_ (
    .A1(z[0]),
    .A2(_002_),
    .A3(_003_),
    .Z(_004_)
  );
  AOI22_X1 _066_ (
    .A1(_000_),
    .A2(_002_),
    .B1(_003_),
    .B2(_001_),
    .ZN(_005_)
  );
  NOR2_X1 _067_ (
    .A1(_004_),
    .A2(_005_),
    .ZN(z[1])
  );
  MUX2_X1 _068_ (
    .I0(b[2]),
    .I1(y[2]),
    .S(sel),
    .Z(_006_)
  );
  NAND2_X1 _069_ (
    .A1(_000_),
    .A2(_006_),
    .ZN(_007_)
  );
  MUX2_X1 _070_ (
    .I0(a[2]),
    .I1(x[2]),
    .S(sel),
    .Z(_008_)
  );
  NAND2_X1 _071_ (
    .A1(_002_),
    .A2(_008_),
    .ZN(_009_)
  );
  AND4_X1 _072_ (
    .A1(_001_),
    .A2(_002_),
    .A3(_003_),
    .A4(_008_),
    .Z(_010_)
  );
  NAND4_X1 _073_ (
    .A1(_001_),
    .A2(_002_),
    .A3(_003_),
    .A4(_008_),
    .ZN(_011_)
  );
  AOI22_X1 _074_ (
    .A1(_002_),
    .A2(_003_),
    .B1(_008_),
    .B2(_001_),
    .ZN(_012_)
  );
  NOR2_X1 _075_ (
    .A1(_010_),
    .A2(_012_),
    .ZN(_013_)
  );
  XNOR2_X1 _076_ (
    .A1(_007_),
    .A2(_013_),
    .ZN(_014_)
  );
  AND2_X1 _077_ (
    .A1(_004_),
    .A2(_014_),
    .Z(_015_)
  );
  NOR2_X1 _078_ (
    .A1(_004_),
    .A2(_014_),
    .ZN(_016_)
  );
  NOR2_X1 _079_ (
    .A1(_015_),
    .A2(_016_),
    .ZN(z[2])
  );
  MUX2_X1 _080_ (
    .I0(b[3]),
    .I1(y[3]),
    .S(sel),
    .Z(_017_)
  );
  NAND2_X1 _081_ (
    .A1(_000_),
    .A2(_017_),
    .ZN(_018_)
  );
  OAI21_X1 _082_ (
    .A1(_007_),
    .A2(_012_),
    .B(_011_),
    .ZN(_019_)
  );
  NAND2_X1 _083_ (
    .A1(_003_),
    .A2(_006_),
    .ZN(_020_)
  );
  MUX2_X1 _084_ (
    .I0(a[3]),
    .I1(x[3]),
    .S(sel),
    .Z(_021_)
  );
  NAND2_X1 _085_ (
    .A1(_002_),
    .A2(_021_),
    .ZN(_022_)
  );
  AND4_X1 _086_ (
    .A1(_001_),
    .A2(_002_),
    .A3(_008_),
    .A4(_021_),
    .Z(_023_)
  );
  NAND4_X1 _087_ (
    .A1(_001_),
    .A2(_002_),
    .A3(_008_),
    .A4(_021_),
    .ZN(_024_)
  );
  AOI22_X1 _088_ (
    .A1(_002_),
    .A2(_008_),
    .B1(_021_),
    .B2(_001_),
    .ZN(_025_)
  );
  OR3_X1 _089_ (
    .A1(_020_),
    .A2(_023_),
    .A3(_025_),
    .Z(_026_)
  );
  OAI21_X1 _090_ (
    .A1(_023_),
    .A2(_025_),
    .B(_020_),
    .ZN(_027_)
  );
  AND3_X1 _091_ (
    .A1(_019_),
    .A2(_026_),
    .A3(_027_),
    .Z(_028_)
  );
  NAND3_X1 _092_ (
    .A1(_019_),
    .A2(_026_),
    .A3(_027_),
    .ZN(_029_)
  );
  AOI21_X1 _093_ (
    .A1(_026_),
    .A2(_027_),
    .B(_019_),
    .ZN(_030_)
  );
  OR3_X1 _094_ (
    .A1(_018_),
    .A2(_028_),
    .A3(_030_),
    .Z(_031_)
  );
  OAI21_X1 _095_ (
    .A1(_028_),
    .A2(_030_),
    .B(_018_),
    .ZN(_032_)
  );
  AND3_X1 _096_ (
    .A1(_015_),
    .A2(_031_),
    .A3(_032_),
    .Z(_033_)
  );
  NAND3_X1 _097_ (
    .A1(_015_),
    .A2(_031_),
    .A3(_032_),
    .ZN(_034_)
  );
  OAI21_X1 _098_ (
    .A1(_018_),
    .A2(_030_),
    .B(_029_),
    .ZN(_035_)
  );
  NAND2_X1 _099_ (
    .A1(_003_),
    .A2(_017_),
    .ZN(_036_)
  );
  OAI21_X1 _100_ (
    .A1(_020_),
    .A2(_025_),
    .B(_024_),
    .ZN(_037_)
  );
  NAND2_X1 _101_ (
    .A1(_006_),
    .A2(_008_),
    .ZN(_038_)
  );
  NAND2_X1 _102_ (
    .A1(_006_),
    .A2(_021_),
    .ZN(_039_)
  );
  XOR2_X1 _103_ (
    .A1(_022_),
    .A2(_038_),
    .Z(_040_)
  );
  NAND2_X1 _104_ (
    .A1(_037_),
    .A2(_040_),
    .ZN(_041_)
  );
  XNOR2_X1 _105_ (
    .A1(_037_),
    .A2(_040_),
    .ZN(_042_)
  );
  XOR2_X1 _106_ (
    .A1(_036_),
    .A2(_042_),
    .Z(_043_)
  );
  NAND2_X1 _107_ (
    .A1(_035_),
    .A2(_043_),
    .ZN(_044_)
  );
  XNOR2_X1 _108_ (
    .A1(_035_),
    .A2(_043_),
    .ZN(_045_)
  );
  XNOR2_X1 _109_ (
    .A1(_033_),
    .A2(_045_),
    .ZN(z[4])
  );
  OAI21_X1 _110_ (
    .A1(_034_),
    .A2(_045_),
    .B(_044_),
    .ZN(_046_)
  );
  OAI21_X1 _111_ (
    .A1(_036_),
    .A2(_042_),
    .B(_041_),
    .ZN(_047_)
  );
  AOI21_X1 _112_ (
    .A1(_002_),
    .A2(_008_),
    .B(_039_),
    .ZN(_048_)
  );
  NAND2_X1 _113_ (
    .A1(_008_),
    .A2(_017_),
    .ZN(_049_)
  );
  XNOR2_X1 _114_ (
    .A1(_048_),
    .A2(_049_),
    .ZN(_050_)
  );
  NOR2_X1 _115_ (
    .A1(_047_),
    .A2(_050_),
    .ZN(_051_)
  );
  XNOR2_X1 _116_ (
    .A1(_047_),
    .A2(_050_),
    .ZN(_052_)
  );
  XNOR2_X1 _117_ (
    .A1(_046_),
    .A2(_052_),
    .ZN(z[5])
  );
  NAND2_X1 _118_ (
    .A1(_017_),
    .A2(_021_),
    .ZN(_053_)
  );
  AOI21_X1 _119_ (
    .A1(_009_),
    .A2(_049_),
    .B(_039_),
    .ZN(_054_)
  );
  NAND3_X1 _120_ (
    .A1(_017_),
    .A2(_021_),
    .A3(_054_),
    .ZN(_055_)
  );
  XOR2_X1 _121_ (
    .A1(_053_),
    .A2(_054_),
    .Z(_056_)
  );
  AOI22_X1 _122_ (
    .A1(_035_),
    .A2(_043_),
    .B1(_047_),
    .B2(_050_),
    .ZN(_057_)
  );
  OR2_X1 _123_ (
    .A1(_051_),
    .A2(_057_),
    .Z(_058_)
  );
  XOR2_X1 _124_ (
    .A1(_056_),
    .A2(_058_),
    .Z(z[6])
  );
  AOI21_X1 _125_ (
    .A1(_031_),
    .A2(_032_),
    .B(_015_),
    .ZN(_059_)
  );
  NOR2_X1 _126_ (
    .A1(_033_),
    .A2(_059_),
    .ZN(z[3])
  );
  OAI21_X1 _127_ (
    .A1(_056_),
    .A2(_058_),
    .B(_055_),
    .ZN(z[7])
  );
endmodule
