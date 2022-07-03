; ----------------------------------------------
; SNES PPU Control
; PPU Picture Processing Unit (Write-Only Ports)
; ----------------------------------------------

display_control_1			= $2100	; INIDISP

main_screen_designation     = $212C  ; TM
sub_screen_designation      = $212D  ; TS
display_control_2           = $2133  ; SETINI

; -------------------
; SNES PPU BG Control
; -------------------

background_mode_and_background_character_size   = $2105  ; BGMODE
mosaic_size_and_enable                          = $2106  ; MOSAIC
bg1_screen_base_and_size                        = $2107  ; BG1SC
bg2_screen_base_and_size                        = $2108  ; BG2SC
bg3_screen_base_and_size                        = $2109  ; BG3SC
bg4_screen_base_and_size                        = $210A  ; BG3SC
bg_character_data_area_designation12            = $210B  ; BG12NBA
bg_character_data_area_designation34            = $210C  ; BG34NBA

bg1_horizontal_scroll                           = $210D  ; BG1HOFS
bg1_vertical_scroll                             = $210E  ; BG1VOFS
bg2_horizontal_scroll                           = $210F  ; BG2HOFS
bg2_vertical_scroll                             = $2110  ; BG2VOFS
bg3_horizontal_scroll                           = $2111  ; BG3HOFS
bg3_vertical_scroll                             = $2112  ; BG3VOFS
bg4_horizontal_scroll                           = $2113  ; BG4HOFS
bg4_vertical_scroll                             = $2114  ; BG4VOFS

; -----------------------------------------
; SNES PPU Rotation/Scaling
; -----------------------------------------
rotation_scaling_mode_settings  = $211A  ; M7SEL
rotation_scaling_parameter_a    = $211B  ; M7A
rotation_scaling_parameter_b    = $211C  ; M7B
rotation_scaling_parameter_c    = $211D  ; M7C
rotation_scaling_parameter_d    = $211E  ; M7D
rotation_scaling_center_coord_x = $211F  ; M7X
rotation_scaling_center_coord_y = $2120  ; M7Y

; -----------------------
; SNES PPU Sprites (OBJs)
; -----------------------
object_size_and_object_base	= $2101	; OBSEL / OBJSEL

; ---------------
; SNES PPU Window
; ---------------

window1_left_pos                = $2126  ; WH0
window1_right_pos               = $2127  ; WH1
window2_left_pos                = $2128  ; WH2
window2_right_pos               = $2129  ; WH3
window12_mask_logic_bg          = $212A  ; WBGLOG
window12_mask_logic_mathobj     = $212B  ; WOBJLOG
window_bg12_mask_settings       = $2123  ; W12SEL
window_bg34_mask_settings       = $2124  ; W12SEL
window_objmath_mask_settings    = $2125  ; WOBJSEL

window_area_main_screen_disable = $212E  ; TMW
window_area_sub_screen_disable  = $212F  ; TSW

; -------------------
; SNES PPU Color-Math
; -------------------
color_math_control_register_a   = $2130  ; CGWSEL
color_math_control_register_b   = $2132  ; CGADSUB
color_math_subscreen_background_color   = $2132  ; COLDATA

; PPU Picture Processing Unit (Read-Only Ports)

ppu1_signed_multiply_product_low    = $2134  ; MPYL
ppu1_signed_multiply_product_middle = $2135  ; MPYM
ppu1_signed_multiply_product_high   = $2136  ; MPYH


; --------------------------
; SNES PPU Timers and Status
; --------------------------
ppu1_latch_hv_counter_by_software   = $2137  ; SLHV
ppu1_oam_data_read                  = $2138  ; RDOAM
ppu1_vram_data_read_low             = $2139  ; RDVRAML
ppu1_vram_data_read_high            = $213A  ; RDVRAMH
ppu2_cgram_data_read                = $213B  ; RDCGRAM
ppu2_horizontal_latch               = $213C  ; OPHCT
ppu2_vertical_counter_latch         = $213D  ; OPVCT
ppu1_status_and_ppu1_version_number = $213E  ; STAT77
ppu2_status_and_ppu2_version_number = $213F  ; STAT78

; -------------------
; SNES PPU Interrupts
; -------------------
interrupt_enable_and_joypad_request = $4200 ; NMITIMEN
hcount_timer_setting_low            = $4207 ; HTIMEL
hcount_timer_setting_high           = $4208 ; HTIMEH
vcount_timer_setting_low            = $4209 ; VTIMEL
vcount_timer_setting_high           = $420A ; VTIMEH
vblank_nmi_flag                     = $4210 ; RDNMI
hv_timer_irq_flag                   = $4211 ; TIMEUP
hvblank_flag_and_joypad_busy_flag   = $4212 ; HVBJOY


; -------------------------
; SNES APU SPC700 I/O Ports
; -------------------------
testing_functions               = $00F0  ; TEST
timer_io_and_rom_control        = $00F1  ; CONTROL
dsp_register_index              = $00F2  ; DSPADDR
dsp_register_data               = $00F3  ; DSPDATA
cpu_input_and_output_register0  = $00F4  ; CPUIO0
cpu_input_and_output_register1  = $00F5  ; CPUIO1
cpu_input_and_output_register2  = $00F6  ; CPUIO2
cpu_input_and_output_register3  = $00F7  ; CPUIO3
external_io_port_p4             = $00F8  ; AUXIO4
external_io_port_p5             = $00F9  ; AUXIO4
timer_0_divider                 = $00FA  ; T0DIV
timer_1_divider                 = $00FB  ; T1DIV
timer_2_divider                 = $00FC  ; T2DIV
timer_0_output                  = $00FD  ; T0OUT
timer_1_output                  = $00FE  ; T1OUT
timer_2_output                  = $00FF  ; T2OUT

; ------------------------------------
; SNES APU Main CPU Communication Port
; APU Audio Processing Unit (R/W)
; ------------------------------------
main_cpu2sound_cpu_com_port0    = $2140  ; APUI00
main_cpu2sound_cpu_com_port1    = $2141  ; APUI01
main_cpu2sound_cpu_com_port2    = $2142  ; APUI02
main_cpu2sound_cpu_com_port3    = $2143  ; APUI03

; CPU On-Chip I/O Ports (Read-only)

joypad_programmable_io_port     = $4213  ; RDIO

; -------------------
; SNES Memory Control
; -------------------
memory2_waitstate_control   = $420D  ; MEMSEL

; ---------------------------
; SNES Memory Work RAM Access
; ---------------------------
wram_data_readwrite         = $2180  ; VMDATA
wram_address_low            = $2181  ; VMADDL
wram_address_high_middle    = $2182  ; VMADDM
wram_address_high           = $2183  ; VMADDH


; -----------------------------------------
; SNES Memory OAM Access (Sprite Attributes)
; -----------------------------------------
oam_address_low     = $2102  ; OAMADDL
oam_address_high    = $2103  ; OAMADDH
oam_data_write      = $2104  ; OAMDATA


; -----------------------------------------
; SNES Memory VRAM Access (Tile and BG Map)
; -----------------------------------------
vram_address_increment_mode = $2115  ; VMAIN
vram_address_low            = $2116  ; VMADDL
vram_address_high           = $2117  ; VMADDH
vram_data_write_low         = $2118  ; VMDATAL
vram_data_write_high        = $2119  ; VMDATAH
vram_data_read_low          = $2139  ; RDVRAML
vram_data_read_high         = $213A  ; RDVRAMH

; -----------------------------------------
; SNES Memory CGRAM Access (Palette Memory)
; -----------------------------------------
palette_cgram_address       = $2121  ; CGADD
palette_cgram_data_write    = $2122  ; CGDATA
palette_cgram_data_read     = $213B  ; RDCGRAM

; -----------------------------------------
; SNES DMA and HDMA Start/Enable Registers
; -----------------------------------------
select_general_purpose_dma_channels_and_start_transfer  = $420B  ; MDMAEN
select_hblank_dma_channels                              = $420C  ; HDMAEN

; ----------------------------------------
; SNES DMA and HDMA Channel 0..7 Registers
; ----------------------------------------
dma_hdma_parameters0            = $4300  ; DMAP0
dma_hdma_parameters1            = $4310  ; DMAP1
dma_hdma_parameters2            = $4320  ; DMAP2
dma_hdma_parameters3            = $4330  ; DMAP3
dma_hdma_parameters4            = $4340  ; DMAP4
dma_hdma_parameters5            = $4350  ; DMAP5
dma_hdma_parameters6            = $4360  ; DMAP6
dma_hdma_parameters7            = $4370  ; DMAP7

dma_hdma_io_bus_address0         = $4301  ; BBAD0
dma_hdma_io_bus_address1         = $4311  ; BBAD1
dma_hdma_io_bus_address2         = $4321  ; BBAD2
dma_hdma_io_bus_address3         = $4331  ; BBAD3
dma_hdma_io_bus_address4         = $4341  ; BBAD4
dma_hdma_io_bus_address5         = $4351  ; BBAD5
dma_hdma_io_bus_address6         = $4361  ; BBAD6
dma_hdma_io_bus_address7         = $4371  ; BBAD7

hdma_table_start_address_low0   = $4302  ; A1T0L
hdma_table_start_address_high0  = $4303  ; A1T0H
hdma_table_start_address_bank0  = $4304  ; A1B0
hdma_table_start_address_low1   = $4312  ; A1T1L
hdma_table_start_address_high1  = $4313  ; A1T1H
hdma_table_start_address_bank1  = $4314  ; A1B1
hdma_table_start_address_low2   = $4322  ; A1T2L
hdma_table_start_address_high2  = $4323  ; A1T2H
hdma_table_start_address_bank2  = $4324  ; A1B2
hdma_table_start_address_low3   = $4332  ; A1T3L
hdma_table_start_address_high3  = $4333  ; A1T3H
hdma_table_start_address_bank3  = $4334  ; A1B3
hdma_table_start_address_low4   = $4342  ; A1T4L
hdma_table_start_address_high4  = $4343  ; A1T4H
hdma_table_start_address_bank4  = $4344  ; A1B4
hdma_table_start_address_low5   = $4352  ; A1T5L
hdma_table_start_address_high5  = $4353  ; A1T5H
hdma_table_start_address_bank5  = $4354  ; A1B5
hdma_table_start_address_low6   = $4362  ; A1T6L
hdma_table_start_address_high6  = $4363  ; A1T6H
hdma_table_start_address_bank6  = $4364  ; A1B6
hdma_table_start_address_low7   = $4372  ; A1T7L
hdma_table_start_address_high7  = $4373  ; A2T7H
hdma_table_start_address_bank7  = $4374  ; A1B7

indirect_hdma_address_low_0     = $4305  ; DAS0L
indirect_hdma_address_high_0    = $4306  ; DAS0H
indirect_hdma_address_bank_0    = $4307  ; DASB0
indirect_hdma_address_low_1     = $4315  ; DAS1L
indirect_hdma_address_high_1    = $4316  ; DAS1H
indirect_hdma_address_bank_1    = $4317  ; DAS1B
indirect_hdma_address_low_2     = $4325  ; DAS2L
indirect_hdma_address_high_2    = $4326  ; DAS2H
indirect_hdma_address_bank_2    = $4327  ; DASB2
indirect_hdma_address_low_3     = $4335  ; DAS3L
indirect_hdma_address_high_3    = $4336  ; DAS3H
indirect_hdma_address_bank_3    = $4337  ; DASB3
indirect_hdma_address_low_4     = $4345  ; DAS4L
indirect_hdma_address_high_4    = $4346  ; DAS4H
indirect_hdma_address_bank_4    = $4347  ; DASB4
indirect_hdma_address_low_5     = $4355  ; DAS5L
indirect_hdma_address_high_5    = $4356  ; DAS5H
indirect_hdma_address_bank_5    = $4357  ; DASB5
indirect_hdma_address_low_6     = $4365  ; DAS6L
indirect_hdma_address_high_6    = $4366  ; DAS6H
indirect_hdma_address_bank_6    = $4367  ; DASB6
indirect_hdma_address_low_7     = $4375  ; DAS7L
indirect_hdma_address_high_7    = $4376  ; DAS7H
indirect_hdma_address_bank_7    = $4377  ; DASB7

hdma_table_current_address_low_0    = $4308  ; A2A0L
hdma_table_current_address_high_0   = $4309  ; A2A0H
hdma_table_current_address_low_1    = $4318  ; A2A1L
hdma_table_current_address_high_1   = $4319  ; A2A1H
hdma_table_current_address_low_2    = $4328  ; A2A2L
hdma_table_current_address_high_2   = $4329  ; A2A2H
hdma_table_current_address_low_3    = $4328  ; A2A3L
hdma_table_current_address_high_3   = $4329  ; A2A3H
hdma_table_current_address_low_4    = $4338  ; A2A4L
hdma_table_current_address_high_4   = $4339  ; A2A4H
hdma_table_current_address_low_5    = $4348  ; A2A5L
hdma_table_current_address_high_5   = $4349  ; A2A5H
hdma_table_current_address_low_6    = $4358  ; A2A6L
hdma_table_current_address_high_6   = $4359  ; A2A6H
hdma_table_current_address_low_7    = $4368  ; A2A7L
hdma_table_current_address_high_7   = $4359  ; A2A7H
hdma_line_counter_0                 = $430A  ; NTRL0
hdma_line_counter_1                 = $431A  ; NTRL1
hdma_line_counter_2                 = $432A  ; NTRL2
hdma_line_counter_3                 = $433A  ; NTRL3
hdma_line_counter_4                 = $434A  ; NTRL4
hdma_line_counter_5                 = $435A  ; NTRL5
hdma_line_counter_6                 = $436A  ; NTRL6
hdma_line_counter_7                 = $437A  ; NTRL7

; ----------------------
; SNES APU DSP BRR Samples
; ----------------------
source_number_for_voice0    = $04    ; V0SRCN
source_number_for_voice1    = $14    ; V1SRCN
source_number_for_voice2    = $24    ; V2SRCN
source_number_for_voice3    = $34    ; V3SRCN
source_number_for_voice4    = $44    ; V4SRCN
source_number_for_voice5    = $54    ; V5SRCN
source_number_for_voice6    = $64    ; V6SRCN
source_number_for_voice7    = $74    ; V7SRCN
sample_table_address        = $5D    ; DIR

; ----------------------
; SNES APU DSP BRR Pitch
; ----------------------
pitch_scaler_for_voice0_low     = $02    ; V0PITCHL
pitch_scaler_for_voice0_high    = $03    ; V0PITCHH
pitch_scaler_for_voice1_low     = $12    ; V1PITCHL
pitch_scaler_for_voice1_high    = $13    ; V1PITCHH
pitch_scaler_for_voice2_low     = $22    ; V2PITCHL
pitch_scaler_for_voice2_high    = $23    ; V2PITCHH
pitch_scaler_for_voice3_low     = $32    ; V3PITCHL
pitch_scaler_for_voice3_high    = $33    ; V3PITCHH
pitch_scaler_for_voice4_low     = $42    ; V4PITCHL
pitch_scaler_for_voice4_high    = $43    ; V4PITCHH
pitch_scaler_for_voice5_low     = $52    ; V5PITCHL
pitch_scaler_for_voice5_high    = $53    ; V5PITCHH
pitch_scaler_for_voice6_low     = $62    ; V6PITCHL
pitch_scaler_for_voice6_high    = $63    ; V6PITCHH
pitch_scaler_for_voice7_low     = $72    ; V7PITCHL
pitch_scaler_for_voice7_high    = $73    ; V7PITCHH

pitch_modulation_enable_flags   = $21D   ; PMON

; --------------------------------
; SNES APU DISP ADSR/Gain Envelope
; --------------------------------
adsr_settings_for_voice0_low    = $05    ; V0ADSR1
adsr_settings_for_voice0_high   = $06    ; V0ADSR2
adsr_settings_for_voice1_low    = $15    ; V1ADSR1
adsr_settings_for_voice1_high   = $16    ; V1ADSR2
adsr_settings_for_voice2_low    = $25    ; V2ADSR1
adsr_settings_for_voice2_high   = $26    ; V2ADSR2
adsr_settings_for_voice3_low    = $35    ; V3ADSR1
adsr_settings_for_voice3_high   = $36    ; V3ADSR2
adsr_settings_for_voice4_low    = $45    ; V4ADSR1
adsr_settings_for_voice4_high   = $46    ; V4ADSR2
adsr_settings_for_voice5_low    = $55    ; V5ADSR1
adsr_settings_for_voice5_high   = $56    ; V5ADSR2
adsr_settings_for_voice6_low    = $65    ; V6ADSR1
adsr_settings_for_voice6_high   = $66    ; V6ADSR2
adsr_settings_for_voice7_low    = $75    ; V7ADSR1
adsr_settings_for_voice7_high   = $76    ; V7ADSR1

gain_setting_for_voice0 = $07    ; V0GAIN
gain_setting_for_voice1 = $17    ; V1GAIN
gain_setting_for_voice2 = $27    ; V2GAIN
gain_setting_for_voice3 = $37    ; V3GAIN
gain_setting_for_voice4 = $47    ; V4GAIN
gain_setting_for_voice5 = $57    ; V5GAIN
gain_setting_for_voice6 = $67    ; V6GAIN
gain_setting_for_voice7 = $77    ; V7GAIN

current_envelope_value_for_voice0   = $08    ; V0ENVX
current_envelope_value_for_voice1   = $18    ; V1ENVX
current_envelope_value_for_voice2   = $28    ; V2ENVX
current_envelope_value_for_voice3   = $38    ; V3ENVX
current_envelope_value_for_voice4   = $48    ; V4ENVX
current_envelope_value_for_voice5   = $58    ; V5ENVX
current_envelope_value_for_voice6   = $68    ; V6ENVX
current_envelope_value_for_voice7   = $78    ; V7ENVX

current_sample_value_for_voice0 = $09    ; V0OUTX
current_sample_value_for_voice1 = $19    ; V1OUTX
current_sample_value_for_voice2 = $29    ; V2OUTX
current_sample_value_for_voice3 = $39    ; V3OUTX
current_sample_value_for_voice4 = $49    ; V4OUTX
current_sample_value_for_voice5 = $59    ; V5OUTX
current_sample_value_for_voice6 = $69    ; V6OUTX
current_sample_value_for_voice7 = $79    ; V7OUTX

; -----------------------------
; SNES APU DSP Volume Registers
; -----------------------------

left_channel_master_volume      = $0C    ; MVOLL
right_channel_master_volume     = $1C    ; MVOLR

left_volume_for_voice0          = $00    ; V0VOLL
right_volume_for_voice0         = $01    ; V0VOLR
left_volume_for_voice1          = $10    ; V1VOLL
right_volume_for_voice1         = $11    ; V1VOLR
left_volume_for_voice2          = $20    ; V2VOLL
right_volume_for_voice2         = $21    ; V2VOLR
left_volume_for_voice3          = $30    ; V3VOLL
right_volume_for_voice3         = $31    ; V3VOLR
left_volume_for_voice4          = $40    ; V4VOLL
right_volume_for_voice4         = $41    ; V4VOLR
left_volume_for_voice5          = $50    ; V5VOLL
right_volume_for_voice5         = $51    ; V5VOLR
left_volume_for_voice6          = $60    ; V6VOLL
right_volume_for_voice6         = $61    ; V6VOLR
left_volume_for_voice7          = $70    ; V7VOLL
right_volume_for_voice7         = $71    ; V7VOLR

; -----------------------------
; SNES APU DSP Control Registers
; -----------------------------

key_on_flags_for_voices                     = $4C    ; KON
key_off_flags_for_voices                    = $5C    ; KOFF
reset_mute_echo_write_flags_and_noise_clock = $6C    ; FLG
voice_end_flags_for_voices                  = $7C    ; ENDX
noise_enable_flags_for_voices               = $3D    ; NON

; ---------------------------
; SNES APU DSP Echo Registers
; ---------------------------
left_channel_echo_volume    = $2C    ; EVOLL
right_channel_echo_volume   = $3C    ; EVOLR
echo_feedback_volume        = $0D    ; EFB
echo_enable_flags           = $4D    ; EON
echo_ring_buffer_address    = $6D    ; ESA
echo_delay                  = $7D    ; EDL
echo_fir_filter_coeff0      = $0F    ; FIR0
echo_fir_filter_coeff1      = $1F    ; FIR1
echo_fir_filter_coeff2      = $2F    ; FIR2
echo_fir_filter_coeff3      = $3F    ; FIR3
echo_fir_filter_coeff4      = $4F    ; FIR4
echo_fir_filter_coeff5      = $5F    ; FIR5
echo_fir_filter_coeff6      = $6F    ; FIR6
echo_fir_filter_coeff7      = $7F    ; FIR7

; -----------------------------
; SNES Maths Multiply/Divide
; -----------------------------
set_unsigned_8bit_multiplicand                          = $4202  ; WRMPYA
set_unsigned_8bit_multiplier_and_start_multiplication   = $4203  ; WRMPYB
set_unsigned_16bit_dividend_low                         = $4204  ; WRDIVL
set_unsigned_16bit_dividend_high                        = $4205  ; WRDIVH
set_unsigned_8bit_divisor_and_start_division            = $4206  ; WRDIVB
unsigned_division_quotient_low                          = $4214  ; RDDIVL
unsigned_division_quotient_high                         = $4215  ; RDDIVH

unsigned_division_remainder_low                         = $4216  ; RDMPYL
unsigned_multiply_product_low                           = $4216
unsigned_division_remainder_high                        = $4217  ; RDMPYH
unsigned_multiply_product_high                          = $4217

; ----------------------------------------------
; SNES Controllers I/O Ports - Automatic Reading
; ----------------------------------------------

joypad1_low     = $4218  ; JOY1L
joypad1_high    = $4219  ; JOY1H
joypad2_low     = $421A  ; JOY2L
joypad2_high    = $421B  ; JOY2H
joypad3_low     = $421C  ; JOY3L
joypad3_high    = $421D  ; JOY3H
joypad4_low     = $421E  ; JOY4L
joypad4_high    = $421F  ; JOY4H

; -------------------------------------------
; SNES Controllers I/O Ports - Manual Reading
; -------------------------------------------
joypad_output                                       = $4016  ; JOYWR
joypad_input_register_a                             = $4016  ; JOYA
joypad_input_register_b                             = $4017  ; JOYB
joypad_programmable_io_port_open_collector_output   = $4201  ; WRIO
joypad_programmable_io_port_input                   = $4213  ; RDIO