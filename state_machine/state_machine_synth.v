/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* dynports =  1  *)
(* top =  1  *)
(* src = "state_machine_synth.v:1" *)
module state_machine_synth(clk, reset, init, umbral_MFs, umbral_VCs, umbral_Ds, empty_main_fifo, empty_fifo_VC0, empty_fifo_VC1, empty_fifo_D0, empty_fifo_D1, error_main, error_VC0, error_VC1, error_D0, error_D1, error_out, next_error, active_out, next_active, idle_out, next_idle, present_state, next_state, umbral_MFs_out, umbral_VCs_out, umbral_Ds_out, next_umbral_MFs, next_umbral_VCs, next_umbral_Ds);
  (* src = "state_machine_synth.v:46" *)
  wire _000_;
  (* src = "state_machine_synth.v:46" *)
  wire _001_;
  (* src = "state_machine_synth.v:46" *)
  wire _002_;
  (* src = "state_machine_synth.v:46" *)
  wire [3:0] _003_;
  (* src = "state_machine_synth.v:46" *)
  wire [3:0] _004_;
  (* src = "state_machine_synth.v:46" *)
  wire [3:0] _005_;
  (* src = "state_machine_synth.v:46" *)
  wire [3:0] _006_;
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
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  (* src = "state_machine_synth.v:36" *)
  wire [4:0] FIFO_empties;
  (* src = "state_machine_synth.v:37" *)
  wire [4:0] FIFO_errors;
  (* src = "state_machine_synth.v:20" *)
  output active_out;
  (* src = "state_machine_synth.v:2" *)
  input clk;
  (* src = "state_machine_synth.v:11" *)
  input empty_fifo_D0;
  (* src = "state_machine_synth.v:12" *)
  input empty_fifo_D1;
  (* src = "state_machine_synth.v:9" *)
  input empty_fifo_VC0;
  (* src = "state_machine_synth.v:10" *)
  input empty_fifo_VC1;
  (* src = "state_machine_synth.v:8" *)
  input empty_main_fifo;
  (* src = "state_machine_synth.v:16" *)
  input error_D0;
  (* src = "state_machine_synth.v:17" *)
  input error_D1;
  (* src = "state_machine_synth.v:14" *)
  input error_VC0;
  (* src = "state_machine_synth.v:15" *)
  input error_VC1;
  (* src = "state_machine_synth.v:13" *)
  input error_main;
  (* src = "state_machine_synth.v:18" *)
  output error_out;
  (* src = "state_machine_synth.v:22" *)
  output idle_out;
  (* src = "state_machine_synth.v:4" *)
  input init;
  (* src = "state_machine_synth.v:21" *)
  output next_active;
  (* src = "state_machine_synth.v:19" *)
  output next_error;
  (* src = "state_machine_synth.v:23" *)
  output next_idle;
  (* src = "state_machine_synth.v:25" *)
  output [3:0] next_state;
  (* src = "state_machine_synth.v:31" *)
  output [3:0] next_umbral_Ds;
  (* src = "state_machine_synth.v:29" *)
  output [3:0] next_umbral_MFs;
  (* src = "state_machine_synth.v:30" *)
  output [3:0] next_umbral_VCs;
  (* src = "state_machine_synth.v:24" *)
  output [3:0] present_state;
  (* src = "state_machine_synth.v:3" *)
  input reset;
  (* src = "state_machine_synth.v:7" *)
  input [3:0] umbral_Ds;
  (* src = "state_machine_synth.v:28" *)
  output [3:0] umbral_Ds_out;
  (* src = "state_machine_synth.v:5" *)
  input [3:0] umbral_MFs;
  (* src = "state_machine_synth.v:26" *)
  output [3:0] umbral_MFs_out;
  (* src = "state_machine_synth.v:6" *)
  input [3:0] umbral_VCs;
  (* src = "state_machine_synth.v:27" *)
  output [3:0] umbral_VCs_out;
  NOT _128_ (
    .A(present_state[1]),
    .Y(_110_)
  );
  NOT _129_ (
    .A(present_state[2]),
    .Y(_111_)
  );
  NOT _130_ (
    .A(error_main),
    .Y(_112_)
  );
  NOT _131_ (
    .A(active_out),
    .Y(_113_)
  );
  NOT _132_ (
    .A(reset),
    .Y(_114_)
  );
  NOT _133_ (
    .A(umbral_Ds_out[0]),
    .Y(_115_)
  );
  NOT _134_ (
    .A(umbral_Ds[0]),
    .Y(_116_)
  );
  NOT _135_ (
    .A(umbral_Ds_out[1]),
    .Y(_117_)
  );
  NOT _136_ (
    .A(umbral_Ds[1]),
    .Y(_118_)
  );
  NOT _137_ (
    .A(umbral_Ds_out[2]),
    .Y(_119_)
  );
  NOT _138_ (
    .A(umbral_Ds[2]),
    .Y(_120_)
  );
  NOT _139_ (
    .A(umbral_Ds_out[3]),
    .Y(_121_)
  );
  NOT _140_ (
    .A(umbral_Ds[3]),
    .Y(_122_)
  );
  NOT _141_ (
    .A(umbral_VCs_out[0]),
    .Y(_123_)
  );
  NOT _142_ (
    .A(umbral_VCs[0]),
    .Y(_124_)
  );
  NOT _143_ (
    .A(umbral_VCs_out[1]),
    .Y(_125_)
  );
  NOT _144_ (
    .A(umbral_VCs[1]),
    .Y(_126_)
  );
  NOT _145_ (
    .A(umbral_VCs_out[2]),
    .Y(_127_)
  );
  NOT _146_ (
    .A(umbral_VCs[2]),
    .Y(_007_)
  );
  NOT _147_ (
    .A(umbral_VCs_out[3]),
    .Y(_008_)
  );
  NOT _148_ (
    .A(umbral_VCs[3]),
    .Y(_009_)
  );
  NOT _149_ (
    .A(umbral_MFs_out[0]),
    .Y(_010_)
  );
  NOT _150_ (
    .A(umbral_MFs[0]),
    .Y(_011_)
  );
  NOT _151_ (
    .A(umbral_MFs_out[1]),
    .Y(_012_)
  );
  NOT _152_ (
    .A(umbral_MFs[1]),
    .Y(_013_)
  );
  NOT _153_ (
    .A(umbral_MFs_out[2]),
    .Y(_014_)
  );
  NOT _154_ (
    .A(umbral_MFs[2]),
    .Y(_015_)
  );
  NOT _155_ (
    .A(umbral_MFs_out[3]),
    .Y(_016_)
  );
  NOT _156_ (
    .A(umbral_MFs[3]),
    .Y(_017_)
  );
  NOT _157_ (
    .A(empty_fifo_D1),
    .Y(_018_)
  );
  NOT _158_ (
    .A(empty_fifo_D0),
    .Y(_019_)
  );
  NOT _159_ (
    .A(empty_main_fifo),
    .Y(_020_)
  );
  NOR _160_ (
    .A(present_state[2]),
    .B(present_state[3]),
    .Y(_021_)
  );
  NAND _161_ (
    .A(present_state[0]),
    .B(_021_),
    .Y(_022_)
  );
  NOR _162_ (
    .A(present_state[1]),
    .B(_022_),
    .Y(_023_)
  );
  NOR _163_ (
    .A(_114_),
    .B(init),
    .Y(_024_)
  );
  NAND _164_ (
    .A(reset),
    .B(_023_),
    .Y(_025_)
  );
  NOR _165_ (
    .A(init),
    .B(_025_),
    .Y(_026_)
  );
  NAND _166_ (
    .A(_023_),
    .B(_024_),
    .Y(_027_)
  );
  NOR _167_ (
    .A(_116_),
    .B(_027_),
    .Y(_028_)
  );
  NOR _168_ (
    .A(_115_),
    .B(_026_),
    .Y(_029_)
  );
  NOR _169_ (
    .A(_028_),
    .B(_029_),
    .Y(_030_)
  );
  NOT _170_ (
    .A(_030_),
    .Y(next_umbral_Ds[0])
  );
  NOR _171_ (
    .A(_118_),
    .B(_027_),
    .Y(_031_)
  );
  NOR _172_ (
    .A(_117_),
    .B(_026_),
    .Y(_032_)
  );
  NOR _173_ (
    .A(_031_),
    .B(_032_),
    .Y(_033_)
  );
  NOT _174_ (
    .A(_033_),
    .Y(next_umbral_Ds[1])
  );
  NOR _175_ (
    .A(_120_),
    .B(_027_),
    .Y(_034_)
  );
  NOR _176_ (
    .A(_119_),
    .B(_026_),
    .Y(_035_)
  );
  NOR _177_ (
    .A(_034_),
    .B(_035_),
    .Y(_036_)
  );
  NOT _178_ (
    .A(_036_),
    .Y(next_umbral_Ds[2])
  );
  NOR _179_ (
    .A(_122_),
    .B(_027_),
    .Y(_037_)
  );
  NOR _180_ (
    .A(_121_),
    .B(_026_),
    .Y(_038_)
  );
  NOR _181_ (
    .A(_037_),
    .B(_038_),
    .Y(_039_)
  );
  NOT _182_ (
    .A(_039_),
    .Y(next_umbral_Ds[3])
  );
  NOR _183_ (
    .A(_124_),
    .B(_027_),
    .Y(_040_)
  );
  NOR _184_ (
    .A(_123_),
    .B(_026_),
    .Y(_041_)
  );
  NOR _185_ (
    .A(_040_),
    .B(_041_),
    .Y(_042_)
  );
  NOT _186_ (
    .A(_042_),
    .Y(next_umbral_VCs[0])
  );
  NOR _187_ (
    .A(_126_),
    .B(_027_),
    .Y(_043_)
  );
  NOR _188_ (
    .A(_125_),
    .B(_026_),
    .Y(_044_)
  );
  NOR _189_ (
    .A(_043_),
    .B(_044_),
    .Y(_045_)
  );
  NOT _190_ (
    .A(_045_),
    .Y(next_umbral_VCs[1])
  );
  NOR _191_ (
    .A(_007_),
    .B(_027_),
    .Y(_046_)
  );
  NOR _192_ (
    .A(_127_),
    .B(_026_),
    .Y(_047_)
  );
  NOR _193_ (
    .A(_046_),
    .B(_047_),
    .Y(_048_)
  );
  NOT _194_ (
    .A(_048_),
    .Y(next_umbral_VCs[2])
  );
  NOR _195_ (
    .A(_009_),
    .B(_027_),
    .Y(_049_)
  );
  NOR _196_ (
    .A(_008_),
    .B(_026_),
    .Y(_050_)
  );
  NOR _197_ (
    .A(_049_),
    .B(_050_),
    .Y(_051_)
  );
  NOT _198_ (
    .A(_051_),
    .Y(next_umbral_VCs[3])
  );
  NOR _199_ (
    .A(_011_),
    .B(_027_),
    .Y(_052_)
  );
  NOR _200_ (
    .A(_010_),
    .B(_026_),
    .Y(_053_)
  );
  NOR _201_ (
    .A(_052_),
    .B(_053_),
    .Y(_054_)
  );
  NOT _202_ (
    .A(_054_),
    .Y(next_umbral_MFs[0])
  );
  NOR _203_ (
    .A(_013_),
    .B(_027_),
    .Y(_055_)
  );
  NOR _204_ (
    .A(_012_),
    .B(_026_),
    .Y(_056_)
  );
  NOR _205_ (
    .A(_055_),
    .B(_056_),
    .Y(_057_)
  );
  NOT _206_ (
    .A(_057_),
    .Y(next_umbral_MFs[1])
  );
  NOR _207_ (
    .A(_015_),
    .B(_027_),
    .Y(_058_)
  );
  NOR _208_ (
    .A(_014_),
    .B(_026_),
    .Y(_059_)
  );
  NOR _209_ (
    .A(_058_),
    .B(_059_),
    .Y(_060_)
  );
  NOT _210_ (
    .A(_060_),
    .Y(next_umbral_MFs[2])
  );
  NOR _211_ (
    .A(_017_),
    .B(_027_),
    .Y(_061_)
  );
  NOR _212_ (
    .A(_016_),
    .B(_026_),
    .Y(_062_)
  );
  NOR _213_ (
    .A(_061_),
    .B(_062_),
    .Y(_063_)
  );
  NOT _214_ (
    .A(_063_),
    .Y(next_umbral_MFs[3])
  );
  NOR _215_ (
    .A(_114_),
    .B(_054_),
    .Y(_005_[0])
  );
  NOR _216_ (
    .A(_114_),
    .B(_057_),
    .Y(_005_[1])
  );
  NOR _217_ (
    .A(_114_),
    .B(_060_),
    .Y(_005_[2])
  );
  NOR _218_ (
    .A(_114_),
    .B(_063_),
    .Y(_005_[3])
  );
  NOR _219_ (
    .A(_114_),
    .B(_030_),
    .Y(_004_[0])
  );
  NOR _220_ (
    .A(_114_),
    .B(_033_),
    .Y(_004_[1])
  );
  NOR _221_ (
    .A(_114_),
    .B(_036_),
    .Y(_004_[2])
  );
  NOR _222_ (
    .A(_114_),
    .B(_039_),
    .Y(_004_[3])
  );
  NOR _223_ (
    .A(_114_),
    .B(_042_),
    .Y(_006_[0])
  );
  NOR _224_ (
    .A(_114_),
    .B(_045_),
    .Y(_006_[1])
  );
  NOR _225_ (
    .A(_114_),
    .B(_048_),
    .Y(_006_[2])
  );
  NOR _226_ (
    .A(_114_),
    .B(_051_),
    .Y(_006_[3])
  );
  NOR _227_ (
    .A(present_state[1]),
    .B(present_state[0]),
    .Y(_064_)
  );
  NOR _228_ (
    .A(_111_),
    .B(present_state[3]),
    .Y(_065_)
  );
  NAND _229_ (
    .A(_064_),
    .B(_065_),
    .Y(_066_)
  );
  NOT _230_ (
    .A(_066_),
    .Y(_067_)
  );
  NOR _231_ (
    .A(error_D1),
    .B(error_D0),
    .Y(_068_)
  );
  NOT _232_ (
    .A(_068_),
    .Y(_069_)
  );
  NOR _233_ (
    .A(error_VC1),
    .B(error_VC0),
    .Y(_070_)
  );
  NAND _234_ (
    .A(_112_),
    .B(_070_),
    .Y(_071_)
  );
  NOR _235_ (
    .A(_069_),
    .B(_071_),
    .Y(_072_)
  );
  NOT _236_ (
    .A(_072_),
    .Y(_073_)
  );
  NOR _237_ (
    .A(_066_),
    .B(_073_),
    .Y(_074_)
  );
  NAND _238_ (
    .A(_067_),
    .B(_072_),
    .Y(_075_)
  );
  NAND _239_ (
    .A(_113_),
    .B(_075_),
    .Y(_076_)
  );
  NAND _240_ (
    .A(present_state[3]),
    .B(reset),
    .Y(_077_)
  );
  NOT _241_ (
    .A(_077_),
    .Y(_078_)
  );
  NAND _242_ (
    .A(_111_),
    .B(_064_),
    .Y(_079_)
  );
  NOT _243_ (
    .A(_079_),
    .Y(_080_)
  );
  NOR _244_ (
    .A(_077_),
    .B(_079_),
    .Y(_081_)
  );
  NAND _245_ (
    .A(_078_),
    .B(_080_),
    .Y(_082_)
  );
  NAND _246_ (
    .A(_076_),
    .B(_082_),
    .Y(_083_)
  );
  NOT _247_ (
    .A(_083_),
    .Y(next_active)
  );
  NOR _248_ (
    .A(_114_),
    .B(_083_),
    .Y(_000_)
  );
  NOR _249_ (
    .A(present_state[3]),
    .B(_079_),
    .Y(_084_)
  );
  NAND _250_ (
    .A(reset),
    .B(_084_),
    .Y(_085_)
  );
  NAND _251_ (
    .A(_027_),
    .B(_085_),
    .Y(next_state[0])
  );
  NOR _252_ (
    .A(_110_),
    .B(present_state[0]),
    .Y(_086_)
  );
  NAND _253_ (
    .A(present_state[1]),
    .B(_021_),
    .Y(_087_)
  );
  NOR _254_ (
    .A(present_state[0]),
    .B(_087_),
    .Y(_088_)
  );
  NAND _255_ (
    .A(_021_),
    .B(_086_),
    .Y(_089_)
  );
  NOR _256_ (
    .A(_018_),
    .B(_019_),
    .Y(_090_)
  );
  NAND _257_ (
    .A(empty_fifo_VC1),
    .B(empty_fifo_VC0),
    .Y(_091_)
  );
  NOR _258_ (
    .A(_020_),
    .B(_091_),
    .Y(_092_)
  );
  NAND _259_ (
    .A(empty_fifo_VC1),
    .B(empty_main_fifo),
    .Y(_093_)
  );
  NAND _260_ (
    .A(empty_fifo_VC0),
    .B(_090_),
    .Y(_094_)
  );
  NOR _261_ (
    .A(_093_),
    .B(_094_),
    .Y(_095_)
  );
  NAND _262_ (
    .A(_090_),
    .B(_092_),
    .Y(_096_)
  );
  NOR _263_ (
    .A(_089_),
    .B(_096_),
    .Y(_097_)
  );
  NAND _264_ (
    .A(_088_),
    .B(_095_),
    .Y(_098_)
  );
  NAND _265_ (
    .A(init),
    .B(_023_),
    .Y(_099_)
  );
  NAND _266_ (
    .A(_098_),
    .B(_099_),
    .Y(next_state[1])
  );
  NAND _267_ (
    .A(reset),
    .B(next_state[1]),
    .Y(_100_)
  );
  NOT _268_ (
    .A(_100_),
    .Y(_003_[1])
  );
  NAND _269_ (
    .A(reset),
    .B(_088_),
    .Y(_101_)
  );
  NOR _270_ (
    .A(_095_),
    .B(_101_),
    .Y(_102_)
  );
  NOR _271_ (
    .A(_074_),
    .B(_102_),
    .Y(_103_)
  );
  NOT _272_ (
    .A(_103_),
    .Y(next_state[2])
  );
  NOR _273_ (
    .A(_114_),
    .B(_103_),
    .Y(_003_[2])
  );
  NOR _274_ (
    .A(_066_),
    .B(_072_),
    .Y(_104_)
  );
  NAND _275_ (
    .A(reset),
    .B(_104_),
    .Y(_105_)
  );
  NAND _276_ (
    .A(_082_),
    .B(_105_),
    .Y(next_state[3])
  );
  NOR _277_ (
    .A(idle_out),
    .B(_097_),
    .Y(_106_)
  );
  NOR _278_ (
    .A(_074_),
    .B(_106_),
    .Y(next_idle)
  );
  NAND _279_ (
    .A(reset),
    .B(next_idle),
    .Y(_107_)
  );
  NOT _280_ (
    .A(_107_),
    .Y(_002_)
  );
  NOR _281_ (
    .A(error_out),
    .B(_081_),
    .Y(_108_)
  );
  NOR _282_ (
    .A(_084_),
    .B(_108_),
    .Y(next_error)
  );
  NAND _283_ (
    .A(reset),
    .B(next_error),
    .Y(_109_)
  );
  NOT _284_ (
    .A(_109_),
    .Y(_001_)
  );
  NAND _285_ (
    .A(_027_),
    .B(_085_),
    .Y(_003_[0])
  );
  NAND _286_ (
    .A(_082_),
    .B(_105_),
    .Y(_003_[3])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _287_ (
    .C(clk),
    .D(_001_),
    .Q(error_out)
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _288_ (
    .C(clk),
    .D(_000_),
    .Q(active_out)
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _289_ (
    .C(clk),
    .D(_002_),
    .Q(idle_out)
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _290_ (
    .C(clk),
    .D(_003_[0]),
    .Q(present_state[0])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _291_ (
    .C(clk),
    .D(_003_[1]),
    .Q(present_state[1])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _292_ (
    .C(clk),
    .D(_003_[2]),
    .Q(present_state[2])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _293_ (
    .C(clk),
    .D(_003_[3]),
    .Q(present_state[3])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _294_ (
    .C(clk),
    .D(_005_[0]),
    .Q(umbral_MFs_out[0])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _295_ (
    .C(clk),
    .D(_005_[1]),
    .Q(umbral_MFs_out[1])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _296_ (
    .C(clk),
    .D(_005_[2]),
    .Q(umbral_MFs_out[2])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _297_ (
    .C(clk),
    .D(_005_[3]),
    .Q(umbral_MFs_out[3])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _298_ (
    .C(clk),
    .D(_006_[0]),
    .Q(umbral_VCs_out[0])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _299_ (
    .C(clk),
    .D(_006_[1]),
    .Q(umbral_VCs_out[1])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _300_ (
    .C(clk),
    .D(_006_[2]),
    .Q(umbral_VCs_out[2])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _301_ (
    .C(clk),
    .D(_006_[3]),
    .Q(umbral_VCs_out[3])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _302_ (
    .C(clk),
    .D(_004_[0]),
    .Q(umbral_Ds_out[0])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _303_ (
    .C(clk),
    .D(_004_[1]),
    .Q(umbral_Ds_out[1])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _304_ (
    .C(clk),
    .D(_004_[2]),
    .Q(umbral_Ds_out[2])
  );
  (* src = "state_machine_synth.v:46" *)
  DFF _305_ (
    .C(clk),
    .D(_004_[3]),
    .Q(umbral_Ds_out[3])
  );
  assign FIFO_empties = { empty_main_fifo, empty_fifo_VC0, empty_fifo_VC1, empty_fifo_D0, empty_fifo_D1 };
  assign FIFO_errors = { error_main, error_VC0, error_VC1, error_D0, error_D1 };
endmodule
