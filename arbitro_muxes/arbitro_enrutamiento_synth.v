/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* cells_not_processed =  1  *)
(* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:5" *)
module arbitro_enrutamiento_synth(VC0, VC1, clk, reset_L, VC0_empty, VC1_empty, D1_pause, D0_pause, VC1_pop_synth, VC0_pop_synth, D0_push, D1_push, D0_out_synth, D1_out_synth);
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:9" *)
  output [5:0] D0_out_synth;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:7" *)
  input D0_pause;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:8" *)
  output D0_push;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:9" *)
  output [5:0] D1_out_synth;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:7" *)
  input D1_pause;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:8" *)
  output D1_push;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:5" *)
  input [5:0] VC0;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:7" *)
  input VC0_empty;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:8" *)
  output VC0_pop_synth;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:5" *)
  input [5:0] VC1;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:7" *)
  input VC1_empty;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:8" *)
  output VC1_pop_synth;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:6" *)
  input clk;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:11" *)
  wire pop_delay_VC0;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:11" *)
  wire pop_delay_VC1;
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:6" *)
  input reset_L;
  (* module_not_derived = 32'd1 *)
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:13" *)
  arbitro_mux_synth u_arbitro_mux_synthes (
    .D0_out_synth(D0_out_synth),
    .D0_push(D0_push),
    .D1_out_synth(D1_out_synth),
    .D1_push(D1_push),
    .VC0(VC0),
    .VC0_empty(VC0_empty),
    .VC1(VC1),
    .VC1_empty(VC1_empty),
    .clk(clk),
    .pop_delay_VC0(pop_delay_VC0),
    .pop_delay_VC1(pop_delay_VC1),
    .reset_L(reset_L)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "./arbitro_mux_synthes/arbitro_enrutamiento_synth.v:29" *)
  logica_pops_synth u_logica_pops_synth (
    .D0_pause(D0_pause),
    .D1_pause(D1_pause),
    .VC0_empty(VC0_empty),
    .VC0_pop_synth(VC0_pop_synth),
    .VC1_empty(VC1_empty),
    .VC1_pop_synth(VC1_pop_synth),
    .clk(clk),
    .pop_delay_VC0(pop_delay_VC0),
    .pop_delay_VC1(pop_delay_VC1),
    .reset_L(reset_L)
  );
endmodule

(* cells_not_processed =  1  *)
(* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:1" *)
module arbitro_mux_synth(reset_L, clk, VC0, VC1, pop_delay_VC0, pop_delay_VC1, VC0_empty, VC1_empty, D0_out_synth, D1_out_synth, D0_push, D1_push);
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  wire [5:0] _000_;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  wire _001_;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  wire [5:0] _002_;
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
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:6" *)
  output [5:0] D0_out_synth;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:7" *)
  output D0_push;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:6" *)
  output [5:0] D1_out_synth;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:7" *)
  output D1_push;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:2" *)
  input [5:0] VC0;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:5" *)
  input VC0_empty;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:3" *)
  input [5:0] VC1;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:5" *)
  input VC1_empty;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:1" *)
  input clk;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:4" *)
  input pop_delay_VC0;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:4" *)
  input pop_delay_VC1;
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:1" *)
  input reset_L;
  NOT _058_ (
    .A(VC1[4]),
    .Y(_003_)
  );
  NOT _059_ (
    .A(VC0[4]),
    .Y(_004_)
  );
  NOT _060_ (
    .A(reset_L),
    .Y(_005_)
  );
  NOT _061_ (
    .A(VC1[0]),
    .Y(_006_)
  );
  NOT _062_ (
    .A(VC1[1]),
    .Y(_007_)
  );
  NOT _063_ (
    .A(VC1[2]),
    .Y(_008_)
  );
  NOT _064_ (
    .A(VC1[3]),
    .Y(_009_)
  );
  NOT _065_ (
    .A(VC1[5]),
    .Y(_010_)
  );
  NOT _066_ (
    .A(VC0[0]),
    .Y(_011_)
  );
  NOT _067_ (
    .A(VC0[1]),
    .Y(_012_)
  );
  NOT _068_ (
    .A(VC0[2]),
    .Y(_013_)
  );
  NOT _069_ (
    .A(VC0[3]),
    .Y(_014_)
  );
  NOT _070_ (
    .A(VC0[5]),
    .Y(_015_)
  );
  NOR _071_ (
    .A(VC0_empty),
    .B(VC0[4]),
    .Y(_016_)
  );
  NAND _072_ (
    .A(pop_delay_VC0),
    .B(_016_),
    .Y(_017_)
  );
  NAND _073_ (
    .A(pop_delay_VC1),
    .B(VC0_empty),
    .Y(_018_)
  );
  NOR _074_ (
    .A(VC1_empty),
    .B(_018_),
    .Y(_019_)
  );
  NAND _075_ (
    .A(_003_),
    .B(_019_),
    .Y(_020_)
  );
  NAND _076_ (
    .A(_017_),
    .B(_020_),
    .Y(_021_)
  );
  NAND _077_ (
    .A(reset_L),
    .B(_021_),
    .Y(_022_)
  );
  NOT _078_ (
    .A(_022_),
    .Y(_001_)
  );
  NOR _079_ (
    .A(VC0_empty),
    .B(_004_),
    .Y(_023_)
  );
  NAND _080_ (
    .A(pop_delay_VC0),
    .B(_023_),
    .Y(_024_)
  );
  NOR _081_ (
    .A(_011_),
    .B(_024_),
    .Y(_025_)
  );
  NAND _082_ (
    .A(VC1[4]),
    .B(_019_),
    .Y(_026_)
  );
  NOR _083_ (
    .A(_006_),
    .B(_026_),
    .Y(_027_)
  );
  NOR _084_ (
    .A(_025_),
    .B(_027_),
    .Y(_028_)
  );
  NOR _085_ (
    .A(_005_),
    .B(_028_),
    .Y(_002_[0])
  );
  NOR _086_ (
    .A(_012_),
    .B(_024_),
    .Y(_029_)
  );
  NOR _087_ (
    .A(_007_),
    .B(_026_),
    .Y(_030_)
  );
  NOR _088_ (
    .A(_029_),
    .B(_030_),
    .Y(_031_)
  );
  NOR _089_ (
    .A(_005_),
    .B(_031_),
    .Y(_002_[1])
  );
  NOR _090_ (
    .A(_013_),
    .B(_024_),
    .Y(_032_)
  );
  NOR _091_ (
    .A(_008_),
    .B(_026_),
    .Y(_033_)
  );
  NOR _092_ (
    .A(_032_),
    .B(_033_),
    .Y(_034_)
  );
  NOR _093_ (
    .A(_005_),
    .B(_034_),
    .Y(_002_[2])
  );
  NOR _094_ (
    .A(_014_),
    .B(_024_),
    .Y(_035_)
  );
  NOR _095_ (
    .A(_009_),
    .B(_026_),
    .Y(_036_)
  );
  NOR _096_ (
    .A(_035_),
    .B(_036_),
    .Y(_037_)
  );
  NOR _097_ (
    .A(_005_),
    .B(_037_),
    .Y(_002_[3])
  );
  NAND _098_ (
    .A(_024_),
    .B(_026_),
    .Y(_038_)
  );
  NAND _099_ (
    .A(reset_L),
    .B(_038_),
    .Y(_039_)
  );
  NOT _100_ (
    .A(_039_),
    .Y(_002_[4])
  );
  NOR _101_ (
    .A(_015_),
    .B(_024_),
    .Y(_040_)
  );
  NOR _102_ (
    .A(_010_),
    .B(_026_),
    .Y(_041_)
  );
  NOR _103_ (
    .A(_040_),
    .B(_041_),
    .Y(_042_)
  );
  NOR _104_ (
    .A(_005_),
    .B(_042_),
    .Y(_002_[5])
  );
  NOR _105_ (
    .A(_011_),
    .B(_017_),
    .Y(_043_)
  );
  NOR _106_ (
    .A(_006_),
    .B(_020_),
    .Y(_044_)
  );
  NOR _107_ (
    .A(_043_),
    .B(_044_),
    .Y(_045_)
  );
  NOR _108_ (
    .A(_005_),
    .B(_045_),
    .Y(_000_[0])
  );
  NOR _109_ (
    .A(_012_),
    .B(_017_),
    .Y(_046_)
  );
  NOR _110_ (
    .A(_007_),
    .B(_020_),
    .Y(_047_)
  );
  NOR _111_ (
    .A(_046_),
    .B(_047_),
    .Y(_048_)
  );
  NOR _112_ (
    .A(_005_),
    .B(_048_),
    .Y(_000_[1])
  );
  NOR _113_ (
    .A(_013_),
    .B(_017_),
    .Y(_049_)
  );
  NOR _114_ (
    .A(_008_),
    .B(_020_),
    .Y(_050_)
  );
  NOR _115_ (
    .A(_049_),
    .B(_050_),
    .Y(_051_)
  );
  NOR _116_ (
    .A(_005_),
    .B(_051_),
    .Y(_000_[2])
  );
  NOR _117_ (
    .A(_014_),
    .B(_017_),
    .Y(_052_)
  );
  NOR _118_ (
    .A(_009_),
    .B(_020_),
    .Y(_053_)
  );
  NOR _119_ (
    .A(_052_),
    .B(_053_),
    .Y(_054_)
  );
  NOR _120_ (
    .A(_005_),
    .B(_054_),
    .Y(_000_[3])
  );
  NOR _121_ (
    .A(_015_),
    .B(_017_),
    .Y(_055_)
  );
  NOR _122_ (
    .A(_010_),
    .B(_020_),
    .Y(_056_)
  );
  NOR _123_ (
    .A(_055_),
    .B(_056_),
    .Y(_057_)
  );
  NOR _124_ (
    .A(_005_),
    .B(_057_),
    .Y(_000_[5])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _125_ (
    .C(clk),
    .D(_000_[0]),
    .Q(D0_out_synth[0])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _126_ (
    .C(clk),
    .D(_000_[1]),
    .Q(D0_out_synth[1])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _127_ (
    .C(clk),
    .D(_000_[2]),
    .Q(D0_out_synth[2])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _128_ (
    .C(clk),
    .D(_000_[3]),
    .Q(D0_out_synth[3])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _129_ (
    .C(clk),
    .D(_000_[5]),
    .Q(D0_out_synth[5])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _130_ (
    .C(clk),
    .D(_002_[0]),
    .Q(D1_out_synth[0])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _131_ (
    .C(clk),
    .D(_002_[1]),
    .Q(D1_out_synth[1])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _132_ (
    .C(clk),
    .D(_002_[2]),
    .Q(D1_out_synth[2])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _133_ (
    .C(clk),
    .D(_002_[3]),
    .Q(D1_out_synth[3])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _134_ (
    .C(clk),
    .D(_002_[5]),
    .Q(D1_out_synth[5])
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _135_ (
    .C(clk),
    .D(_001_),
    .Q(D0_push)
  );
  (* src = "./arbitro_mux_synthes/arbitro_mux_synth.v:9" *)
  DFF _136_ (
    .C(clk),
    .D(_002_[4]),
    .Q(D1_push)
  );
  assign _000_[4] = 1'h0;
  assign D0_out_synth[4] = 1'h0;
  assign D1_out_synth[4] = D1_push;
endmodule

(* cells_not_processed =  1  *)
(* src = "./arbitro_mux_synthes/logica_pops_synth.v:1" *)
module logica_pops_synth(VC0_empty, VC1_empty, D0_pause, D1_pause, clk, reset_L, VC0_pop_synth, VC1_pop_synth, pop_delay_VC0, pop_delay_VC1);
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:4" *)
  wire _00_;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:4" *)
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:1" *)
  input D0_pause;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:1" *)
  input D1_pause;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:1" *)
  input VC0_empty;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:2" *)
  output VC0_pop_synth;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:1" *)
  input VC1_empty;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:2" *)
  output VC1_pop_synth;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:1" *)
  input clk;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:2" *)
  output pop_delay_VC0;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:2" *)
  output pop_delay_VC1;
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:1" *)
  input reset_L;
  NOT _08_ (
    .A(reset_L),
    .Y(_02_)
  );
  NOT _09_ (
    .A(VC1_empty),
    .Y(_03_)
  );
  NOT _10_ (
    .A(D1_pause),
    .Y(_04_)
  );
  NOR _11_ (
    .A(_02_),
    .B(D0_pause),
    .Y(_05_)
  );
  NAND _12_ (
    .A(_04_),
    .B(_05_),
    .Y(_06_)
  );
  NAND _13_ (
    .A(VC0_empty),
    .B(_03_),
    .Y(_07_)
  );
  NOR _14_ (
    .A(_06_),
    .B(_07_),
    .Y(VC1_pop_synth)
  );
  NOR _15_ (
    .A(VC0_empty),
    .B(_06_),
    .Y(VC0_pop_synth)
  );
  NOR _16_ (
    .A(_06_),
    .B(_07_),
    .Y(_01_)
  );
  NOR _17_ (
    .A(VC0_empty),
    .B(_06_),
    .Y(_00_)
  );
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:4" *)
  DFF _18_ (
    .C(clk),
    .D(_00_),
    .Q(pop_delay_VC0)
  );
  (* src = "./arbitro_mux_synthes/logica_pops_synth.v:4" *)
  DFF _19_ (
    .C(clk),
    .D(_01_),
    .Q(pop_delay_VC1)
  );
endmodule
