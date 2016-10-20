  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 9;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (heli_q8_P)
    ;%
      section.nData     = 31;
      section.data(31)  = dumData; %prealloc
      
	  ;% heli_q8_P.A_p4p2
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_P.B_p4p2
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 36;
	
	  ;% heli_q8_P.C_p4p2
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 48;
	
	  ;% heli_q8_P.Joystick_gain_x
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 66;
	
	  ;% heli_q8_P.Joystick_gain_y
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 67;
	
	  ;% heli_q8_P.K_p3p2
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 68;
	
	  ;% heli_q8_P.K_p3p3
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 74;
	
	  ;% heli_q8_P.K_pd
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 84;
	
	  ;% heli_q8_P.K_pp
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 85;
	
	  ;% heli_q8_P.K_rp
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 86;
	
	  ;% heli_q8_P.L
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 87;
	
	  ;% heli_q8_P.P_p3p2
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 105;
	
	  ;% heli_q8_P.P_p3p3
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 109;
	
	  ;% heli_q8_P.V_zero_offset
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 113;
	
	  ;% heli_q8_P.HILInitialize_analog_input_maxi
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 114;
	
	  ;% heli_q8_P.HILInitialize_analog_input_mini
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 115;
	
	  ;% heli_q8_P.HILInitialize_analog_output_max
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 116;
	
	  ;% heli_q8_P.HILInitialize_analog_output_min
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 117;
	
	  ;% heli_q8_P.HILInitialize_final_analog_outp
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 118;
	
	  ;% heli_q8_P.HILInitialize_final_pwm_outputs
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 119;
	
	  ;% heli_q8_P.HILInitialize_initial_analog_ou
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 120;
	
	  ;% heli_q8_P.HILInitialize_initial_pwm_outpu
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 121;
	
	  ;% heli_q8_P.HILInitialize_pwm_frequency
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 122;
	
	  ;% heli_q8_P.HILInitialize_pwm_leading_deadb
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 123;
	
	  ;% heli_q8_P.HILInitialize_pwm_trailing_dead
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 124;
	
	  ;% heli_q8_P.HILInitialize_set_other_outputs
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 125;
	
	  ;% heli_q8_P.HILInitialize_set_other_outpu_m
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 126;
	
	  ;% heli_q8_P.HILInitialize_set_other_outpu_k
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 127;
	
	  ;% heli_q8_P.HILInitialize_set_other_outpu_j
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 128;
	
	  ;% heli_q8_P.HILInitialize_watchdog_analog_o
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 129;
	
	  ;% heli_q8_P.HILInitialize_watchdog_pwm_outp
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 130;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% heli_q8_P.HILReadEncoderTimebase_clock
	  section.data(1).logicalSrcIdx = 31;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_P.HILInitialize_hardware_clocks
	  section.data(2).logicalSrcIdx = 32;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_q8_P.HILInitialize_initial_encoder_c
	  section.data(3).logicalSrcIdx = 33;
	  section.data(3).dtTransOffset = 4;
	
	  ;% heli_q8_P.HILInitialize_pwm_alignment
	  section.data(4).logicalSrcIdx = 34;
	  section.data(4).dtTransOffset = 5;
	
	  ;% heli_q8_P.HILInitialize_pwm_configuration
	  section.data(5).logicalSrcIdx = 35;
	  section.data(5).dtTransOffset = 6;
	
	  ;% heli_q8_P.HILInitialize_pwm_modes
	  section.data(6).logicalSrcIdx = 36;
	  section.data(6).dtTransOffset = 7;
	
	  ;% heli_q8_P.HILInitialize_pwm_polarity
	  section.data(7).logicalSrcIdx = 37;
	  section.data(7).dtTransOffset = 8;
	
	  ;% heli_q8_P.HILInitialize_watchdog_digital_
	  section.data(8).logicalSrcIdx = 38;
	  section.data(8).dtTransOffset = 9;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% heli_q8_P.HILInitialize_analog_input_chan
	  section.data(1).logicalSrcIdx = 39;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_P.HILInitialize_analog_output_cha
	  section.data(2).logicalSrcIdx = 40;
	  section.data(2).dtTransOffset = 8;
	
	  ;% heli_q8_P.HILReadEncoderTimebase_channels
	  section.data(3).logicalSrcIdx = 41;
	  section.data(3).dtTransOffset = 16;
	
	  ;% heli_q8_P.HILWriteAnalog_channels
	  section.data(4).logicalSrcIdx = 42;
	  section.data(4).dtTransOffset = 19;
	
	  ;% heli_q8_P.HILInitialize_encoder_channels
	  section.data(5).logicalSrcIdx = 43;
	  section.data(5).dtTransOffset = 21;
	
	  ;% heli_q8_P.HILInitialize_pwm_channels
	  section.data(6).logicalSrcIdx = 44;
	  section.data(6).dtTransOffset = 29;
	
	  ;% heli_q8_P.HILInitialize_quadrature
	  section.data(7).logicalSrcIdx = 45;
	  section.data(7).dtTransOffset = 37;
	
	  ;% heli_q8_P.HILReadEncoderTimebase_samples_
	  section.data(8).logicalSrcIdx = 46;
	  section.data(8).dtTransOffset = 38;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 44;
      section.data(44)  = dumData; %prealloc
      
	  ;% heli_q8_P.HILInitialize_active
	  section.data(1).logicalSrcIdx = 47;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_P.HILInitialize_final_digital_out
	  section.data(2).logicalSrcIdx = 48;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_q8_P.HILInitialize_initial_digital_o
	  section.data(3).logicalSrcIdx = 49;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_q8_P.HILInitialize_set_analog_input_
	  section.data(4).logicalSrcIdx = 50;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_q8_P.HILInitialize_set_analog_inpu_m
	  section.data(5).logicalSrcIdx = 51;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_q8_P.HILInitialize_set_analog_output
	  section.data(6).logicalSrcIdx = 52;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_q8_P.HILInitialize_set_analog_outp_b
	  section.data(7).logicalSrcIdx = 53;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_q8_P.HILInitialize_set_analog_outp_e
	  section.data(8).logicalSrcIdx = 54;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_q8_P.HILInitialize_set_analog_outp_j
	  section.data(9).logicalSrcIdx = 55;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_q8_P.HILInitialize_set_analog_outp_c
	  section.data(10).logicalSrcIdx = 56;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_q8_P.HILInitialize_set_analog_out_ex
	  section.data(11).logicalSrcIdx = 57;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_q8_P.HILInitialize_set_analog_outp_p
	  section.data(12).logicalSrcIdx = 58;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_q8_P.HILInitialize_set_clock_frequen
	  section.data(13).logicalSrcIdx = 59;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_q8_P.HILInitialize_set_clock_frequ_e
	  section.data(14).logicalSrcIdx = 60;
	  section.data(14).dtTransOffset = 13;
	
	  ;% heli_q8_P.HILInitialize_set_clock_params_
	  section.data(15).logicalSrcIdx = 61;
	  section.data(15).dtTransOffset = 14;
	
	  ;% heli_q8_P.HILInitialize_set_clock_param_c
	  section.data(16).logicalSrcIdx = 62;
	  section.data(16).dtTransOffset = 15;
	
	  ;% heli_q8_P.HILInitialize_set_digital_outpu
	  section.data(17).logicalSrcIdx = 63;
	  section.data(17).dtTransOffset = 16;
	
	  ;% heli_q8_P.HILInitialize_set_digital_out_b
	  section.data(18).logicalSrcIdx = 64;
	  section.data(18).dtTransOffset = 17;
	
	  ;% heli_q8_P.HILInitialize_set_digital_out_c
	  section.data(19).logicalSrcIdx = 65;
	  section.data(19).dtTransOffset = 18;
	
	  ;% heli_q8_P.HILInitialize_set_digital_ou_c1
	  section.data(20).logicalSrcIdx = 66;
	  section.data(20).dtTransOffset = 19;
	
	  ;% heli_q8_P.HILInitialize_set_digital_out_a
	  section.data(21).logicalSrcIdx = 67;
	  section.data(21).dtTransOffset = 20;
	
	  ;% heli_q8_P.HILInitialize_set_digital_out_j
	  section.data(22).logicalSrcIdx = 68;
	  section.data(22).dtTransOffset = 21;
	
	  ;% heli_q8_P.HILInitialize_set_digital_out_m
	  section.data(23).logicalSrcIdx = 69;
	  section.data(23).dtTransOffset = 22;
	
	  ;% heli_q8_P.HILInitialize_set_encoder_count
	  section.data(24).logicalSrcIdx = 70;
	  section.data(24).dtTransOffset = 23;
	
	  ;% heli_q8_P.HILInitialize_set_encoder_cou_k
	  section.data(25).logicalSrcIdx = 71;
	  section.data(25).dtTransOffset = 24;
	
	  ;% heli_q8_P.HILInitialize_set_encoder_param
	  section.data(26).logicalSrcIdx = 72;
	  section.data(26).dtTransOffset = 25;
	
	  ;% heli_q8_P.HILInitialize_set_encoder_par_m
	  section.data(27).logicalSrcIdx = 73;
	  section.data(27).dtTransOffset = 26;
	
	  ;% heli_q8_P.HILInitialize_set_other_outpu_l
	  section.data(28).logicalSrcIdx = 74;
	  section.data(28).dtTransOffset = 27;
	
	  ;% heli_q8_P.HILInitialize_set_pwm_outputs_a
	  section.data(29).logicalSrcIdx = 75;
	  section.data(29).dtTransOffset = 28;
	
	  ;% heli_q8_P.HILInitialize_set_pwm_outputs_g
	  section.data(30).logicalSrcIdx = 76;
	  section.data(30).dtTransOffset = 29;
	
	  ;% heli_q8_P.HILInitialize_set_pwm_outputs_p
	  section.data(31).logicalSrcIdx = 77;
	  section.data(31).dtTransOffset = 30;
	
	  ;% heli_q8_P.HILInitialize_set_pwm_output_ap
	  section.data(32).logicalSrcIdx = 78;
	  section.data(32).dtTransOffset = 31;
	
	  ;% heli_q8_P.HILInitialize_set_pwm_outputs_o
	  section.data(33).logicalSrcIdx = 79;
	  section.data(33).dtTransOffset = 32;
	
	  ;% heli_q8_P.HILInitialize_set_pwm_params_at
	  section.data(34).logicalSrcIdx = 80;
	  section.data(34).dtTransOffset = 33;
	
	  ;% heli_q8_P.HILInitialize_set_pwm_params__f
	  section.data(35).logicalSrcIdx = 81;
	  section.data(35).dtTransOffset = 34;
	
	  ;% heli_q8_P.Incx_vinit
	  section.data(36).logicalSrcIdx = 82;
	  section.data(36).dtTransOffset = 35;
	
	  ;% heli_q8_P.Subx_vinit
	  section.data(37).logicalSrcIdx = 83;
	  section.data(37).dtTransOffset = 36;
	
	  ;% heli_q8_P.Incx_vinit_e
	  section.data(38).logicalSrcIdx = 84;
	  section.data(38).dtTransOffset = 37;
	
	  ;% heli_q8_P.Subx_vinit_e
	  section.data(39).logicalSrcIdx = 85;
	  section.data(39).dtTransOffset = 38;
	
	  ;% heli_q8_P.Incx_vinit_f
	  section.data(40).logicalSrcIdx = 86;
	  section.data(40).dtTransOffset = 39;
	
	  ;% heli_q8_P.Incx_vinit_p
	  section.data(41).logicalSrcIdx = 87;
	  section.data(41).dtTransOffset = 40;
	
	  ;% heli_q8_P.Incx_vinit_g
	  section.data(42).logicalSrcIdx = 88;
	  section.data(42).dtTransOffset = 41;
	
	  ;% heli_q8_P.Incx_vinit_c
	  section.data(43).logicalSrcIdx = 89;
	  section.data(43).dtTransOffset = 42;
	
	  ;% heli_q8_P.Incx_vinit_eo
	  section.data(44).logicalSrcIdx = 90;
	  section.data(44).dtTransOffset = 43;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 61;
      section.data(61)  = dumData; %prealloc
      
	  ;% heli_q8_P.K_ed_Gain
	  section.data(1).logicalSrcIdx = 91;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_P.Travelrate_Gain
	  section.data(2).logicalSrcIdx = 92;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_q8_P.Constant_Value
	  section.data(3).logicalSrcIdx = 93;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_q8_P.Memory_X0
	  section.data(4).logicalSrcIdx = 94;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_q8_P.Constant_Value_k
	  section.data(5).logicalSrcIdx = 95;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_q8_P.Memory_X0_p
	  section.data(6).logicalSrcIdx = 96;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_q8_P.Constant_Value_b
	  section.data(7).logicalSrcIdx = 97;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_q8_P.Memory_X0_l
	  section.data(8).logicalSrcIdx = 98;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_q8_P.Constant_Value_d
	  section.data(9).logicalSrcIdx = 99;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_q8_P.PitchCounttorad_Gain
	  section.data(10).logicalSrcIdx = 100;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_q8_P.Gain_Gain
	  section.data(11).logicalSrcIdx = 101;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_q8_P.PitchTransferFcn_A
	  section.data(12).logicalSrcIdx = 102;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_q8_P.PitchTransferFcn_C
	  section.data(13).logicalSrcIdx = 103;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_q8_P.PitchTransferFcn_D
	  section.data(14).logicalSrcIdx = 104;
	  section.data(14).dtTransOffset = 13;
	
	  ;% heli_q8_P.Gain_Gain_a
	  section.data(15).logicalSrcIdx = 105;
	  section.data(15).dtTransOffset = 14;
	
	  ;% heli_q8_P.u2degoffset_Value
	  section.data(16).logicalSrcIdx = 106;
	  section.data(16).dtTransOffset = 15;
	
	  ;% heli_q8_P.ElevationCounttorad_Gain
	  section.data(17).logicalSrcIdx = 107;
	  section.data(17).dtTransOffset = 16;
	
	  ;% heli_q8_P.Gain_Gain_l
	  section.data(18).logicalSrcIdx = 108;
	  section.data(18).dtTransOffset = 17;
	
	  ;% heli_q8_P.ElevationTransferFcn_A
	  section.data(19).logicalSrcIdx = 109;
	  section.data(19).dtTransOffset = 18;
	
	  ;% heli_q8_P.ElevationTransferFcn_C
	  section.data(20).logicalSrcIdx = 110;
	  section.data(20).dtTransOffset = 19;
	
	  ;% heli_q8_P.ElevationTransferFcn_D
	  section.data(21).logicalSrcIdx = 111;
	  section.data(21).dtTransOffset = 20;
	
	  ;% heli_q8_P.Gain_Gain_n
	  section.data(22).logicalSrcIdx = 112;
	  section.data(22).dtTransOffset = 21;
	
	  ;% heli_q8_P.TravelCounttorad_Gain
	  section.data(23).logicalSrcIdx = 113;
	  section.data(23).dtTransOffset = 22;
	
	  ;% heli_q8_P.Gain_Gain_ar
	  section.data(24).logicalSrcIdx = 114;
	  section.data(24).dtTransOffset = 23;
	
	  ;% heli_q8_P.TravelTransferFcn_A
	  section.data(25).logicalSrcIdx = 115;
	  section.data(25).dtTransOffset = 24;
	
	  ;% heli_q8_P.TravelTransferFcn_C
	  section.data(26).logicalSrcIdx = 116;
	  section.data(26).dtTransOffset = 25;
	
	  ;% heli_q8_P.TravelTransferFcn_D
	  section.data(27).logicalSrcIdx = 117;
	  section.data(27).dtTransOffset = 26;
	
	  ;% heli_q8_P.Gain_Gain_lu
	  section.data(28).logicalSrcIdx = 118;
	  section.data(28).dtTransOffset = 27;
	
	  ;% heli_q8_P.Integrator_IC
	  section.data(29).logicalSrcIdx = 119;
	  section.data(29).dtTransOffset = 28;
	
	  ;% heli_q8_P.Integrator_UpperSat
	  section.data(30).logicalSrcIdx = 120;
	  section.data(30).dtTransOffset = 29;
	
	  ;% heli_q8_P.Integrator_LowerSat
	  section.data(31).logicalSrcIdx = 121;
	  section.data(31).dtTransOffset = 30;
	
	  ;% heli_q8_P.Elevation_Gain
	  section.data(32).logicalSrcIdx = 122;
	  section.data(32).dtTransOffset = 31;
	
	  ;% heli_q8_P.Memory_X0_j
	  section.data(33).logicalSrcIdx = 123;
	  section.data(33).dtTransOffset = 32;
	
	  ;% heli_q8_P.Constant_Value_l
	  section.data(34).logicalSrcIdx = 124;
	  section.data(34).dtTransOffset = 33;
	
	  ;% heli_q8_P.RateTransitiony_X0
	  section.data(35).logicalSrcIdx = 125;
	  section.data(35).dtTransOffset = 34;
	
	  ;% heli_q8_P.DeadZoney_Start
	  section.data(36).logicalSrcIdx = 126;
	  section.data(36).dtTransOffset = 35;
	
	  ;% heli_q8_P.DeadZoney_End
	  section.data(37).logicalSrcIdx = 127;
	  section.data(37).dtTransOffset = 36;
	
	  ;% heli_q8_P.Gainy_Gain
	  section.data(38).logicalSrcIdx = 128;
	  section.data(38).dtTransOffset = 37;
	
	  ;% heli_q8_P.Invert_Y_Value
	  section.data(39).logicalSrcIdx = 129;
	  section.data(39).dtTransOffset = 38;
	
	  ;% heli_q8_P.K_ep_Gain
	  section.data(40).logicalSrcIdx = 130;
	  section.data(40).dtTransOffset = 39;
	
	  ;% heli_q8_P.x_hat_IC
	  section.data(41).logicalSrcIdx = 131;
	  section.data(41).dtTransOffset = 40;
	
	  ;% heli_q8_P.Elevrate_Gain
	  section.data(42).logicalSrcIdx = 132;
	  section.data(42).dtTransOffset = 41;
	
	  ;% heli_q8_P.RateTransitionx_X0
	  section.data(43).logicalSrcIdx = 133;
	  section.data(43).dtTransOffset = 42;
	
	  ;% heli_q8_P.DeadZonex_Start
	  section.data(44).logicalSrcIdx = 134;
	  section.data(44).dtTransOffset = 43;
	
	  ;% heli_q8_P.DeadZonex_End
	  section.data(45).logicalSrcIdx = 135;
	  section.data(45).dtTransOffset = 44;
	
	  ;% heli_q8_P.Gainx_Gain
	  section.data(46).logicalSrcIdx = 136;
	  section.data(46).dtTransOffset = 45;
	
	  ;% heli_q8_P.Invert_X_Value
	  section.data(47).logicalSrcIdx = 137;
	  section.data(47).dtTransOffset = 46;
	
	  ;% heli_q8_P.Pitch_Gain
	  section.data(48).logicalSrcIdx = 138;
	  section.data(48).dtTransOffset = 47;
	
	  ;% heli_q8_P.Pitchrate_Gain
	  section.data(49).logicalSrcIdx = 139;
	  section.data(49).dtTransOffset = 48;
	
	  ;% heli_q8_P.Gamma_IC
	  section.data(50).logicalSrcIdx = 140;
	  section.data(50).dtTransOffset = 49;
	
	  ;% heli_q8_P.Zeta_IC
	  section.data(51).logicalSrcIdx = 141;
	  section.data(51).dtTransOffset = 50;
	
	  ;% heli_q8_P.Memory_X0_f
	  section.data(52).logicalSrcIdx = 142;
	  section.data(52).dtTransOffset = 51;
	
	  ;% heli_q8_P.Constant_Value_bf
	  section.data(53).logicalSrcIdx = 143;
	  section.data(53).dtTransOffset = 52;
	
	  ;% heli_q8_P.Backgain_Gain
	  section.data(54).logicalSrcIdx = 144;
	  section.data(54).dtTransOffset = 53;
	
	  ;% heli_q8_P.Frontgain_Gain
	  section.data(55).logicalSrcIdx = 145;
	  section.data(55).dtTransOffset = 54;
	
	  ;% heli_q8_P.Constant1_Value
	  section.data(56).logicalSrcIdx = 146;
	  section.data(56).dtTransOffset = 55;
	
	  ;% heli_q8_P.K_ei_Gain
	  section.data(57).logicalSrcIdx = 147;
	  section.data(57).dtTransOffset = 56;
	
	  ;% heli_q8_P.FrontmotorSaturation_UpperSat
	  section.data(58).logicalSrcIdx = 148;
	  section.data(58).dtTransOffset = 57;
	
	  ;% heli_q8_P.FrontmotorSaturation_LowerSat
	  section.data(59).logicalSrcIdx = 149;
	  section.data(59).dtTransOffset = 58;
	
	  ;% heli_q8_P.BackmotorSaturation_UpperSat
	  section.data(60).logicalSrcIdx = 150;
	  section.data(60).dtTransOffset = 59;
	
	  ;% heli_q8_P.BackmotorSaturation_LowerSat
	  section.data(61).logicalSrcIdx = 151;
	  section.data(61).dtTransOffset = 60;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_q8_P.GameController_BufferSize
	  section.data(1).logicalSrcIdx = 152;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(6) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% heli_q8_P.Memory_X0_e
	  section.data(1).logicalSrcIdx = 153;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_P.Memory_X0_jd
	  section.data(2).logicalSrcIdx = 154;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_q8_P.GameController_ControllerNumber
	  section.data(3).logicalSrcIdx = 155;
	  section.data(3).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(7) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% heli_q8_P.HILReadEncoderTimebase_Active
	  section.data(1).logicalSrcIdx = 156;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_P.HILWriteAnalog_Active
	  section.data(2).logicalSrcIdx = 157;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_q8_P.GameController_AutoCenter
	  section.data(3).logicalSrcIdx = 158;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_q8_P.GameController_Enabled
	  section.data(4).logicalSrcIdx = 159;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(8) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% heli_q8_P.smallchange_Gain
	  section.data(1).logicalSrcIdx = 160;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_P.smallchange_Gain_n
	  section.data(2).logicalSrcIdx = 161;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(9) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 4;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (heli_q8_B)
    ;%
      section.nData     = 41;
      section.data(41)  = dumData; %prealloc
      
	  ;% heli_q8_B.Memory
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_B.Memory_b
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_q8_B.Memory_m
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_q8_B.PitchCounttorad
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_q8_B.Gain
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_q8_B.Gain_b
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_q8_B.Add
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_q8_B.Gain_e
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_q8_B.Gain_d
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_q8_B.TravelCounttorad
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_q8_B.Gain_p
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_q8_B.Gain_dc
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_q8_B.TmpSignalConversionAtToWorkspac
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_q8_B.Memory_j
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 18;
	
	  ;% heli_q8_B.RateTransitiony
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 19;
	
	  ;% heli_q8_B.Product1
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 20;
	
	  ;% heli_q8_B.K_ep
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 21;
	
	  ;% heli_q8_B.x_hat
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 22;
	
	  ;% heli_q8_B.RateTransitionx
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 28;
	
	  ;% heli_q8_B.Product
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 29;
	
	  ;% heli_q8_B.Pitch
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 30;
	
	  ;% heli_q8_B.Gamma
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 31;
	
	  ;% heli_q8_B.Zeta
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 32;
	
	  ;% heli_q8_B.Memory_n
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 33;
	
	  ;% heli_q8_B.Vzerooffset
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 34;
	
	  ;% heli_q8_B.Backgain
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 35;
	
	  ;% heli_q8_B.Frontgain
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 36;
	
	  ;% heli_q8_B.Constant1
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 37;
	
	  ;% heli_q8_B.K_ei
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 38;
	
	  ;% heli_q8_B.Sum
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 39;
	
	  ;% heli_q8_B.FrontmotorSaturation
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 45;
	
	  ;% heli_q8_B.BackmotorSaturation
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 46;
	
	  ;% heli_q8_B.GameController_o4
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 47;
	
	  ;% heli_q8_B.GameController_o5
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 48;
	
	  ;% heli_q8_B.Sum_f
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 49;
	
	  ;% heli_q8_B.Sum_i
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 50;
	
	  ;% heli_q8_B.Sum_l
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 51;
	
	  ;% heli_q8_B.Sum_ig
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 52;
	
	  ;% heli_q8_B.Sum_j
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 53;
	
	  ;% heli_q8_B.Sum2
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 54;
	
	  ;% heli_q8_B.Sum3
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 55;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% heli_q8_B.smallchange
	  section.data(1).logicalSrcIdx = 41;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_B.smallchange_p
	  section.data(2).logicalSrcIdx = 42;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% heli_q8_B.Sum_c
	  section.data(1).logicalSrcIdx = 43;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_B.Sum_n
	  section.data(2).logicalSrcIdx = 44;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% heli_q8_B.DataTypeConversion2
	  section.data(1).logicalSrcIdx = 45;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_B.DataTypeConversion2_h
	  section.data(2).logicalSrcIdx = 46;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_q8_B.DataTypeConversion2_o
	  section.data(3).logicalSrcIdx = 47;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_q8_B.Resetintegrator
	  section.data(4).logicalSrcIdx = 48;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_q8_B.DataTypeConversion2_m
	  section.data(5).logicalSrcIdx = 49;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_q8_B.DataTypeConversion2_e
	  section.data(6).logicalSrcIdx = 50;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_q8_B.GameController_o2
	  section.data(7).logicalSrcIdx = 51;
	  section.data(7).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 9;
    sectIdxOffset = 4;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (heli_q8_DW)
    ;%
      section.nData     = 16;
      section.data(16)  = dumData; %prealloc
      
	  ;% heli_q8_DW.HILInitialize_AIMinimums
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_DW.HILInitialize_AIMaximums
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 8;
	
	  ;% heli_q8_DW.HILInitialize_AOMinimums
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 16;
	
	  ;% heli_q8_DW.HILInitialize_AOMaximums
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 24;
	
	  ;% heli_q8_DW.HILInitialize_AOVoltages
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 32;
	
	  ;% heli_q8_DW.HILInitialize_FilterFrequency
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 40;
	
	  ;% heli_q8_DW.HILInitialize_POSortedFreqs
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 48;
	
	  ;% heli_q8_DW.HILInitialize_POValues
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 56;
	
	  ;% heli_q8_DW.Memory_PreviousInput
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 64;
	
	  ;% heli_q8_DW.Memory_PreviousInput_m
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 65;
	
	  ;% heli_q8_DW.Memory_PreviousInput_d
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 66;
	
	  ;% heli_q8_DW.Memory_PreviousInput_b
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 67;
	
	  ;% heli_q8_DW.RateTransitiony_Buffer0
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 68;
	
	  ;% heli_q8_DW.RateTransitionx_Buffer0
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 69;
	
	  ;% heli_q8_DW.Memory_PreviousInput_g
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 70;
	
	  ;% heli_q8_DW.HILWriteAnalog_Buffer
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 71;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_q8_DW.GameController_Controller
	  section.data(1).logicalSrcIdx = 16;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_q8_DW.HILInitialize_Card
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_q8_DW.HILReadEncoderTimebase_Task
	  section.data(1).logicalSrcIdx = 18;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 26;
      section.data(26)  = dumData; %prealloc
      
	  ;% heli_q8_DW.Integratorreset_PWORK.LoggedData
	  section.data(1).logicalSrcIdx = 19;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_DW.ToWorkspace_PWORK.LoggedData
	  section.data(2).logicalSrcIdx = 20;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_q8_DW.V_b_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 21;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_q8_DW.V_f_PWORK.LoggedData
	  section.data(4).logicalSrcIdx = 22;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_q8_DW.X_out_PWORK.LoggedData
	  section.data(5).logicalSrcIdx = 23;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_q8_DW.Y_out_PWORK.LoggedData
	  section.data(6).logicalSrcIdx = 24;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_q8_DW.ToWorkspace_PWORK_h.LoggedData
	  section.data(7).logicalSrcIdx = 25;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_q8_DW.ElevationScopedegs_PWORK.LoggedData
	  section.data(8).logicalSrcIdx = 26;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_q8_DW.ElevationScopedeg_PWORK.LoggedData
	  section.data(9).logicalSrcIdx = 27;
	  section.data(9).dtTransOffset = 8;
	
	  ;% heli_q8_DW.PitchScopedeg_PWORK.LoggedData
	  section.data(10).logicalSrcIdx = 28;
	  section.data(10).dtTransOffset = 9;
	
	  ;% heli_q8_DW.PtichrateScopedegs_PWORK.LoggedData
	  section.data(11).logicalSrcIdx = 29;
	  section.data(11).dtTransOffset = 10;
	
	  ;% heli_q8_DW.TravelrateScopedegs_PWORK.LoggedData
	  section.data(12).logicalSrcIdx = 30;
	  section.data(12).dtTransOffset = 11;
	
	  ;% heli_q8_DW.TravelScopedeg_PWORK.LoggedData
	  section.data(13).logicalSrcIdx = 31;
	  section.data(13).dtTransOffset = 12;
	
	  ;% heli_q8_DW.HILWriteAnalog_PWORK
	  section.data(14).logicalSrcIdx = 32;
	  section.data(14).dtTransOffset = 13;
	
	  ;% heli_q8_DW.Estimatorenabled_PWORK.LoggedData
	  section.data(15).logicalSrcIdx = 33;
	  section.data(15).dtTransOffset = 14;
	
	  ;% heli_q8_DW.LQRdisabled_PWORK.LoggedData
	  section.data(16).logicalSrcIdx = 34;
	  section.data(16).dtTransOffset = 15;
	
	  ;% heli_q8_DW.LQRintegratorenabled_PWORK.LoggedData
	  section.data(17).logicalSrcIdx = 35;
	  section.data(17).dtTransOffset = 16;
	
	  ;% heli_q8_DW.Motorsdisabled_PWORK.LoggedData
	  section.data(18).logicalSrcIdx = 36;
	  section.data(18).dtTransOffset = 17;
	
	  ;% heli_q8_DW.Travelregulatorenabled_PWORK.LoggedData
	  section.data(19).logicalSrcIdx = 37;
	  section.data(19).dtTransOffset = 18;
	
	  ;% heli_q8_DW.XScope_PWORK.LoggedData
	  section.data(20).logicalSrcIdx = 38;
	  section.data(20).dtTransOffset = 19;
	
	  ;% heli_q8_DW.XCtrlGainScope1_PWORK.LoggedData
	  section.data(21).logicalSrcIdx = 39;
	  section.data(21).dtTransOffset = 20;
	
	  ;% heli_q8_DW.YScope_PWORK.LoggedData
	  section.data(22).logicalSrcIdx = 40;
	  section.data(22).dtTransOffset = 21;
	
	  ;% heli_q8_DW.YCtrlGainScope2_PWORK.LoggedData
	  section.data(23).logicalSrcIdx = 41;
	  section.data(23).dtTransOffset = 22;
	
	  ;% heli_q8_DW.sliders_PWORK.LoggedData
	  section.data(24).logicalSrcIdx = 42;
	  section.data(24).dtTransOffset = 23;
	
	  ;% heli_q8_DW.Integratorelevation_PWORK.LoggedData
	  section.data(25).logicalSrcIdx = 43;
	  section.data(25).dtTransOffset = 24;
	
	  ;% heli_q8_DW.IntegratorPitch_PWORK.LoggedData
	  section.data(26).logicalSrcIdx = 44;
	  section.data(26).dtTransOffset = 25;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% heli_q8_DW.HILInitialize_ClockModes
	  section.data(1).logicalSrcIdx = 45;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_DW.HILInitialize_QuadratureModes
	  section.data(2).logicalSrcIdx = 46;
	  section.data(2).dtTransOffset = 3;
	
	  ;% heli_q8_DW.HILInitialize_InitialEICounts
	  section.data(3).logicalSrcIdx = 47;
	  section.data(3).dtTransOffset = 11;
	
	  ;% heli_q8_DW.HILInitialize_POModeValues
	  section.data(4).logicalSrcIdx = 48;
	  section.data(4).dtTransOffset = 19;
	
	  ;% heli_q8_DW.HILInitialize_POAlignValues
	  section.data(5).logicalSrcIdx = 49;
	  section.data(5).dtTransOffset = 27;
	
	  ;% heli_q8_DW.HILInitialize_POPolarityVals
	  section.data(6).logicalSrcIdx = 50;
	  section.data(6).dtTransOffset = 35;
	
	  ;% heli_q8_DW.HILReadEncoderTimebase_Buffer
	  section.data(7).logicalSrcIdx = 51;
	  section.data(7).dtTransOffset = 43;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% heli_q8_DW.HILInitialize_POSortedChans
	  section.data(1).logicalSrcIdx = 52;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 9;
      section.data(9)  = dumData; %prealloc
      
	  ;% heli_q8_DW.DelayInput1_DSTATE
	  section.data(1).logicalSrcIdx = 53;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_DW.DelayInput1_DSTATE_e
	  section.data(2).logicalSrcIdx = 54;
	  section.data(2).dtTransOffset = 1;
	
	  ;% heli_q8_DW.DelayInput1_DSTATE_b
	  section.data(3).logicalSrcIdx = 55;
	  section.data(3).dtTransOffset = 2;
	
	  ;% heli_q8_DW.DelayInput1_DSTATE_a
	  section.data(4).logicalSrcIdx = 56;
	  section.data(4).dtTransOffset = 3;
	
	  ;% heli_q8_DW.DelayInput1_DSTATE_i
	  section.data(5).logicalSrcIdx = 57;
	  section.data(5).dtTransOffset = 4;
	
	  ;% heli_q8_DW.DelayInput1_DSTATE_m
	  section.data(6).logicalSrcIdx = 58;
	  section.data(6).dtTransOffset = 5;
	
	  ;% heli_q8_DW.DelayInput1_DSTATE_es
	  section.data(7).logicalSrcIdx = 59;
	  section.data(7).dtTransOffset = 6;
	
	  ;% heli_q8_DW.DelayInput1_DSTATE_l
	  section.data(8).logicalSrcIdx = 60;
	  section.data(8).dtTransOffset = 7;
	
	  ;% heli_q8_DW.DelayInput1_DSTATE_n
	  section.data(9).logicalSrcIdx = 61;
	  section.data(9).dtTransOffset = 8;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% heli_q8_DW.Memory_PreviousInput_mv
	  section.data(1).logicalSrcIdx = 62;
	  section.data(1).dtTransOffset = 0;
	
	  ;% heli_q8_DW.Memory_PreviousInput_gj
	  section.data(2).logicalSrcIdx = 63;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(9) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 2028652664;
  targMap.checksum1 = 2512774071;
  targMap.checksum2 = 3151702546;
  targMap.checksum3 = 1244975627;

