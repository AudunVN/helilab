/*
 * heli_q8_dt.h
 *
 * Code generation for model "heli_q8".
 *
 * Model version              : 1.83
 * Simulink Coder version : 8.6 (R2014a) 27-Dec-2013
 * C source code generated on : Mon Oct 17 20:17:21 2016
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "ext_types.h"

/* data type size table */
static uint_T rtDataTypeSizes[] = {
  sizeof(real_T),
  sizeof(real32_T),
  sizeof(int8_T),
  sizeof(uint8_T),
  sizeof(int16_T),
  sizeof(uint16_T),
  sizeof(int32_T),
  sizeof(uint32_T),
  sizeof(boolean_T),
  sizeof(fcn_call_T),
  sizeof(int_T),
  sizeof(pointer_T),
  sizeof(action_T),
  2*sizeof(uint32_T),
  sizeof(t_game_controller),
  sizeof(uint8_T),
  sizeof(uint16_T),
  sizeof(t_card),
  sizeof(t_task)
};

/* data type name table */
static const char_T * rtDataTypeNames[] = {
  "real_T",
  "real32_T",
  "int8_T",
  "uint8_T",
  "int16_T",
  "uint16_T",
  "int32_T",
  "uint32_T",
  "boolean_T",
  "fcn_call_T",
  "int_T",
  "pointer_T",
  "action_T",
  "timer_uint32_pair_T",
  "t_game_controller",
  "uint8_T",
  "uint16_T",
  "t_card",
  "t_task"
};

/* data type transitions for block I/O structure */
static DataTypeTransition rtBTransitions[] = {
  { (char_T *)(&heli_q8_B.Memory), 0, 0, 56 },

  { (char_T *)(&heli_q8_B.smallchange), 16, 0, 2 },

  { (char_T *)(&heli_q8_B.Sum_c), 3, 0, 2 },

  { (char_T *)(&heli_q8_B.DataTypeConversion2), 8, 0, 38 }
  ,

  { (char_T *)(&heli_q8_DW.HILInitialize_AIMinimums[0]), 0, 0, 73 },

  { (char_T *)(&heli_q8_DW.GameController_Controller), 14, 0, 1 },

  { (char_T *)(&heli_q8_DW.HILInitialize_Card), 17, 0, 1 },

  { (char_T *)(&heli_q8_DW.HILReadEncoderTimebase_Task), 18, 0, 1 },

  { (char_T *)(&heli_q8_DW.Integratorreset_PWORK.LoggedData), 11, 0, 26 },

  { (char_T *)(&heli_q8_DW.HILInitialize_ClockModes[0]), 6, 0, 46 },

  { (char_T *)(&heli_q8_DW.HILInitialize_POSortedChans[0]), 7, 0, 8 },

  { (char_T *)(&heli_q8_DW.DelayInput1_DSTATE), 8, 0, 9 },

  { (char_T *)(&heli_q8_DW.Memory_PreviousInput_mv), 3, 0, 2 }
};

/* data type transition table for block I/O structure */
static DataTypeTransitionTable rtBTransTable = {
  13U,
  rtBTransitions
};

/* data type transitions for Parameters structure */
static DataTypeTransition rtPTransitions[] = {
  { (char_T *)(&heli_q8_P.A_p4p2[0]), 0, 0, 131 },

  { (char_T *)(&heli_q8_P.HILReadEncoderTimebase_clock), 6, 0, 10 },

  { (char_T *)(&heli_q8_P.HILInitialize_analog_input_chan[0]), 7, 0, 39 },

  { (char_T *)(&heli_q8_P.HILInitialize_active), 8, 0, 44 },

  { (char_T *)(&heli_q8_P.K_ed_Gain), 0, 0, 61 },

  { (char_T *)(&heli_q8_P.GameController_BufferSize), 5, 0, 1 },

  { (char_T *)(&heli_q8_P.Memory_X0_e), 3, 0, 3 },

  { (char_T *)(&heli_q8_P.HILReadEncoderTimebase_Active), 8, 0, 4 },

  { (char_T *)(&heli_q8_P.smallchange_Gain), 3, 0, 2 }
};

/* data type transition table for Parameters structure */
static DataTypeTransitionTable rtPTransTable = {
  9U,
  rtPTransitions
};

/* [EOF] heli_q8_dt.h */