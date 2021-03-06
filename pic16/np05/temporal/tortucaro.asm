;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Feb 26 2012) (Linux)
; This file was generated Fri Mar  1 21:34:53 2013
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4550

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _i
	global _loopvar
	global _hidRxLen
	global _hidProtocol
	global _hidIdleRate
	global _HIDPostProcess
	global _deviceAddress
	global _EnableUSBModule
	global _ProcessUSBTransactions
	global _ProcessCDCRequest
	global _CDCgets
	global _CDCInitEndpoint
	global _CONTROL_LINE
	global _deviceState
	global _remoteWakeup
	global _selfPowered
	global _currentConfiguration
	global _ctrlTransferStage
	global _requestHandled
	global _outPtr
	global _inPtr
	global _wCount
	global _ep_bdt
	global _SetupPacket
	global _controlTransferBuffer
	global _CDCControlBuffer
	global _CDCRxBuffer
	global _CDCTxBuffer
	global _line_config
	global _zlp
	global _phase
	global _needreordering
	global _timingindex
	global _timedivision
	global _timings
	global _activatedservos
	global _servovalues
	global _receivedbyte
	global _receivedbyte2
	global _rxstr
	global _rxstr2
	global _valor
	global _ProcessStandardRequest
	global _InDataStage
	global _OutDataStage
	global _SetupStage
	global _WaitForSetupStage
	global _ProcessControlTransfer
	global _UnSuspend
	global _StartOfFrame
	global _Stall
	global _Suspend
	global _BusReset
	global _CDCputs
	global _Delayms
	global _Delayus
	global _init_CDC
	global _analog_init
	global _analogread
	global _servos_init
	global _ServoAttach
	global _ServoDetach
	global _ServoWrite
	global _ServoRead
	global _ServoMinimumPulse
	global _ServoMaximumPulse
	global _servos_interrupt
	global _digitalwrite
	global _digitalread
	global _pinmode
	global _epap_in
	global _epap_out
	global _epapin_init
	global _epapout_init
	global _digital
	global _l293d
	global _analogico
	global _leer
	global _servos
	global _setup
	global _loop
	global _pinguino_main
	global _high_priority_isr
	global _low_priority_isr
	global _libdevice_descriptor
	global _libconfiguration_descriptor
	global _libstring_descriptor
	global _servomasks
	global _mask
	global _port

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern __gptrput1
	extern _SPPDATAbits
	extern _SPPCFGbits
	extern _SPPEPSbits
	extern _SPPCONbits
	extern _UFRMLbits
	extern _UFRMHbits
	extern _UIRbits
	extern _UIEbits
	extern _UEIRbits
	extern _UEIEbits
	extern _USTATbits
	extern _UCONbits
	extern _UADDRbits
	extern _UCFGbits
	extern _UEP0bits
	extern _UEP1bits
	extern _UEP2bits
	extern _UEP3bits
	extern _UEP4bits
	extern _UEP5bits
	extern _UEP6bits
	extern _UEP7bits
	extern _UEP8bits
	extern _UEP9bits
	extern _UEP10bits
	extern _UEP11bits
	extern _UEP12bits
	extern _UEP13bits
	extern _UEP14bits
	extern _UEP15bits
	extern _PORTAbits
	extern _PORTBbits
	extern _PORTCbits
	extern _PORTDbits
	extern _PORTEbits
	extern _LATAbits
	extern _LATBbits
	extern _LATCbits
	extern _LATDbits
	extern _LATEbits
	extern _TRISAbits
	extern _TRISBbits
	extern _TRISCbits
	extern _TRISDbits
	extern _TRISEbits
	extern _OSCTUNEbits
	extern _PIE1bits
	extern _PIR1bits
	extern _IPR1bits
	extern _PIE2bits
	extern _PIR2bits
	extern _IPR2bits
	extern _EECON1bits
	extern _RCSTAbits
	extern _TXSTAbits
	extern _T3CONbits
	extern _CMCONbits
	extern _CVRCONbits
	extern _ECCP1ASbits
	extern _ECCP1DELbits
	extern _BAUDCONbits
	extern _CCP2CONbits
	extern _CCP1CONbits
	extern _ADCON2bits
	extern _ADCON1bits
	extern _ADCON0bits
	extern _SSPCON2bits
	extern _SSPCON1bits
	extern _SSPSTATbits
	extern _T2CONbits
	extern _T1CONbits
	extern _RCONbits
	extern _WDTCONbits
	extern _HLVDCONbits
	extern _OSCCONbits
	extern _T0CONbits
	extern _STATUSbits
	extern _FSR2Hbits
	extern _BSRbits
	extern _FSR1Hbits
	extern _FSR0Hbits
	extern _INTCON3bits
	extern _INTCON2bits
	extern _INTCONbits
	extern _TBLPTRUbits
	extern _PCLATHbits
	extern _PCLATUbits
	extern _STKPTRbits
	extern _TOSUbits
	extern _usb_device_state
	extern _usb_active_cfg
	extern _usb_active_alt_setting
	extern _SPPDATA
	extern _SPPCFG
	extern _SPPEPS
	extern _SPPCON
	extern _UFRML
	extern _UFRMH
	extern _UIR
	extern _UIE
	extern _UEIR
	extern _UEIE
	extern _USTAT
	extern _UCON
	extern _UADDR
	extern _UCFG
	extern _UEP0
	extern _UEP1
	extern _UEP2
	extern _UEP3
	extern _UEP4
	extern _UEP5
	extern _UEP6
	extern _UEP7
	extern _UEP8
	extern _UEP9
	extern _UEP10
	extern _UEP11
	extern _UEP12
	extern _UEP13
	extern _UEP14
	extern _UEP15
	extern _PORTA
	extern _PORTB
	extern _PORTC
	extern _PORTD
	extern _PORTE
	extern _LATA
	extern _LATB
	extern _LATC
	extern _LATD
	extern _LATE
	extern _TRISA
	extern _TRISB
	extern _TRISC
	extern _TRISD
	extern _TRISE
	extern _OSCTUNE
	extern _PIE1
	extern _PIR1
	extern _IPR1
	extern _PIE2
	extern _PIR2
	extern _IPR2
	extern _EECON1
	extern _EECON2
	extern _EEDATA
	extern _EEADR
	extern _RCSTA
	extern _TXSTA
	extern _TXREG
	extern _RCREG
	extern _SPBRG
	extern _SPBRGH
	extern _T3CON
	extern _TMR3L
	extern _TMR3H
	extern _CMCON
	extern _CVRCON
	extern _ECCP1AS
	extern _ECCP1DEL
	extern _BAUDCON
	extern _CCP2CON
	extern _CCPR2L
	extern _CCPR2H
	extern _CCP1CON
	extern _CCPR1L
	extern _CCPR1H
	extern _ADCON2
	extern _ADCON1
	extern _ADCON0
	extern _ADRESL
	extern _ADRESH
	extern _SSPCON2
	extern _SSPCON1
	extern _SSPSTAT
	extern _SSPADD
	extern _SSPBUF
	extern _T2CON
	extern _PR2
	extern _TMR2
	extern _T1CON
	extern _TMR1L
	extern _TMR1H
	extern _RCON
	extern _WDTCON
	extern _HLVDCON
	extern _OSCCON
	extern _T0CON
	extern _TMR0L
	extern _TMR0H
	extern _STATUS
	extern _FSR2L
	extern _FSR2H
	extern _PLUSW2
	extern _PREINC2
	extern _POSTDEC2
	extern _POSTINC2
	extern _INDF2
	extern _BSR
	extern _FSR1L
	extern _FSR1H
	extern _PLUSW1
	extern _PREINC1
	extern _POSTDEC1
	extern _POSTINC1
	extern _INDF1
	extern _WREG
	extern _FSR0L
	extern _FSR0H
	extern _PLUSW0
	extern _PREINC0
	extern _POSTDEC0
	extern _POSTINC0
	extern _INDF0
	extern _INTCON3
	extern _INTCON2
	extern _INTCON
	extern _PRODL
	extern _PRODH
	extern _TABLAT
	extern _TBLPTRL
	extern _TBLPTRH
	extern _TBLPTRU
	extern _PCL
	extern _PCLATH
	extern _PCLATU
	extern _STKPTR
	extern _TOSL
	extern _TOSH
	extern _TOSU
	extern _delay10ktcy
	extern __mulint
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
PCL	equ	0xff9
PCLATH	equ	0xffa
PCLATU	equ	0xffb
WREG	equ	0xfe8
BSR	equ	0xfe0
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
TBLPTRU	equ	0xff8
TABLAT	equ	0xff5
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTINC0	equ	0xfee
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


	idata
_CONTROL_LINE	db	0x00
_phase	db	0x00
_needreordering	db	0x00
_timedivision	db	0x00
_activatedservos	db	0x00, 0x00, 0x00
_rxstr	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00
_rxstr2	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00
_valor	db	0x00, 0x00


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1


usbram5	udata
_SetupPacket	res	64
_controlTransferBuffer	res	64
_CDCRxBuffer	res	64
_CDCTxBuffer	res	64

udata_tortucaro_0	udata
_deviceAddress	res	1

udata_tortucaro_1	udata
_HIDPostProcess	res	1

udata_tortucaro_2	udata
_hidIdleRate	res	1

udata_tortucaro_3	udata
_hidProtocol	res	1

udata_tortucaro_4	udata
_hidRxLen	res	1

udata_tortucaro_5	udata
_loopvar	res	1

udata_tortucaro_6	udata
_i	res	1

udata_tortucaro_7	udata
_requestHandled	res	1

udata_tortucaro_8	udata
_outPtr	res	3

udata_tortucaro_9	udata
_wCount	res	2

udata_tortucaro_10	udata
_inPtr	res	3

udata_tortucaro_11	udata
_selfPowered	res	1

udata_tortucaro_12	udata
_remoteWakeup	res	1

udata_tortucaro_13	udata
_deviceState	res	1

udata_tortucaro_14	udata
_currentConfiguration	res	1

udata_tortucaro_15	udata
_ctrlTransferStage	res	1

udata_tortucaro_16	udata
_line_config	res	7

udata_tortucaro_17	udata
_zlp	res	8

udata_tortucaro_18	udata
_CDCControlBuffer	res	16

udata_tortucaro_19	udata
_servovalues	res	18

udata_tortucaro_20	udata
_timingindex	res	1

udata_tortucaro_21	udata
_timings	res	72

udata_tortucaro_22	udata
_SortServoTimings_mascaratotal_1_1	res	3

udata_tortucaro_23	udata
_receivedbyte	res	1

udata_tortucaro_24	udata
_receivedbyte2	res	1


ustat_tortucaro_00	udata	0X0400
_ep_bdt        	res	128

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block
S_tortucaro__high_priority_isr	code	0X002020
_high_priority_isr:
;	.line	95; /home/valentin/.icaro/np05/source/tortucaro.c	void high_priority_isr(void) interrupt
	MOVFF	WREG, POSTDEC1
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
;	.line	98; /home/valentin/.icaro/np05/source/tortucaro.c	if(PIR2bits.USBIF)
	BTFSS	_PIR2bits, 5
	BRA	_01300_DS_
;	.line	100; /home/valentin/.icaro/np05/source/tortucaro.c	ProcessUSBTransactions();
	CALL	_ProcessUSBTransactions
;	.line	101; /home/valentin/.icaro/np05/source/tortucaro.c	UIRbits.SOFIF = 0;
	BCF	_UIRbits, 6
;	.line	102; /home/valentin/.icaro/np05/source/tortucaro.c	UIRbits.URSTIF = 0;
	BCF	_UIRbits, 0
;	.line	103; /home/valentin/.icaro/np05/source/tortucaro.c	PIR2bits.USBIF = 0;
	BCF	_PIR2bits, 5
;	.line	104; /home/valentin/.icaro/np05/source/tortucaro.c	UEIR = 0;
	CLRF	_UEIR
_01300_DS_:
;	.line	131; /home/valentin/.icaro/np05/source/tortucaro.c	servos_interrupt();
	CALL	_servos_interrupt
	MOVFF	PREINC1, PCLATU
	MOVFF	PREINC1, PCLATH
	MOVFF	PREINC1, FSR0H
	MOVFF	PREINC1, FSR0L
	MOVFF	PREINC1, PRODH
	MOVFF	PREINC1, PRODL
	MOVFF	PREINC1, BSR
	MOVFF	PREINC1, STATUS
	MOVFF	PREINC1, WREG
	RETFIE	

; ; Starting pCode block
S_tortucaro__low_priority_isr	code	0X004000
_low_priority_isr:
;	.line	139; /home/valentin/.icaro/np05/source/tortucaro.c	void low_priority_isr(void) interrupt
	MOVFF	WREG, POSTDEC1
	MOVFF	STATUS, POSTDEC1
	MOVFF	BSR, POSTDEC1
	MOVFF	PRODL, POSTDEC1
	MOVFF	PRODH, POSTDEC1
	MOVFF	FSR0L, POSTDEC1
	MOVFF	FSR0H, POSTDEC1
	MOVFF	PCLATH, POSTDEC1
	MOVFF	PCLATU, POSTDEC1
;	.line	141; /home/valentin/.icaro/np05/source/tortucaro.c	}
	MOVFF	PREINC1, PCLATU
	MOVFF	PREINC1, PCLATH
	MOVFF	PREINC1, FSR0H
	MOVFF	PREINC1, FSR0L
	MOVFF	PREINC1, PRODH
	MOVFF	PREINC1, PRODL
	MOVFF	PREINC1, BSR
	MOVFF	PREINC1, STATUS
	MOVFF	PREINC1, WREG
	RETFIE	

; I code from now on!
; ; Starting pCode block
S_tortucaro__pinguino_main	code
_pinguino_main:
;	.line	51; /home/valentin/.icaro/np05/source/tortucaro.c	PIE1=0;
	CLRF	_PIE1
;	.line	52; /home/valentin/.icaro/np05/source/tortucaro.c	PIE2=0;
	CLRF	_PIE2
;	.line	53; /home/valentin/.icaro/np05/source/tortucaro.c	ADCON1=0x0F;
	MOVLW	0x0f
	MOVWF	_ADCON1
;	.line	58; /home/valentin/.icaro/np05/source/tortucaro.c	setup();
	CALL	_setup
;	.line	60; /home/valentin/.icaro/np05/source/tortucaro.c	analog_init();
	CALL	_analog_init
;	.line	66; /home/valentin/.icaro/np05/source/tortucaro.c	servos_init();
	CALL	_servos_init
;	.line	69; /home/valentin/.icaro/np05/source/tortucaro.c	init_CDC();
	CALL	_init_CDC
;	.line	70; /home/valentin/.icaro/np05/source/tortucaro.c	PIE2bits.USBIE = 1;
	BSF	_PIE2bits, 5
;	.line	71; /home/valentin/.icaro/np05/source/tortucaro.c	INTCON = 0xC0;      
	MOVLW	0xc0
	MOVWF	_INTCON
;	.line	82; /home/valentin/.icaro/np05/source/tortucaro.c	INTCONbits.PEIE=1;
	BSF	_INTCONbits, 6
;	.line	83; /home/valentin/.icaro/np05/source/tortucaro.c	INTCONbits.GIE=1;
	BSF	_INTCONbits, 7
_01292_DS_:
;	.line	88; /home/valentin/.icaro/np05/source/tortucaro.c	loop();
	CALL	_loop
	BRA	_01292_DS_
	RETURN	

; ; Starting pCode block
S_tortucaro__loop	code
_loop:
;	.line	229; /home/valentin/.icaro/np05/source/user-tortucaro.c	void loop()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	BANKSEL	_valor
;	.line	232; /home/valentin/.icaro/np05/source/user-tortucaro.c	PORTD=valor;
	MOVF	_valor, W, B
	MOVWF	_PORTD
_01252_DS_:
;	.line	233; /home/valentin/.icaro/np05/source/user-tortucaro.c	while ((receivedbyte=CDCgets(rxstr))==0);
	MOVLW	0x80
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	MOVWF	r0x00
	MOVLW	0x03
	ADDWF	FSR1L, F
	MOVFF	r0x00, _receivedbyte
	MOVF	r0x00, W
	BZ	_01252_DS_
;	.line	234; /home/valentin/.icaro/np05/source/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVLW	LOW(_rxstr)
	BANKSEL	_receivedbyte
	ADDWF	_receivedbyte, W, B
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	235; /home/valentin/.icaro/np05/source/user-tortucaro.c	if (receivedbyte>0)
	MOVF	_receivedbyte, W, B
	BZ	_01266_DS_
	BANKSEL	_rxstr
;	.line	238; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='b')
	MOVF	_rxstr, W, B
	XORLW	0x62
	BNZ	_01256_DS_
;	.line	240; /home/valentin/.icaro/np05/source/user-tortucaro.c	CDCputs("icaro USB 01 \n",14);
	MOVLW	0x0e
	MOVWF	POSTDEC1
	MOVLW	UPPER(__str_3)
	MOVWF	POSTDEC1
	MOVLW	HIGH(__str_3)
	MOVWF	POSTDEC1
	MOVLW	LOW(__str_3)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
_01256_DS_:
	BANKSEL	_rxstr
;	.line	242; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='m')
	MOVF	_rxstr, W, B
	XORLW	0x6d
	BNZ	_01258_DS_
;	.line	244; /home/valentin/.icaro/np05/source/user-tortucaro.c	servos();
	CALL	_servos
_01258_DS_:
	BANKSEL	_rxstr
;	.line	246; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='e')
	MOVF	_rxstr, W, B
	XORLW	0x65
	BNZ	_01260_DS_
;	.line	248; /home/valentin/.icaro/np05/source/user-tortucaro.c	analogico();
	CALL	_analogico
_01260_DS_:
	BANKSEL	_rxstr
;	.line	250; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='l')
	MOVF	_rxstr, W, B
	XORLW	0x6c
	BNZ	_01262_DS_
;	.line	252; /home/valentin/.icaro/np05/source/user-tortucaro.c	l293d();
	CALL	_l293d
_01262_DS_:
	BANKSEL	_rxstr
;	.line	254; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='d')
	MOVF	_rxstr, W, B
	XORLW	0x64
	BNZ	_01266_DS_
;	.line	256; /home/valentin/.icaro/np05/source/user-tortucaro.c	digital();
	CALL	_digital
_01266_DS_:
	BANKSEL	_rxstr
;	.line	260; /home/valentin/.icaro/np05/source/user-tortucaro.c	rxstr[0]=0;
	CLRF	_rxstr, B
	BANKSEL	_receivedbyte
;	.line	261; /home/valentin/.icaro/np05/source/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__setup	code
_setup:
;	.line	210; /home/valentin/.icaro/np05/source/user-tortucaro.c	pinmode(21,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x15
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	211; /home/valentin/.icaro/np05/source/user-tortucaro.c	pinmode(22,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x16
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	212; /home/valentin/.icaro/np05/source/user-tortucaro.c	pinmode(23,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x17
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	213; /home/valentin/.icaro/np05/source/user-tortucaro.c	pinmode(24,INPUT);
	CLRF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x18
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	215; /home/valentin/.icaro/np05/source/user-tortucaro.c	pinmode(25,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x19
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	216; /home/valentin/.icaro/np05/source/user-tortucaro.c	pinmode(26,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1a
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	217; /home/valentin/.icaro/np05/source/user-tortucaro.c	pinmode(27,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1b
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	218; /home/valentin/.icaro/np05/source/user-tortucaro.c	pinmode(28,OUTPUT);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x1c
	MOVWF	POSTDEC1
	CALL	_pinmode
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	219; /home/valentin/.icaro/np05/source/user-tortucaro.c	ServoAttach(8);
	MOVLW	0x08
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	INCF	FSR1L, F
;	.line	220; /home/valentin/.icaro/np05/source/user-tortucaro.c	ServoAttach(9);
	MOVLW	0x09
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	INCF	FSR1L, F
;	.line	221; /home/valentin/.icaro/np05/source/user-tortucaro.c	ServoAttach(10);
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	INCF	FSR1L, F
;	.line	222; /home/valentin/.icaro/np05/source/user-tortucaro.c	ServoAttach(11);
	MOVLW	0x0b
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	INCF	FSR1L, F
;	.line	223; /home/valentin/.icaro/np05/source/user-tortucaro.c	ServoAttach(12);
	MOVLW	0x0c
	MOVWF	POSTDEC1
	CALL	_ServoAttach
	INCF	FSR1L, F
	RETURN	

; ; Starting pCode block
S_tortucaro__servos	code
_servos:
;	.line	152; /home/valentin/.icaro/np05/source/user-tortucaro.c	void servos()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
;	.line	156; /home/valentin/.icaro/np05/source/user-tortucaro.c	int resultado=0;
	CLRF	r0x00
	CLRF	r0x01
;	.line	157; /home/valentin/.icaro/np05/source/user-tortucaro.c	int val=0;
	CLRF	r0x02
_01192_DS_:
;	.line	159; /home/valentin/.icaro/np05/source/user-tortucaro.c	while ((receivedbyte=CDCgets(rxstr))==0);
	MOVLW	0x80
; #	MOVWF	r0x06
; #	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	MOVWF	r0x04
	MOVLW	0x03
	ADDWF	FSR1L, F
	MOVFF	r0x04, _receivedbyte
	MOVF	r0x04, W
	BZ	_01192_DS_
;	.line	160; /home/valentin/.icaro/np05/source/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVLW	LOW(_rxstr)
	BANKSEL	_receivedbyte
	ADDWF	_receivedbyte, W, B
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	161; /home/valentin/.icaro/np05/source/user-tortucaro.c	if (receivedbyte>0)
	MOVF	_receivedbyte, W, B
	BZ	_01206_DS_
;	.line	163; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='1')
	MOVFF	_rxstr, r0x04
	MOVF	r0x04, W
	XORLW	0x31
	BNZ	_01196_DS_
;	.line	165; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=10;
	MOVLW	0x0a
	MOVWF	r0x02
_01196_DS_:
;	.line	167; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='2')
	MOVF	r0x04, W
	XORLW	0x32
	BNZ	_01198_DS_
;	.line	169; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=11;
	MOVLW	0x0b
	MOVWF	r0x02
_01198_DS_:
;	.line	171; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='3')
	MOVF	r0x04, W
	XORLW	0x33
	BNZ	_01200_DS_
;	.line	173; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=12;
	MOVLW	0x0c
	MOVWF	r0x02
_01200_DS_:
;	.line	175; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='4')
	MOVF	r0x04, W
	XORLW	0x34
	BNZ	_01202_DS_
;	.line	177; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=8;
	MOVLW	0x08
	MOVWF	r0x02
_01202_DS_:
;	.line	179; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='5')
	MOVF	r0x04, W
	XORLW	0x35
	BNZ	_01206_DS_
;	.line	181; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=9;
	MOVLW	0x09
	MOVWF	r0x02
_01206_DS_:
	BANKSEL	_rxstr
;	.line	184; /home/valentin/.icaro/np05/source/user-tortucaro.c	rxstr[0]=0;
	CLRF	_rxstr, B
	BANKSEL	_receivedbyte
;	.line	185; /home/valentin/.icaro/np05/source/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
_01207_DS_:
;	.line	186; /home/valentin/.icaro/np05/source/user-tortucaro.c	while ((receivedbyte=CDCgets(rxstr))==0);
	MOVLW	0x80
; #	MOVWF	r0x06
; #	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	MOVWF	r0x04
	MOVLW	0x03
	ADDWF	FSR1L, F
	MOVFF	r0x04, _receivedbyte
	MOVF	r0x04, W
	BZ	_01207_DS_
;	.line	187; /home/valentin/.icaro/np05/source/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVLW	LOW(_rxstr)
	BANKSEL	_receivedbyte
	ADDWF	_receivedbyte, W, B
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	188; /home/valentin/.icaro/np05/source/user-tortucaro.c	if (receivedbyte>0)
	MOVF	_receivedbyte, W, B
	BZ	_01211_DS_
;	.line	190; /home/valentin/.icaro/np05/source/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	CLRF	INDF0
;	.line	191; /home/valentin/.icaro/np05/source/user-tortucaro.c	for (posic=0;posic<=7;posic++)
	CLRF	r0x04
	CLRF	r0x05
_01212_DS_:
	MOVF	r0x05, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01242_DS_
	MOVLW	0x08
	SUBWF	r0x04, W
_01242_DS_:
	BC	_01215_DS_
;	.line	193; /home/valentin/.icaro/np05/source/user-tortucaro.c	rb=(rxstr[posic]);
	MOVLW	LOW(_rxstr)
	ADDWF	r0x04, W
	MOVWF	r0x06
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x05, W
	MOVWF	r0x07
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x06
	CLRF	r0x07
;	.line	194; /home/valentin/.icaro/np05/source/user-tortucaro.c	resultado=resultado+rb;
	MOVF	r0x06, W
	ADDWF	r0x00, F
	MOVF	r0x07, W
	ADDWFC	r0x01, F
;	.line	191; /home/valentin/.icaro/np05/source/user-tortucaro.c	for (posic=0;posic<=7;posic++)
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
	BRA	_01212_DS_
_01215_DS_:
;	.line	196; /home/valentin/.icaro/np05/source/user-tortucaro.c	ServoWrite(val,resultado);
	MOVF	r0x00, W
; #	MOVWF	r0x03
; #	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_ServoWrite
	MOVLW	0x02
	ADDWF	FSR1L, F
_01211_DS_:
	BANKSEL	_rxstr
;	.line	198; /home/valentin/.icaro/np05/source/user-tortucaro.c	rxstr[0]=0;
	CLRF	_rxstr, B
	BANKSEL	_receivedbyte
;	.line	199; /home/valentin/.icaro/np05/source/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
;	.line	201; /home/valentin/.icaro/np05/source/user-tortucaro.c	CDCputs("muevo el servo ",15);
	MOVLW	0x0f
	MOVWF	POSTDEC1
	MOVLW	UPPER(__str_2)
	MOVWF	POSTDEC1
	MOVLW	HIGH(__str_2)
	MOVWF	POSTDEC1
	MOVLW	LOW(__str_2)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
; #	MOVF	r0x01, W
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
; #	MOVF	r0x00, W
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
;	.line	203; /home/valentin/.icaro/np05/source/user-tortucaro.c	CDCputs(resultado,DEC);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	205; /home/valentin/.icaro/np05/source/user-tortucaro.c	return;
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__leer	code
_leer:
;	.line	125; /home/valentin/.icaro/np05/source/user-tortucaro.c	void leer()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
;	.line	129; /home/valentin/.icaro/np05/source/user-tortucaro.c	int resultado=0;
	CLRF	r0x00
	CLRF	r0x01
;	.line	130; /home/valentin/.icaro/np05/source/user-tortucaro.c	int	i=1;
	MOVLW	0x01
	MOVWF	r0x02
	CLRF	r0x03
_01178_DS_:
;	.line	133; /home/valentin/.icaro/np05/source/user-tortucaro.c	receivedbyte2=CDCgets(rxstr2);
	MOVLW	0x80
; #	MOVWF	r0x06
; #	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr2)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr2)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	BANKSEL	_receivedbyte2
	MOVWF	_receivedbyte2, B
	MOVLW	0x03
	ADDWF	FSR1L, F
; removed redundant BANKSEL
;	.line	134; /home/valentin/.icaro/np05/source/user-tortucaro.c	if (receivedbyte2>0)
	MOVF	_receivedbyte2, W, B
	BZ	_01178_DS_
;	.line	136; /home/valentin/.icaro/np05/source/user-tortucaro.c	rxstr2[receivedbyte2]=0;
	MOVLW	LOW(_rxstr2)
; removed redundant BANKSEL
	ADDWF	_receivedbyte2, W, B
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_rxstr2)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	CLRF	INDF0
;	.line	138; /home/valentin/.icaro/np05/source/user-tortucaro.c	for (posic=0;posic<=7;posic++)
	CLRF	r0x04
	CLRF	r0x05
_01173_DS_:
	MOVF	r0x05, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_01187_DS_
	MOVLW	0x08
	SUBWF	r0x04, W
_01187_DS_:
	BC	_01176_DS_
;	.line	140; /home/valentin/.icaro/np05/source/user-tortucaro.c	rb=(rxstr2[posic]);
	MOVLW	LOW(_rxstr2)
	ADDWF	r0x04, W
	MOVWF	r0x06
	MOVLW	HIGH(_rxstr2)
	ADDWFC	r0x05, W
	MOVWF	r0x07
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x06
	CLRF	r0x07
;	.line	141; /home/valentin/.icaro/np05/source/user-tortucaro.c	i=i*i;// en cada iteracion i se duplica: 1,2,4,8,16,32,64,128
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x02
	MOVFF	PRODL, r0x03
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	142; /home/valentin/.icaro/np05/source/user-tortucaro.c	resultado=resultado+rb;
	MOVF	r0x06, W
	ADDWF	r0x00, F
	MOVF	r0x07, W
	ADDWFC	r0x01, F
;	.line	138; /home/valentin/.icaro/np05/source/user-tortucaro.c	for (posic=0;posic<=7;posic++)
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
	BRA	_01173_DS_
_01176_DS_:
;	.line	147; /home/valentin/.icaro/np05/source/user-tortucaro.c	PORTB=resultado;// en ves de usar digitalwrite, mando directamente al PORTB
	MOVF	r0x00, W
	MOVWF	_PORTB
;	.line	148; /home/valentin/.icaro/np05/source/user-tortucaro.c	return;
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__analogico	code
_analogico:
;	.line	72; /home/valentin/.icaro/np05/source/user-tortucaro.c	void analogico()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	77; /home/valentin/.icaro/np05/source/user-tortucaro.c	unsigned int val=0;
	CLRF	r0x00
_01137_DS_:
;	.line	82; /home/valentin/.icaro/np05/source/user-tortucaro.c	receivedbyte2=CDCgets(rxstr2);
	MOVLW	0x80
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr2)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr2)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	BANKSEL	_receivedbyte2
	MOVWF	_receivedbyte2, B
	MOVLW	0x03
	ADDWF	FSR1L, F
; removed redundant BANKSEL
;	.line	83; /home/valentin/.icaro/np05/source/user-tortucaro.c	if (receivedbyte2>0)
	MOVF	_receivedbyte2, W, B
	BZ	_01137_DS_
;	.line	85; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='1')
	MOVFF	_rxstr2, r0x02
	MOVF	r0x02, W
	XORLW	0x31
	BNZ	_01119_DS_
;	.line	87; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=13;
	MOVLW	0x0d
	MOVWF	r0x00
_01119_DS_:
;	.line	89; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='2')
	MOVF	r0x02, W
	XORLW	0x32
	BNZ	_01121_DS_
;	.line	91; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=14;
	MOVLW	0x0e
	MOVWF	r0x00
_01121_DS_:
;	.line	93; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='3')
	MOVF	r0x02, W
	XORLW	0x33
	BNZ	_01123_DS_
;	.line	95; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=15;
	MOVLW	0x0f
	MOVWF	r0x00
_01123_DS_:
;	.line	97; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='4')
	MOVF	r0x02, W
	XORLW	0x34
	BNZ	_01125_DS_
;	.line	99; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=16;
	MOVLW	0x10
	MOVWF	r0x00
_01125_DS_:
;	.line	101; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='5')
	MOVF	r0x02, W
	XORLW	0x35
	BNZ	_01127_DS_
;	.line	103; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=17;
	MOVLW	0x11
	MOVWF	r0x00
_01127_DS_:
;	.line	105; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='6')
	MOVF	r0x02, W
	XORLW	0x36
	BNZ	_01129_DS_
;	.line	107; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=18;
	MOVLW	0x12
	MOVWF	r0x00
_01129_DS_:
;	.line	109; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='7')
	MOVF	r0x02, W
	XORLW	0x37
	BNZ	_01131_DS_
;	.line	111; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=19;
	MOVLW	0x13
	MOVWF	r0x00
_01131_DS_:
;	.line	113; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='8')
	MOVF	r0x02, W
	XORLW	0x38
	BNZ	_01133_DS_
;	.line	115; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=20;
	MOVLW	0x14
	MOVWF	r0x00
_01133_DS_:
	BANKSEL	_receivedbyte2
;	.line	117; /home/valentin/.icaro/np05/source/user-tortucaro.c	receivedbyte2=0;
	CLRF	_receivedbyte2, B
;	.line	121; /home/valentin/.icaro/np05/source/user-tortucaro.c	valor=analogread(val);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_analogread
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	INCF	FSR1L, F
; #	MOVF	r0x01, W
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
; #	MOVF	r0x00, W
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
;	.line	122; /home/valentin/.icaro/np05/source/user-tortucaro.c	CDCputs(valor,DEC);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__l293d	code
_l293d:
;	.line	32; /home/valentin/.icaro/np05/source/user-tortucaro.c	void l293d()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	37; /home/valentin/.icaro/np05/source/user-tortucaro.c	int val=0;
	CLRF	r0x00
	CLRF	r0x01
_01093_DS_:
;	.line	41; /home/valentin/.icaro/np05/source/user-tortucaro.c	receivedbyte2=CDCgets(rxstr2);
	MOVLW	0x80
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr2)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr2)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	BANKSEL	_receivedbyte2
	MOVWF	_receivedbyte2, B
	MOVLW	0x03
	ADDWF	FSR1L, F
; removed redundant BANKSEL
;	.line	42; /home/valentin/.icaro/np05/source/user-tortucaro.c	if (receivedbyte2>0)
	MOVF	_receivedbyte2, W, B
	BZ	_01093_DS_
;	.line	44; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='1')
	MOVFF	_rxstr2, r0x02
	MOVF	r0x02, W
	XORLW	0x31
	BNZ	_01081_DS_
;	.line	46; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=96;
	MOVLW	0x60
	MOVWF	r0x00
	CLRF	r0x01
_01081_DS_:
;	.line	48; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='2')
	MOVF	r0x02, W
	XORLW	0x32
	BNZ	_01083_DS_
;	.line	50; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=144;
	MOVLW	0x90
	MOVWF	r0x00
	CLRF	r0x01
_01083_DS_:
;	.line	52; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='3')
	MOVF	r0x02, W
	XORLW	0x33
	BNZ	_01085_DS_
;	.line	54; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=64;
	MOVLW	0x40
	MOVWF	r0x00
	CLRF	r0x01
_01085_DS_:
;	.line	56; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='4')
	MOVF	r0x02, W
	XORLW	0x34
	BNZ	_01087_DS_
;	.line	58; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=32;
	MOVLW	0x20
	MOVWF	r0x00
	CLRF	r0x01
_01087_DS_:
;	.line	60; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr2[0]=='5')
	MOVF	r0x02, W
	XORLW	0x35
	BNZ	_01089_DS_
;	.line	62; /home/valentin/.icaro/np05/source/user-tortucaro.c	val=0;
	CLRF	r0x00
	CLRF	r0x01
_01089_DS_:
	BANKSEL	_receivedbyte2
;	.line	64; /home/valentin/.icaro/np05/source/user-tortucaro.c	receivedbyte2=0;
	CLRF	_receivedbyte2, B
;	.line	69; /home/valentin/.icaro/np05/source/user-tortucaro.c	valor=val;
	MOVFF	r0x00, _valor
	MOVFF	r0x01, (_valor + 1)
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__digital	code
_digital:
;	.line	8; /home/valentin/.icaro/np05/source/user-tortucaro.c	void digital()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	10; /home/valentin/.icaro/np05/source/user-tortucaro.c	int sens=0;
	CLRF	r0x00
	CLRF	r0x01
_01042_DS_:
;	.line	11; /home/valentin/.icaro/np05/source/user-tortucaro.c	while ((receivedbyte=CDCgets(rxstr))==0);
	MOVLW	0x80
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rxstr)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rxstr)
	MOVWF	POSTDEC1
	CALL	_CDCgets
	MOVWF	r0x02
	MOVLW	0x03
	ADDWF	FSR1L, F
	MOVFF	r0x02, _receivedbyte
	MOVF	r0x02, W
	BZ	_01042_DS_
;	.line	12; /home/valentin/.icaro/np05/source/user-tortucaro.c	rxstr[receivedbyte]=0;
	MOVLW	LOW(_rxstr)
	BANKSEL	_receivedbyte
	ADDWF	_receivedbyte, W, B
	MOVWF	r0x02
	CLRF	r0x03
	MOVLW	HIGH(_rxstr)
	ADDWFC	r0x03, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	CLRF	INDF0
; removed redundant BANKSEL
;	.line	13; /home/valentin/.icaro/np05/source/user-tortucaro.c	if (receivedbyte>0)
	MOVF	_receivedbyte, W, B
	BZ	_01054_DS_
;	.line	15; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='4')
	MOVFF	_rxstr, r0x02
	MOVF	r0x02, W
	XORLW	0x34
	BNZ	_01046_DS_
;	.line	16; /home/valentin/.icaro/np05/source/user-tortucaro.c	sens=21;
	MOVLW	0x15
	MOVWF	r0x00
	CLRF	r0x01
_01046_DS_:
;	.line	17; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='3')
	MOVF	r0x02, W
	XORLW	0x33
	BNZ	_01048_DS_
;	.line	18; /home/valentin/.icaro/np05/source/user-tortucaro.c	sens=22;
	MOVLW	0x16
	MOVWF	r0x00
	CLRF	r0x01
_01048_DS_:
;	.line	19; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='2')
	MOVF	r0x02, W
	XORLW	0x32
	BNZ	_01050_DS_
;	.line	20; /home/valentin/.icaro/np05/source/user-tortucaro.c	sens=23;
	MOVLW	0x17
	MOVWF	r0x00
	CLRF	r0x01
_01050_DS_:
;	.line	21; /home/valentin/.icaro/np05/source/user-tortucaro.c	if(rxstr[0]=='1')
	MOVF	r0x02, W
	XORLW	0x31
	BNZ	_01054_DS_
;	.line	22; /home/valentin/.icaro/np05/source/user-tortucaro.c	sens=24;
	MOVLW	0x18
	MOVWF	r0x00
	CLRF	r0x01
_01054_DS_:
	BANKSEL	_rxstr
;	.line	24; /home/valentin/.icaro/np05/source/user-tortucaro.c	rxstr[0]=0;
	CLRF	_rxstr, B
	BANKSEL	_receivedbyte
;	.line	25; /home/valentin/.icaro/np05/source/user-tortucaro.c	receivedbyte=0;
	CLRF	_receivedbyte, B
;	.line	26; /home/valentin/.icaro/np05/source/user-tortucaro.c	if (digitalread(sens)) 
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_digitalread
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x02
	ADDWF	FSR1L, F
	MOVF	r0x00, W
	IORWF	r0x01, W
	BZ	_01056_DS_
;	.line	27; /home/valentin/.icaro/np05/source/user-tortucaro.c	CDCputs("0",1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	UPPER(__str_0)
	MOVWF	POSTDEC1
	MOVLW	HIGH(__str_0)
	MOVWF	POSTDEC1
	MOVLW	LOW(__str_0)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
	BRA	_01058_DS_
_01056_DS_:
;	.line	29; /home/valentin/.icaro/np05/source/user-tortucaro.c	CDCputs("1",1);
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	UPPER(__str_1)
	MOVWF	POSTDEC1
	MOVLW	HIGH(__str_1)
	MOVWF	POSTDEC1
	MOVLW	LOW(__str_1)
	MOVWF	POSTDEC1
	CALL	_CDCputs
	MOVLW	0x04
	ADDWF	FSR1L, F
_01058_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__epapout_init	code
_epapout_init:
;	.line	39; /home/valentin/.icaro/np05/source/tortucaro.c	void epapout_init() { return; }
	RETURN	

; ; Starting pCode block
S_tortucaro__epapin_init	code
_epapin_init:
;	.line	38; /home/valentin/.icaro/np05/source/tortucaro.c	void epapin_init() { return; }
	RETURN	

; ; Starting pCode block
S_tortucaro__epap_out	code
_epap_out:
;	.line	37; /home/valentin/.icaro/np05/source/tortucaro.c	void epap_out() { return; }
	RETURN	

; ; Starting pCode block
S_tortucaro__epap_in	code
_epap_in:
;	.line	36; /home/valentin/.icaro/np05/source/tortucaro.c	void epap_in() { return; }
	RETURN	

; ; Starting pCode block
S_tortucaro__pinmode	code
_pinmode:
;	.line	69; /home/valentin/.icaro/np05/tmp/digitalw.c	void pinmode(int input, int state)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	71; /home/valentin/.icaro/np05/tmp/digitalw.c	switch (port[input])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_port)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_port)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVLW	0x05
	SUBWF	r0x04, W
	BTFSC	STATUS, 0
	BRA	_01008_DS_
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	CLRF	r0x08
	RLCF	r0x04, W
	RLCF	r0x08, F
	RLCF	WREG, W
	RLCF	r0x08, F
	ANDLW	0xfc
	MOVWF	r0x07
	MOVLW	UPPER(_01017_DS_)
	MOVWF	PCLATU
	MOVLW	HIGH(_01017_DS_)
	MOVWF	PCLATH
	MOVLW	LOW(_01017_DS_)
	ADDWF	r0x07, F
	MOVF	r0x08, W
	ADDWFC	PCLATH, F
	BTFSC	STATUS, 0
	INCF	PCLATU, F
	MOVF	r0x07, W
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVWF	PCL
_01017_DS_:
	GOTO	_00987_DS_
	GOTO	_00991_DS_
	GOTO	_00995_DS_
	GOTO	_00999_DS_
	GOTO	_01003_DS_
_00987_DS_:
;	.line	73; /home/valentin/.icaro/np05/tmp/digitalw.c	case 0: if (state) TRISB=TRISB | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00989_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_TRISB, F
	BRA	_01008_DS_
_00989_DS_:
;	.line	74; /home/valentin/.icaro/np05/tmp/digitalw.c	else TRISB=TRISB & (255-mask[input]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_TRISB, F
;	.line	75; /home/valentin/.icaro/np05/tmp/digitalw.c	break;
	BRA	_01008_DS_
_00991_DS_:
;	.line	76; /home/valentin/.icaro/np05/tmp/digitalw.c	case 1: if (state) TRISC=TRISC | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00993_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_TRISC, F
	BRA	_01008_DS_
_00993_DS_:
;	.line	77; /home/valentin/.icaro/np05/tmp/digitalw.c	else TRISC=TRISC & (255-mask[input]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_TRISC, F
;	.line	78; /home/valentin/.icaro/np05/tmp/digitalw.c	break;
	BRA	_01008_DS_
_00995_DS_:
;	.line	79; /home/valentin/.icaro/np05/tmp/digitalw.c	case 2: if (state) TRISA=TRISA | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00997_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_TRISA, F
	BRA	_01008_DS_
_00997_DS_:
;	.line	80; /home/valentin/.icaro/np05/tmp/digitalw.c	else TRISA=TRISA & (255-mask[input]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_TRISA, F
;	.line	81; /home/valentin/.icaro/np05/tmp/digitalw.c	break;
	BRA	_01008_DS_
_00999_DS_:
;	.line	83; /home/valentin/.icaro/np05/tmp/digitalw.c	case 3: if (state) TRISD=TRISD | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_01001_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_TRISD, F
	BRA	_01008_DS_
_01001_DS_:
;	.line	84; /home/valentin/.icaro/np05/tmp/digitalw.c	else TRISD=TRISD & (255-mask[input]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_TRISD, F
;	.line	85; /home/valentin/.icaro/np05/tmp/digitalw.c	break;
	BRA	_01008_DS_
_01003_DS_:
;	.line	86; /home/valentin/.icaro/np05/tmp/digitalw.c	case 4: if (state) TRISE=TRISE | mask[input];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_01005_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_TRISE, F
	BRA	_01008_DS_
_01005_DS_:
;	.line	87; /home/valentin/.icaro/np05/tmp/digitalw.c	else TRISE=TRISE & (255-mask[input]);
	CLRF	r0x02
	BTFSC	r0x01, 7
	SETF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	r0x00, W
	SUBLW	0xff
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ANDWF	_TRISE, F
_01008_DS_:
;	.line	90; /home/valentin/.icaro/np05/tmp/digitalw.c	}
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__digitalread	code
_digitalread:
;	.line	44; /home/valentin/.icaro/np05/tmp/digitalw.c	int digitalread(int input)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	46; /home/valentin/.icaro/np05/tmp/digitalw.c	switch (port[input])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_port)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_port)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVLW	0x05
	SUBWF	r0x02, W
	BTFSC	STATUS, 0
	BRA	_00972_DS_
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	CLRF	r0x06
	RLCF	r0x02, W
	RLCF	r0x06, F
	RLCF	WREG, W
	RLCF	r0x06, F
	ANDLW	0xfc
	MOVWF	r0x05
	MOVLW	UPPER(_00982_DS_)
	MOVWF	PCLATU
	MOVLW	HIGH(_00982_DS_)
	MOVWF	PCLATH
	MOVLW	LOW(_00982_DS_)
	ADDWF	r0x05, F
	MOVF	r0x06, W
	ADDWFC	PCLATH, F
	BTFSC	STATUS, 0
	INCF	PCLATU, F
	MOVF	r0x05, W
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVWF	PCL
_00982_DS_:
	GOTO	_00952_DS_
	GOTO	_00956_DS_
	GOTO	_00960_DS_
	GOTO	_00964_DS_
	GOTO	_00968_DS_
_00952_DS_:
;	.line	48; /home/valentin/.icaro/np05/tmp/digitalw.c	case 0: if ((PORTB & mask[input])!=0) return (1);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	_PORTB, W
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BZ	_00954_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00973_DS_
_00954_DS_:
;	.line	49; /home/valentin/.icaro/np05/tmp/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00973_DS_
_00956_DS_:
;	.line	51; /home/valentin/.icaro/np05/tmp/digitalw.c	case 1: if ((PORTC & mask[input])!=0) return (1);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	_PORTC, W
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BZ	_00958_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00973_DS_
_00958_DS_:
;	.line	52; /home/valentin/.icaro/np05/tmp/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00973_DS_
_00960_DS_:
;	.line	54; /home/valentin/.icaro/np05/tmp/digitalw.c	case 2: if ((PORTA & mask[input])!=0) return (1);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	_PORTA, W
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BZ	_00962_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00973_DS_
_00962_DS_:
;	.line	55; /home/valentin/.icaro/np05/tmp/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00973_DS_
_00964_DS_:
;	.line	58; /home/valentin/.icaro/np05/tmp/digitalw.c	case 3: if ((PORTD & mask[input])!=0) return (1);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	_PORTD, W
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BZ	_00966_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00973_DS_
_00966_DS_:
;	.line	59; /home/valentin/.icaro/np05/tmp/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00973_DS_
_00968_DS_:
;	.line	61; /home/valentin/.icaro/np05/tmp/digitalw.c	case 4: if ((PORTE & mask[input])!=0) return (1);
	CLRF	r0x02
	BTFSC	r0x01, 7
	SETF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	_PORTE, W
	ANDWF	r0x00, F
	MOVF	r0x00, W
	BZ	_00970_DS_
	CLRF	PRODL
	MOVLW	0x01
	BRA	_00973_DS_
_00970_DS_:
;	.line	62; /home/valentin/.icaro/np05/tmp/digitalw.c	else return (0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00973_DS_
_00972_DS_:
;	.line	66; /home/valentin/.icaro/np05/tmp/digitalw.c	return (0);
	CLRF	PRODL
	CLRF	WREG
_00973_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__digitalwrite	code
_digitalwrite:
;	.line	20; /home/valentin/.icaro/np05/tmp/digitalw.c	void digitalwrite(int output,int state)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	22; /home/valentin/.icaro/np05/tmp/digitalw.c	switch (port[output])
	MOVLW	LOW(_port)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_port)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_port)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVLW	0x05
	SUBWF	r0x04, W
	BTFSC	STATUS, 0
	BRA	_00938_DS_
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	CLRF	r0x08
	RLCF	r0x04, W
	RLCF	r0x08, F
	RLCF	WREG, W
	RLCF	r0x08, F
	ANDLW	0xfc
	MOVWF	r0x07
	MOVLW	UPPER(_00947_DS_)
	MOVWF	PCLATU
	MOVLW	HIGH(_00947_DS_)
	MOVWF	PCLATH
	MOVLW	LOW(_00947_DS_)
	ADDWF	r0x07, F
	MOVF	r0x08, W
	ADDWFC	PCLATH, F
	BTFSC	STATUS, 0
	INCF	PCLATU, F
	MOVF	r0x07, W
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVWF	PCL
_00947_DS_:
	GOTO	_00917_DS_
	GOTO	_00921_DS_
	GOTO	_00925_DS_
	GOTO	_00929_DS_
	GOTO	_00933_DS_
_00917_DS_:
;	.line	24; /home/valentin/.icaro/np05/tmp/digitalw.c	case 0: if (state) PORTB=PORTB | mask[output]; 
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00919_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_PORTB, F
	BRA	_00938_DS_
_00919_DS_:
;	.line	25; /home/valentin/.icaro/np05/tmp/digitalw.c	else PORTB=PORTB & (255-mask[output]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_PORTB, F
;	.line	26; /home/valentin/.icaro/np05/tmp/digitalw.c	break;
	BRA	_00938_DS_
_00921_DS_:
;	.line	27; /home/valentin/.icaro/np05/tmp/digitalw.c	case 1: if (state) PORTC=PORTC | mask[output];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00923_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_PORTC, F
	BRA	_00938_DS_
_00923_DS_:
;	.line	28; /home/valentin/.icaro/np05/tmp/digitalw.c	else PORTC=PORTC & (255-mask[output]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_PORTC, F
;	.line	29; /home/valentin/.icaro/np05/tmp/digitalw.c	break;
	BRA	_00938_DS_
_00925_DS_:
;	.line	30; /home/valentin/.icaro/np05/tmp/digitalw.c	case 2: if (state) PORTA=PORTA | mask[output];
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00927_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_PORTA, F
	BRA	_00938_DS_
_00927_DS_:
;	.line	31; /home/valentin/.icaro/np05/tmp/digitalw.c	else PORTA=PORTA & (255-mask[output]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_PORTA, F
;	.line	32; /home/valentin/.icaro/np05/tmp/digitalw.c	break;
	BRA	_00938_DS_
_00929_DS_:
;	.line	34; /home/valentin/.icaro/np05/tmp/digitalw.c	case 3: if (state) PORTD=PORTD | mask[output]; 
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00931_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	IORWF	_PORTD, F
	BRA	_00938_DS_
_00931_DS_:
;	.line	35; /home/valentin/.icaro/np05/tmp/digitalw.c	else PORTD=PORTD & (255-mask[output]);
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x04
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	BTFSC	r0x01, 7
	SETF	r0x06
	MOVLW	UPPER(_mask)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	MOVF	r0x04, W
	SUBLW	0xff
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
	ANDWF	_PORTD, F
;	.line	36; /home/valentin/.icaro/np05/tmp/digitalw.c	break;
	BRA	_00938_DS_
_00933_DS_:
;	.line	37; /home/valentin/.icaro/np05/tmp/digitalw.c	case 4: if (state) PORTE=PORTE | mask[output]; 
	MOVF	r0x02, W
	IORWF	r0x03, W
	BZ	_00935_DS_
	MOVLW	LOW(_mask)
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	BTFSC	r0x01, 7
	SETF	r0x04
	MOVLW	UPPER(_mask)
	ADDWFC	r0x04, F
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x02
	MOVF	r0x02, W
	IORWF	_PORTE, F
	BRA	_00938_DS_
_00935_DS_:
;	.line	38; /home/valentin/.icaro/np05/tmp/digitalw.c	else PORTE=PORTE & (255-mask[output]);
	CLRF	r0x02
	BTFSC	r0x01, 7
	SETF	r0x02
	MOVLW	LOW(_mask)
	ADDWF	r0x00, F
	MOVLW	HIGH(_mask)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_mask)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	r0x00, W
	SUBLW	0xff
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ANDWF	_PORTE, F
_00938_DS_:
;	.line	41; /home/valentin/.icaro/np05/tmp/digitalw.c	}
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__servos_interrupt	code
_servos_interrupt:
;	.line	289; /home/valentin/.icaro/np05/tmp/servos.c	if (PIR1bits.TMR1IF) {
	BTFSS	_PIR1bits, 0
	BRA	_00912_DS_
;	.line	290; /home/valentin/.icaro/np05/tmp/servos.c	PIR1bits.TMR1IF=0;
	BCF	_PIR1bits, 0
;	.line	291; /home/valentin/.icaro/np05/tmp/servos.c	T1CON=0x00;
	CLRF	_T1CON
	BANKSEL	_phase
;	.line	292; /home/valentin/.icaro/np05/tmp/servos.c	if (phase) {
	MOVF	_phase, W, B
	BZ	_00908_DS_
;	.line	294; /home/valentin/.icaro/np05/tmp/servos.c	ServosPulseUp();
	CALL	_ServosPulseUp
;	.line	296; /home/valentin/.icaro/np05/tmp/servos.c	TMR1H= 0xd3;
	MOVLW	0xd3
	MOVWF	_TMR1H
;	.line	297; /home/valentin/.icaro/np05/tmp/servos.c	TMR1L= 0x8f;
	MOVLW	0x8f
	MOVWF	_TMR1L
;	.line	299; /home/valentin/.icaro/np05/tmp/servos.c	T1CON=1;
	MOVLW	0x01
	MOVWF	_T1CON
	BANKSEL	_phase
;	.line	300; /home/valentin/.icaro/np05/tmp/servos.c	phase = 0;
	CLRF	_phase, B
	BRA	_00912_DS_
_00908_DS_:
;	.line	305; /home/valentin/.icaro/np05/tmp/servos.c	ServosPulseDown();
	CALL	_ServosPulseDown
;	.line	309; /home/valentin/.icaro/np05/tmp/servos.c	TMR1H= 0x2d;
	MOVLW	0x2d
	MOVWF	_TMR1H
;	.line	310; /home/valentin/.icaro/np05/tmp/servos.c	TMR1L= 0x0f;
	MOVLW	0x0f
	MOVWF	_TMR1L
; #	MOVF	_needreordering, W, B
; #	BTFSC	STATUS, 2
; #	GOTO	_00906_DS_
; #	CALL	_SortServoTimings
; #	MOVLW	0x21
	BANKSEL	_needreordering
;	.line	312; /home/valentin/.icaro/np05/tmp/servos.c	if (needreordering)	
	MOVF	_needreordering, W, B
;	.line	313; /home/valentin/.icaro/np05/tmp/servos.c	SortServoTimings();  // This takes more than 1 ms, but it's call only if needed.
	BTFSS	STATUS, 2
;	.line	314; /home/valentin/.icaro/np05/tmp/servos.c	T1CON= ( 1 | 2 << 4 ) ; // activate timer1 and prescaler = 1:4
	CALL	_SortServoTimings
	MOVLW	0x21
	MOVWF	_T1CON
;	.line	315; /home/valentin/.icaro/np05/tmp/servos.c	phase = 1;  //This indicates that after next interrupt it will start the servos cycle.
	MOVLW	0x01
	BANKSEL	_phase
	MOVWF	_phase, B
_00912_DS_:
;	.line	318; /home/valentin/.icaro/np05/tmp/servos.c	return;
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoMaximumPulse	code
_ServoMaximumPulse:
;	.line	274; /home/valentin/.icaro/np05/tmp/servos.c	void ServoMaximumPulse(uchar servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	276; /home/valentin/.icaro/np05/tmp/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00896_DS_
; #	GOTO	_00897_DS_
; #	CLRF	r0x01
;	.line	277; /home/valentin/.icaro/np05/tmp/servos.c	return;
	SUBWF	r0x00, W
;	.line	279; /home/valentin/.icaro/np05/tmp/servos.c	servovalues[servo]=SERVOMAX;  //  250 = 2000 useg pulse
	BC	_00897_DS_
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVLW	0xfa
	MOVWF	INDF0
;	.line	281; /home/valentin/.icaro/np05/tmp/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVLW	0x01
	BANKSEL	_needreordering
	MOVWF	_needreordering, B
_00897_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoMinimumPulse	code
_ServoMinimumPulse:
;	.line	263; /home/valentin/.icaro/np05/tmp/servos.c	void ServoMinimumPulse(uchar servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	265; /home/valentin/.icaro/np05/tmp/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00886_DS_
; #	GOTO	_00887_DS_
; #	CLRF	r0x01
;	.line	266; /home/valentin/.icaro/np05/tmp/servos.c	return;
	SUBWF	r0x00, W
;	.line	268; /home/valentin/.icaro/np05/tmp/servos.c	servovalues[servo]=SERVOMIN;  //  1 = 1000 useg pulse
	BC	_00887_DS_
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVLW	0x01
	MOVWF	INDF0
	BANKSEL	_needreordering
;	.line	270; /home/valentin/.icaro/np05/tmp/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVWF	_needreordering, B
_00887_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoRead	code
_ServoRead:
;	.line	255; /home/valentin/.icaro/np05/tmp/servos.c	unsigned char ServoRead(uchar servo)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	257; /home/valentin/.icaro/np05/tmp/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
	SUBWF	r0x00, W
	BNC	_00876_DS_
;	.line	258; /home/valentin/.icaro/np05/tmp/servos.c	return 0;
	CLRF	WREG
	BRA	_00877_DS_
_00876_DS_:
;	.line	259; /home/valentin/.icaro/np05/tmp/servos.c	return servovalues[servo];
	CLRF	r0x01
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
_00877_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoWrite	code
_ServoWrite:
;	.line	240; /home/valentin/.icaro/np05/tmp/servos.c	void ServoWrite(uchar servo, uchar value)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	242; /home/valentin/.icaro/np05/tmp/servos.c	if(servo>=18)        // test if numservo is valid
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00858_DS_
; #	GOTO	_00863_DS_
; #	MOVLW	0x01
;	.line	243; /home/valentin/.icaro/np05/tmp/servos.c	return;
	SUBWF	r0x00, W
;	.line	245; /home/valentin/.icaro/np05/tmp/servos.c	if(value<SERVOMIN)  //  1 = 1000 useg pulse
	BC	_00863_DS_
	MOVLW	0x01
	SUBWF	r0x01, W
	BC	_00860_DS_
;	.line	246; /home/valentin/.icaro/np05/tmp/servos.c	value=SERVOMIN;
	MOVLW	0x01
	MOVWF	r0x01
_00860_DS_:
;	.line	247; /home/valentin/.icaro/np05/tmp/servos.c	if(value>SERVOMAX) // 250 = 2000 useg pulse
	MOVLW	0xfb
	SUBWF	r0x01, W
	BNC	_00862_DS_
;	.line	248; /home/valentin/.icaro/np05/tmp/servos.c	value=SERVOMAX;
	MOVLW	0xfa
	MOVWF	r0x01
_00862_DS_:
;	.line	249; /home/valentin/.icaro/np05/tmp/servos.c	servovalues[servo]=value;
	CLRF	r0x02
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x02, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x01, INDF0
;	.line	251; /home/valentin/.icaro/np05/tmp/servos.c	needreordering=1;  // This indicates servo timings must be reordered.
	MOVLW	0x01
	BANKSEL	_needreordering
	MOVWF	_needreordering, B
_00863_DS_:
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoDetach	code
_ServoDetach:
;	.line	226; /home/valentin/.icaro/np05/tmp/servos.c	void ServoDetach(uchar pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	228; /home/valentin/.icaro/np05/tmp/servos.c	if(pin>=18) return;
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00837_DS_
; #	GOTO	_00844_DS_
; #	MOVLW	0x08
;	.line	230; /home/valentin/.icaro/np05/tmp/servos.c	if(pin<8){
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00844_DS_
	MOVLW	0x08
	SUBWF	r0x00, W
	BC	_00842_DS_
;	.line	231; /home/valentin/.icaro/np05/tmp/servos.c	activatedservos[MaskPort_B] = activatedservos[MaskPort_B] ^ servomasks[pin];
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	BANKSEL	_activatedservos
	MOVF	_activatedservos, W, B
	XORWF	r0x01, F
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	_activatedservos, B
	BRA	_00844_DS_
_00842_DS_:
;	.line	232; /home/valentin/.icaro/np05/tmp/servos.c	} else if (pin>12) {
	MOVLW	0x0d
	SUBWF	r0x00, W
	BNC	_00839_DS_
;	.line	233; /home/valentin/.icaro/np05/tmp/servos.c	activatedservos[MaskPort_A] = activatedservos[MaskPort_A] ^ servomasks[pin];
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	BANKSEL	(_activatedservos + 2)
	MOVF	(_activatedservos + 2), W, B
	XORWF	r0x01, F
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 2), B
	BRA	_00844_DS_
_00839_DS_:
;	.line	235; /home/valentin/.icaro/np05/tmp/servos.c	activatedservos[MaskPort_C] = activatedservos[MaskPort_C] ^ servomasks[pin];
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	BANKSEL	(_activatedservos + 1)
	MOVF	(_activatedservos + 1), W, B
	XORWF	r0x00, F
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(_activatedservos + 1), B
_00844_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ServoAttach	code
_ServoAttach:
;	.line	209; /home/valentin/.icaro/np05/tmp/servos.c	void ServoAttach(uchar pin)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	211; /home/valentin/.icaro/np05/tmp/servos.c	if(pin>=18) return;
	MOVLW	0x12
; #	SUBWF	r0x00, W
; #	BTFSS	STATUS, 0
; #	GOTO	_00815_DS_
; #	GOTO	_00822_DS_
; #	MOVLW	0x08
;	.line	213; /home/valentin/.icaro/np05/tmp/servos.c	if(pin<8){
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00822_DS_
	MOVLW	0x08
	SUBWF	r0x00, W
	BC	_00820_DS_
;	.line	214; /home/valentin/.icaro/np05/tmp/servos.c	activatedservos[MaskPort_B] = activatedservos[MaskPort_B] | servomasks[pin];  // list pin as servo driver.
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	r0x01, W
	BANKSEL	_activatedservos
	IORWF	_activatedservos, W, B
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	MOVWF	_activatedservos, B
;	.line	215; /home/valentin/.icaro/np05/tmp/servos.c	TRISB = TRISB & (255 - servomasks[pin]); // set as output pin
	MOVF	r0x01, W
	SUBLW	0xff
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	ANDWF	_TRISB, F
	BRA	_00822_DS_
_00820_DS_:
;	.line	216; /home/valentin/.icaro/np05/tmp/servos.c	} else if (pin>12) {
	MOVLW	0x0d
	SUBWF	r0x00, W
	BNC	_00817_DS_
;	.line	217; /home/valentin/.icaro/np05/tmp/servos.c	activatedservos[MaskPort_A] = activatedservos[MaskPort_A] | servomasks[pin];  // list pin as servo driver.
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x02, F
	CLRF	r0x03
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x03, F
	MOVFF	r0x01, TBLPTRL
	MOVFF	r0x02, TBLPTRH
	MOVFF	r0x03, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x01
	MOVF	r0x01, W
	BANKSEL	(_activatedservos + 2)
	IORWF	(_activatedservos + 2), W, B
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
	MOVWF	(_activatedservos + 2), B
;	.line	218; /home/valentin/.icaro/np05/tmp/servos.c	TRISA = TRISA & (255 - servomasks[pin]); // set as output pin
	MOVF	r0x01, W
	SUBLW	0xff
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	ANDWF	_TRISA, F
	BRA	_00822_DS_
_00817_DS_:
;	.line	220; /home/valentin/.icaro/np05/tmp/servos.c	activatedservos[MaskPort_C] = activatedservos[MaskPort_C] | servomasks[pin];  // list pin as servo driver.
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_servomasks)
	ADDWF	r0x00, F
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x01, F
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x02, F
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x00
	MOVF	r0x00, W
	BANKSEL	(_activatedservos + 1)
	IORWF	(_activatedservos + 1), W, B
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	(_activatedservos + 1), B
;	.line	221; /home/valentin/.icaro/np05/tmp/servos.c	TRISC = TRISC & (255 - servomasks[pin]); // set as output pin
	MOVF	r0x00, W
	SUBLW	0xff
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	ANDWF	_TRISC, F
_00822_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__SortServoTimings	code
_SortServoTimings:
;	.line	125; /home/valentin/.icaro/np05/tmp/servos.c	static void SortServoTimings()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	BANKSEL	_SortServoTimings_mascaratotal_1_1
;	.line	132; /home/valentin/.icaro/np05/tmp/servos.c	uchar mascaratotal[3]={0x00,0x00,0x00};
	CLRF	_SortServoTimings_mascaratotal_1_1, B
; removed redundant BANKSEL
	CLRF	(_SortServoTimings_mascaratotal_1_1 + 1), B
; removed redundant BANKSEL
	CLRF	(_SortServoTimings_mascaratotal_1_1 + 2), B
;	.line	135; /home/valentin/.icaro/np05/tmp/servos.c	for(t=0;t<18;t++){
	CLRF	r0x00
_00762_DS_:
	MOVLW	0x12
	SUBWF	r0x00, W
	BC	_00765_DS_
;	.line	136; /home/valentin/.icaro/np05/tmp/servos.c	timings[timevalue][t]=255;
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	SETF	INDF0
;	.line	138; /home/valentin/.icaro/np05/tmp/servos.c	timings[MaskPort_C][t]=0x00;
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	CLRF	INDF0
;	.line	139; /home/valentin/.icaro/np05/tmp/servos.c	timings[MaskPort_A][t]=0x00;
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	CLRF	INDF0
;	.line	135; /home/valentin/.icaro/np05/tmp/servos.c	for(t=0;t<18;t++){
	INCF	r0x00, F
	BRA	_00762_DS_
_00765_DS_:
;	.line	142; /home/valentin/.icaro/np05/tmp/servos.c	totalservos=0;
	CLRF	r0x00
;	.line	144; /home/valentin/.icaro/np05/tmp/servos.c	while(totalservos<18) {
	CLRF	r0x01
_00759_DS_:
	MOVLW	0x12
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00761_DS_
;	.line	145; /home/valentin/.icaro/np05/tmp/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
;	.line	146; /home/valentin/.icaro/np05/tmp/servos.c	for(s=0;s<18;s++) { 
	CLRF	r0x03
_00766_DS_:
	MOVLW	0x12
	SUBWF	r0x03, W
	BTFSC	STATUS, 0
	BRA	_00769_DS_
;	.line	148; /home/valentin/.icaro/np05/tmp/servos.c	if (s<8){
	MOVLW	0x08
	SUBWF	r0x03, W
	BTFSC	STATUS, 0
	BRA	_00757_DS_
;	.line	149; /home/valentin/.icaro/np05/tmp/servos.c	if (servomasks[s] & mascaratotal[MaskPort_B] & activatedservos[MaskPort_B]){
	MOVLW	LOW(_servomasks)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	_SortServoTimings_mascaratotal_1_1
	MOVF	_SortServoTimings_mascaratotal_1_1, W, B
	ANDWF	r0x04, F
	BANKSEL	_activatedservos
	MOVF	_activatedservos, W, B
	ANDWF	r0x04, F
	MOVF	r0x04, W
	BTFSS	STATUS, 2
	BRA	_00768_DS_
;	.line	151; /home/valentin/.icaro/np05/tmp/servos.c	else if (servovalues[s] < timings[timevalue][t]){
	MOVLW	LOW(_servovalues)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x05, F
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	INDF0, r0x04
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x07
	MOVF	r0x07, W
	SUBWF	r0x04, W
	BC	_00732_DS_
;	.line	152; /home/valentin/.icaro/np05/tmp/servos.c	timings[timevalue][t]=servovalues[s];
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x04, INDF0
;	.line	154; /home/valentin/.icaro/np05/tmp/servos.c	timings[MaskPort_C][t]=0x00;
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x07
	CLRF	r0x08
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x08, F
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, FSR0H
	CLRF	INDF0
;	.line	155; /home/valentin/.icaro/np05/tmp/servos.c	timings[MaskPort_A][t]=0x00;
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x07
	CLRF	r0x08
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x08, F
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, FSR0H
	CLRF	INDF0
;	.line	156; /home/valentin/.icaro/np05/tmp/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
	BRA	_00768_DS_
_00732_DS_:
;	.line	158; /home/valentin/.icaro/np05/tmp/servos.c	else if (servovalues[s] == timings[timevalue][t]){
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x05
	MOVF	r0x04, W
	XORWF	r0x05, W
	BZ	_00799_DS_
	BRA	_00768_DS_
_00799_DS_:
;	.line	160; /home/valentin/.icaro/np05/tmp/servos.c	numservos++;
	INCF	r0x02, F
	BRA	_00768_DS_
_00757_DS_:
;	.line	164; /home/valentin/.icaro/np05/tmp/servos.c	else if (s>12){
	MOVLW	0x0d
	SUBWF	r0x03, W
	BTFSS	STATUS, 0
	BRA	_00754_DS_
;	.line	165; /home/valentin/.icaro/np05/tmp/servos.c	if (servomasks[s] & mascaratotal[MaskPort_A] & activatedservos[MaskPort_A]){
	MOVLW	LOW(_servomasks)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	(_SortServoTimings_mascaratotal_1_1 + 2)
	MOVF	(_SortServoTimings_mascaratotal_1_1 + 2), W, B
	ANDWF	r0x04, W
	MOVWF	r0x05
	BANKSEL	(_activatedservos + 2)
	MOVF	(_activatedservos + 2), W, B
	ANDWF	r0x05, F
	MOVF	r0x05, W
	BTFSS	STATUS, 2
	BRA	_00768_DS_
;	.line	167; /home/valentin/.icaro/np05/tmp/servos.c	else if (servovalues[s] < timings[timevalue][t]){
	MOVLW	LOW(_servovalues)
	ADDWF	r0x03, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x05
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x01, W
	MOVWF	r0x06
	CLRF	r0x07
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x07, F
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x08
	MOVF	r0x08, W
	SUBWF	r0x05, W
	BC	_00740_DS_
;	.line	168; /home/valentin/.icaro/np05/tmp/servos.c	timings[timevalue][t]=servovalues[s];
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	r0x05, INDF0
;	.line	170; /home/valentin/.icaro/np05/tmp/servos.c	timings[MaskPort_C][t]=0x00;
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
;	.line	171; /home/valentin/.icaro/np05/tmp/servos.c	timings[MaskPort_A][t]=servomasks[s];
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	r0x04, INDF0
;	.line	172; /home/valentin/.icaro/np05/tmp/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
	BRA	_00768_DS_
_00740_DS_:
;	.line	174; /home/valentin/.icaro/np05/tmp/servos.c	else if (servovalues[s] == timings[timevalue][t]){
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x06
	MOVF	r0x05, W
	XORWF	r0x06, W
	BZ	_00804_DS_
	BRA	_00768_DS_
_00804_DS_:
;	.line	175; /home/valentin/.icaro/np05/tmp/servos.c	timings[MaskPort_A][t] |= servomasks[s];
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x07
	MOVF	r0x07, W
	IORWF	r0x04, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x04, INDF0
;	.line	176; /home/valentin/.icaro/np05/tmp/servos.c	numservos++;
	INCF	r0x02, F
	BRA	_00768_DS_
_00754_DS_:
;	.line	181; /home/valentin/.icaro/np05/tmp/servos.c	if (servomasks[s] & mascaratotal[MaskPort_C] & activatedservos[MaskPort_C]){ 
	MOVLW	LOW(_servomasks)
	ADDWF	r0x03, W
	MOVWF	r0x04
	CLRF	r0x05
	MOVLW	HIGH(_servomasks)
	ADDWFC	r0x05, F
	CLRF	r0x06
	MOVLW	UPPER(_servomasks)
	ADDWFC	r0x06, F
	MOVFF	r0x04, TBLPTRL
	MOVFF	r0x05, TBLPTRH
	MOVFF	r0x06, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x04
	BANKSEL	(_SortServoTimings_mascaratotal_1_1 + 1)
	MOVF	(_SortServoTimings_mascaratotal_1_1 + 1), W, B
	ANDWF	r0x04, W
	MOVWF	r0x05
	BANKSEL	(_activatedservos + 1)
	MOVF	(_activatedservos + 1), W, B
	ANDWF	r0x05, F
	MOVF	r0x05, W
	BTFSS	STATUS, 2
	BRA	_00768_DS_
;	.line	183; /home/valentin/.icaro/np05/tmp/servos.c	else if (servovalues[s] < timings[timevalue][t]){
	MOVLW	LOW(_servovalues)
	ADDWF	r0x03, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x05
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x01, W
	MOVWF	r0x06
	CLRF	r0x07
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x07, F
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x08
	MOVF	r0x08, W
	SUBWF	r0x05, W
	BC	_00748_DS_
;	.line	184; /home/valentin/.icaro/np05/tmp/servos.c	timings[timevalue][t]=servovalues[s];
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	r0x05, INDF0
;	.line	186; /home/valentin/.icaro/np05/tmp/servos.c	timings[MaskPort_C][t]=servomasks[s];
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	r0x04, INDF0
;	.line	187; /home/valentin/.icaro/np05/tmp/servos.c	timings[MaskPort_A][t]=0x00;
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
;	.line	188; /home/valentin/.icaro/np05/tmp/servos.c	numservos=1;
	MOVLW	0x01
	MOVWF	r0x02
	BRA	_00768_DS_
_00748_DS_:
;	.line	190; /home/valentin/.icaro/np05/tmp/servos.c	else if (servovalues[s] == timings [timevalue][t]){
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	INDF0, r0x06
	MOVF	r0x05, W
	XORWF	r0x06, W
	BNZ	_00768_DS_
;	.line	191; /home/valentin/.icaro/np05/tmp/servos.c	timings[MaskPort_C][t] |= servomasks[s];
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x07
	MOVF	r0x07, W
	IORWF	r0x04, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x04, INDF0
;	.line	192; /home/valentin/.icaro/np05/tmp/servos.c	numservos++;
	INCF	r0x02, F
_00768_DS_:
;	.line	146; /home/valentin/.icaro/np05/tmp/servos.c	for(s=0;s<18;s++) { 
	INCF	r0x03, F
	BRA	_00766_DS_
_00769_DS_:
;	.line	198; /home/valentin/.icaro/np05/tmp/servos.c	mascaratotal[MaskPort_C] |= timings[MaskPort_C][t];
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x04, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	INDF0, r0x03
	BANKSEL	(_SortServoTimings_mascaratotal_1_1 + 1)
	MOVF	(_SortServoTimings_mascaratotal_1_1 + 1), W, B
	IORWF	r0x03, F
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_SortServoTimings_mascaratotal_1_1 + 1), B
;	.line	199; /home/valentin/.icaro/np05/tmp/servos.c	mascaratotal[MaskPort_A] |= timings[MaskPort_A][t];
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x01, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x04, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	INDF0, r0x03
; removed redundant BANKSEL
	MOVF	(_SortServoTimings_mascaratotal_1_1 + 2), W, B
	IORWF	r0x03, F
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_SortServoTimings_mascaratotal_1_1 + 2), B
;	.line	200; /home/valentin/.icaro/np05/tmp/servos.c	totalservos += numservos;
	MOVF	r0x02, W
	ADDWF	r0x00, F
;	.line	201; /home/valentin/.icaro/np05/tmp/servos.c	t++;
	INCF	r0x01, F
	BRA	_00759_DS_
_00761_DS_:
	BANKSEL	_needreordering
;	.line	204; /home/valentin/.icaro/np05/tmp/servos.c	needreordering=0;  // This indicates that servo timings is ordered.	
	CLRF	_needreordering, B
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__ServosPulseUp	code
_ServosPulseUp:
;	.line	120; /home/valentin/.icaro/np05/tmp/servos.c	PORTC = activatedservos[MaskPort_C] & 0xFF;
	MOVFF	(_activatedservos + 1), _PORTC
;	.line	121; /home/valentin/.icaro/np05/tmp/servos.c	PORTA = activatedservos[MaskPort_A] & 0xFF;	
	MOVFF	(_activatedservos + 2), _PORTA
	RETURN	

; ; Starting pCode block
S_tortucaro__ServosPulseDown	code
_ServosPulseDown:
;	.line	92; /home/valentin/.icaro/np05/tmp/servos.c	static void ServosPulseDown()
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	BANKSEL	_timingindex
;	.line	94; /home/valentin/.icaro/np05/tmp/servos.c	timingindex = 0;
	CLRF	_timingindex, B
	BANKSEL	_timedivision
;	.line	96; /home/valentin/.icaro/np05/tmp/servos.c	for(timedivision=0;timedivision < 251;timedivision++){
	CLRF	_timedivision, B
_00708_DS_:
	MOVLW	0xfb
	BANKSEL	_timedivision
	SUBWF	_timedivision, W, B
	BTFSC	STATUS, 0
	BRA	_00712_DS_
;	.line	97; /home/valentin/.icaro/np05/tmp/servos.c	if (timings[timevalue][timingindex] == timedivision){
	MOVFF	_timingindex, r0x00
	CLRF	r0x01
	MOVLW	LOW(_timings + 54)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings + 54)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
; removed redundant BANKSEL
	XORWF	_timedivision, W, B
	BNZ	_00707_DS_
;	.line	99; /home/valentin/.icaro/np05/tmp/servos.c	PORTC = PORTC ^ timings[MaskPort_C][timingindex];
	MOVFF	_timingindex, r0x00
	CLRF	r0x01
	MOVLW	LOW(_timings + 18)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings + 18)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTC, F
;	.line	100; /home/valentin/.icaro/np05/tmp/servos.c	PORTA = PORTA ^ timings[MaskPort_A][timingindex];
	MOVFF	_timingindex, r0x00
	CLRF	r0x01
	MOVLW	LOW(_timings + 36)
	ADDWF	r0x00, F
	MOVLW	HIGH(_timings + 36)
	ADDWFC	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	MOVF	r0x00, W
	XORWF	_PORTA, F
	BANKSEL	_timingindex
;	.line	101; /home/valentin/.icaro/np05/tmp/servos.c	timingindex++;
	INCF	_timingindex, F, B
_00707_DS_:
	movlw 12
	movwf _loopvar
bucle:
	NOP
	decfsz _loopvar,1
	goto bucle
	
	BANKSEL	_timedivision
;	.line	96; /home/valentin/.icaro/np05/tmp/servos.c	for(timedivision=0;timedivision < 251;timedivision++){
	INCF	_timedivision, F, B
	BRA	_00708_DS_
_00712_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__servos_init	code
_servos_init:
;	.line	71; /home/valentin/.icaro/np05/tmp/servos.c	void servos_init()
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
;	.line	75; /home/valentin/.icaro/np05/tmp/servos.c	for(a=0;a<18;a++) servovalues[a]=255;
	CLRF	r0x00
_00692_DS_:
	MOVLW	0x12
	SUBWF	r0x00, W
	BC	_00695_DS_
	MOVLW	LOW(_servovalues)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_servovalues)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	SETF	INDF0
	INCF	r0x00, F
	BRA	_00692_DS_
_00695_DS_:
;	.line	78; /home/valentin/.icaro/np05/tmp/servos.c	TMR1H=0xFF;
	SETF	_TMR1H
;	.line	79; /home/valentin/.icaro/np05/tmp/servos.c	TMR1L=0x00;
	CLRF	_TMR1L
;	.line	81; /home/valentin/.icaro/np05/tmp/servos.c	T1CON=0x01;
	MOVLW	0x01
	MOVWF	_T1CON
;	.line	83; /home/valentin/.icaro/np05/tmp/servos.c	PIE1bits.TMR1IE=1;
	BSF	_PIE1bits, 0
;	.line	85; /home/valentin/.icaro/np05/tmp/servos.c	INTCONbits.PEIE=1;
	BSF	_INTCONbits, 6
;	.line	87; /home/valentin/.icaro/np05/tmp/servos.c	INTCONbits.GIE=1;
	BSF	_INTCONbits, 7
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__analogread	code
_analogread:
;	.line	24; /home/valentin/.icaro/np05/tmp/analog.c	unsigned int analogread(unsigned char channel)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	28; /home/valentin/.icaro/np05/tmp/analog.c	ADCON1=0x0A;
	MOVLW	0x0a
	MOVWF	_ADCON1
;	.line	29; /home/valentin/.icaro/np05/tmp/analog.c	ADCON0=(channel-13)*4;
	MOVLW	0xf3
	ADDWF	r0x00, F
; ;multiply lit val:0x04 by variable r0x00 and store in _ADCON0
; ;Unrolled 8 X 8 multiplication
; ;FIXME: the function does not support result==WREG
	MOVF	r0x00, W
	MULLW	0x04
	MOVFF	PRODL, _ADCON0
;	.line	30; /home/valentin/.icaro/np05/tmp/analog.c	ADCON2=0xBD;
	MOVLW	0xbd
	MOVWF	_ADCON2
;	.line	31; /home/valentin/.icaro/np05/tmp/analog.c	ADCON0bits.ADON=1;
	BSF	_ADCON0bits, 0
;	.line	32; /home/valentin/.icaro/np05/tmp/analog.c	for (result=1;result<10;result++) __asm NOP __endasm;
	MOVLW	0x09
	MOVWF	r0x00
	CLRF	r0x01
_00686_DS_:
	NOP 
	MOVLW	0xff
	ADDWF	r0x00, F
	BTFSS	STATUS, 0
	DECF	r0x01, F
	MOVF	r0x00, W
	IORWF	r0x01, W
	BNZ	_00686_DS_
;	.line	33; /home/valentin/.icaro/np05/tmp/analog.c	ADCON0bits.GO=1;
	BSF	_ADCON0bits, 1
_00681_DS_:
;	.line	34; /home/valentin/.icaro/np05/tmp/analog.c	while (ADCON0bits.GO);
	BTFSC	_ADCON0bits, 1
	BRA	_00681_DS_
;	.line	35; /home/valentin/.icaro/np05/tmp/analog.c	result=ADRESH<<8;
	MOVFF	_ADRESH, r0x00
	CLRF	r0x01
	MOVF	r0x00, W
	MOVWF	r0x03
	CLRF	r0x02
	MOVF	r0x02, W
	MOVWF	r0x00
	MOVF	r0x03, W
	MOVWF	r0x01
;	.line	36; /home/valentin/.icaro/np05/tmp/analog.c	result+=ADRESL;
	MOVFF	_ADRESL, r0x02
	CLRF	r0x03
	MOVF	r0x02, W
	ADDWF	r0x00, F
	MOVF	r0x03, W
	ADDWFC	r0x01, F
;	.line	37; /home/valentin/.icaro/np05/tmp/analog.c	ADCON0bits.ADON=0;
	BCF	_ADCON0bits, 0
;	.line	38; /home/valentin/.icaro/np05/tmp/analog.c	return(result);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__analog_init	code
_analog_init:
;	.line	13; /home/valentin/.icaro/np05/tmp/analog.c	TRISA=TRISA | 0x2F;
	MOVLW	0x2f
	IORWF	_TRISA, F
;	.line	14; /home/valentin/.icaro/np05/tmp/analog.c	TRISE=TRISE | 0x07;
	MOVLW	0x07
	IORWF	_TRISE, F
;	.line	15; /home/valentin/.icaro/np05/tmp/analog.c	ADCON1=0x07;
	MOVWF	_ADCON1
;	.line	16; /home/valentin/.icaro/np05/tmp/analog.c	ADCON2=0xBD;
	MOVLW	0xbd
	MOVWF	_ADCON2
	RETURN	

; ; Starting pCode block
S_tortucaro__init_CDC	code
_init_CDC:
;	.line	17; /home/valentin/.icaro/np05/tmp/__cdc.c	INTCON=0;
	CLRF	_INTCON
;	.line	18; /home/valentin/.icaro/np05/tmp/__cdc.c	INTCON2=0xC0;
	MOVLW	0xc0
	MOVWF	_INTCON2
;	.line	19; /home/valentin/.icaro/np05/tmp/__cdc.c	UCON=0;
	CLRF	_UCON
;	.line	20; /home/valentin/.icaro/np05/tmp/__cdc.c	UCFG=0;
	CLRF	_UCFG
;	.line	21; /home/valentin/.icaro/np05/tmp/__cdc.c	UEP0=0;UEP1=0;UEP2=0;UEP3=0;UEP4=0;UEP5=0;
	CLRF	_UEP0
	CLRF	_UEP1
	CLRF	_UEP2
	CLRF	_UEP3
	CLRF	_UEP4
	CLRF	_UEP5
;	.line	22; /home/valentin/.icaro/np05/tmp/__cdc.c	UEP6=0;UEP7=0;UEP8=0;UEP9=0;UEP10=0;UEP11=0;
	CLRF	_UEP6
	CLRF	_UEP7
	CLRF	_UEP8
	CLRF	_UEP9
	CLRF	_UEP10
	CLRF	_UEP11
;	.line	23; /home/valentin/.icaro/np05/tmp/__cdc.c	UEP12=0;UEP13=0;UEP14=0;UEP15=0;
	CLRF	_UEP12
	CLRF	_UEP13
	CLRF	_UEP14
	CLRF	_UEP15
;	.line	25; /home/valentin/.icaro/np05/tmp/__cdc.c	Delayms(2000);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x07
	MOVWF	POSTDEC1
	MOVLW	0xd0
	MOVWF	POSTDEC1
	CALL	_Delayms
	MOVLW	0x04
	ADDWF	FSR1L, F
;	.line	27; /home/valentin/.icaro/np05/tmp/__cdc.c	UCFG = 0x14; 				// Enable pullup resistors; full speed mode
	MOVLW	0x14
	MOVWF	_UCFG
	BANKSEL	_deviceState
;	.line	28; /home/valentin/.icaro/np05/tmp/__cdc.c	deviceState = DETACHED;
	CLRF	_deviceState, B
	BANKSEL	_remoteWakeup
;	.line	29; /home/valentin/.icaro/np05/tmp/__cdc.c	remoteWakeup = 0x00;
	CLRF	_remoteWakeup, B
	BANKSEL	_currentConfiguration
;	.line	30; /home/valentin/.icaro/np05/tmp/__cdc.c	currentConfiguration = 0x00;
	CLRF	_currentConfiguration, B
_00663_DS_:
	BANKSEL	_deviceState
;	.line	32; /home/valentin/.icaro/np05/tmp/__cdc.c	while(deviceState != CONFIGURED)
	MOVF	_deviceState, W, B
	XORLW	0x05
	BZ	_00666_DS_
;	.line	34; /home/valentin/.icaro/np05/tmp/__cdc.c	EnableUSBModule();
	CALL	_EnableUSBModule
;	.line	35; /home/valentin/.icaro/np05/tmp/__cdc.c	ProcessUSBTransactions();
	CALL	_ProcessUSBTransactions
	BRA	_00663_DS_
_00666_DS_:
	RETURN	

; ; Starting pCode block
S_tortucaro__Delayus	code
_Delayus:
;	.line	16; /home/valentin/.icaro/np05/tmp/arduinodelay.c	void Delayus(int microsecondes)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	20; /home/valentin/.icaro/np05/tmp/arduinodelay.c	for (i=0;i<microsecondes;i++);
	CLRF	r0x02
	CLRF	r0x03
_00649_DS_:
	MOVF	r0x00, W
	MOVWF	r0x04
; #	MOVF	r0x01, W
; #	MOVWF	r0x05
; #	MOVF	r0x05, W
	MOVF	r0x01, W
	SUBWF	r0x03, W
	BNZ	_00658_DS_
	MOVF	r0x04, W
	SUBWF	r0x02, W
_00658_DS_:
	BC	_00653_DS_
	INCF	r0x02, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
	BRA	_00649_DS_
_00653_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__Delayms	code
_Delayms:
;	.line	9; /home/valentin/.icaro/np05/tmp/arduinodelay.c	void Delayms(unsigned long milliseconde)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	13; /home/valentin/.icaro/np05/tmp/arduinodelay.c	for (i=0;i<milliseconde;i++) delay10ktcy(1);
	CLRF	r0x04
	CLRF	r0x05
	CLRF	r0x06
	CLRF	r0x07
_00635_DS_:
	MOVF	r0x03, W
	SUBWF	r0x07, W
	BNZ	_00644_DS_
	MOVF	r0x02, W
	SUBWF	r0x06, W
	BNZ	_00644_DS_
	MOVF	r0x01, W
	SUBWF	r0x05, W
	BNZ	_00644_DS_
	MOVF	r0x00, W
	SUBWF	r0x04, W
_00644_DS_:
	BC	_00639_DS_
	MOVLW	0x01
	CALL	_delay10ktcy
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
	BTFSC	STATUS, 0
	INCF	r0x06, F
	BTFSC	STATUS, 0
	INCF	r0x07, F
	BRA	_00635_DS_
_00639_DS_:
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__CDCInitEndpoint	code
_CDCInitEndpoint:
	BANKSEL	_line_config
;	.line	167; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	line_config.dwDTERate = USB_CDC_BAUD_RATE;
	CLRF	_line_config, B
	MOVLW	0xc2
; removed redundant BANKSEL
	MOVWF	(_line_config + 1), B
	MOVLW	0x01
; removed redundant BANKSEL
	MOVWF	(_line_config + 2), B
; removed redundant BANKSEL
	CLRF	(_line_config + 3), B
; removed redundant BANKSEL
;	.line	168; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	line_config.bCharFormat = USB_CDC_STOP_BITS;
	CLRF	(_line_config + 4), B
; removed redundant BANKSEL
;	.line	169; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	line_config.bParityType = USB_CDC_PARITY;
	CLRF	(_line_config + 5), B
;	.line	170; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	line_config.bDataBits = USB_CDC_DATA_BITS;
	MOVLW	0x08
; removed redundant BANKSEL
	MOVWF	(_line_config + 6), B
	BANKSEL	_zlp
;	.line	171; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	zlp.wValue0=0;
	CLRF	_zlp, B
; removed redundant BANKSEL
;	.line	172; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	zlp.wValue1=0;
	CLRF	(_zlp + 1), B
; removed redundant BANKSEL
;	.line	173; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	zlp.wValue2=0;
	CLRF	(_zlp + 2), B
; removed redundant BANKSEL
;	.line	174; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	zlp.wValue3=0;
	CLRF	(_zlp + 3), B
; removed redundant BANKSEL
;	.line	175; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	zlp.wValue4=0;
	CLRF	(_zlp + 4), B
; removed redundant BANKSEL
;	.line	176; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	zlp.wValue5=0;
	CLRF	(_zlp + 5), B
; removed redundant BANKSEL
;	.line	177; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	zlp.wValue6=0;
	CLRF	(_zlp + 6), B
; removed redundant BANKSEL
;	.line	178; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	zlp.wValue7=0;
	CLRF	(_zlp + 7), B
;	.line	183; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	USB_COMM_EP_UEP = EP_IN | HSHK_EN;
	MOVLW	0x1a
	MOVWF	_UEP2
;	.line	186; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	CDC_DATA_EP_UEP = EP_OUT_IN | HSHK_EN;
	MOVLW	0x1e
	MOVWF	_UEP3
;	.line	190; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_IN_BD(USB_COMM_EP_NUM).ADDR = PTR16(&CDCControlBuffer);
	MOVLW	LOW(_CDCControlBuffer)
	BANKSEL	(_ep_bdt + 22)
	MOVWF	(_ep_bdt + 22), B
	MOVLW	HIGH(_CDCControlBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 23), B
; #	MOVLW	0x40
; #	MOVWF	(_ep_bdt + 20), B
; #	MOVLW	0x40
;	.line	191; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_IN_BD(USB_COMM_EP_NUM).Stat.uc = BDS_DAT1 | BDS_COWN;
	MOVLW	0x40
; removed redundant BANKSEL
;	.line	194; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Cnt = sizeof(CDCRxBuffer);
	MOVWF	(_ep_bdt + 20), B
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 25), B
;	.line	195; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).ADDR = PTR16(&CDCRxBuffer);
	MOVLW	LOW(_CDCRxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 26), B
	MOVLW	HIGH(_CDCRxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 27), B
;	.line	196; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.uc = BDS_UOWN | BDS_DAT0 | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 24), B
;	.line	198; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).ADDR = PTR16(&CDCTxBuffer); // +1 
	MOVLW	LOW(_CDCTxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 30), B
	MOVLW	HIGH(_CDCTxBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 31), B
;	.line	199; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc = BDS_DAT1 | BDS_COWN; 
	MOVLW	0x40
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 28), B
;	.line	200; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	deviceState=CONFIGURED; 
	MOVLW	0x05
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
	RETURN	

; ; Starting pCode block
S_tortucaro__CDCputs	code
_CDCputs:
;	.line	131; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	byte CDCputs(char *buffer, byte length) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
;	.line	132; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	byte i=0;
	CLRF	r0x04
	BANKSEL	_deviceState
;	.line	134; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	if (deviceState != CONFIGURED) return 0;
	MOVF	_deviceState, W, B
	XORLW	0x05
	BZ	_00602_DS_
	CLRF	WREG
	BRA	_00613_DS_
_00602_DS_:
	BANKSEL	_CONTROL_LINE
;	.line	135; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	if (!CONTROL_LINE) return 0;
	MOVF	_CONTROL_LINE, W, B
	BNZ	_00604_DS_
	CLRF	WREG
	BRA	_00613_DS_
_00604_DS_:
	BANKSEL	(_ep_bdt + 28)
;	.line	136; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	if (!EP_IN_BD(CDC_DATA_EP_NUM).Stat.UOWN) {
	BTFSC	(_ep_bdt + 28), 7, B
	BRA	_00608_DS_
;	.line	137; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	if (length > CDC_BULK_IN_SIZE) length = CDC_BULK_IN_SIZE;
	MOVLW	0x41
	SUBWF	r0x03, W
	BNC	_00620_DS_
	MOVLW	0x40
	MOVWF	r0x03
_00620_DS_:
;	.line	138; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	for (i=0; i < length; i++) {
	CLRF	r0x05
_00609_DS_:
	MOVF	r0x03, W
	SUBWF	r0x05, W
	BC	_00621_DS_
;	.line	139; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	CDCTxBuffer[i] = buffer[i];
	MOVLW	LOW(_CDCTxBuffer)
	ADDWF	r0x05, W
	MOVWF	r0x06
	CLRF	r0x07
	MOVLW	HIGH(_CDCTxBuffer)
	ADDWFC	r0x07, F
	MOVF	r0x05, W
	ADDWF	r0x00, W
	MOVWF	r0x08
	CLRF	WREG
	ADDWFC	r0x01, W
	MOVWF	r0x09
	CLRF	WREG
	ADDWFC	r0x02, W
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	CALL	__gptrget1
	MOVWF	r0x08
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	r0x08, INDF0
;	.line	138; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	for (i=0; i < length; i++) {
	INCF	r0x05, F
	BRA	_00609_DS_
_00621_DS_:
	MOVFF	r0x05, r0x04
;	.line	148; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Cnt = i;
	MOVF	r0x05, W
	BANKSEL	(_ep_bdt + 29)
	MOVWF	(_ep_bdt + 29), B
;	.line	150; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc &= 0x40;
	MOVLW	0x40
; removed redundant BANKSEL
	ANDWF	(_ep_bdt + 28), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 28), B
;	.line	151; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.DTS = !EP_IN_BD(CDC_DATA_EP_NUM).Stat.DTS;
	CLRF	r0x00
; removed redundant BANKSEL
	BTFSC	(_ep_bdt + 28), 6, B
	INCF	r0x00, F
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	r0x00, W
	ANDLW	0x01
	RRNCF	WREG, W
	RRNCF	WREG, W
	MOVWF	PRODH
; removed redundant BANKSEL
	MOVF	(_ep_bdt + 28), W, B
	ANDLW	0xbf
	IORWF	PRODH, W
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 28), B
;	.line	153; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_IN_BD(CDC_DATA_EP_NUM).Stat.uc |= BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	IORWF	(_ep_bdt + 28), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 28), B
_00608_DS_:
;	.line	156; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	return i;
	MOVF	r0x04, W
_00613_DS_:
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__CDCgets	code
_CDCgets:
;	.line	98; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	byte CDCgets(char *buffer) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
;	.line	99; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	byte i=0;
	CLRF	r0x03
	BANKSEL	_deviceState
;	.line	101; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	if (deviceState != CONFIGURED) return 0;
	MOVF	_deviceState, W, B
	XORLW	0x05
	BZ	_00573_DS_
	CLRF	WREG
	BRA	_00584_DS_
_00573_DS_:
	BANKSEL	_CONTROL_LINE
;	.line	103; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	if (!CONTROL_LINE) return 0;
	MOVF	_CONTROL_LINE, W, B
	BNZ	_00575_DS_
	CLRF	WREG
	BRA	_00584_DS_
_00575_DS_:
	BANKSEL	(_ep_bdt + 24)
;	.line	105; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	if (!EP_OUT_BD(CDC_DATA_EP_NUM).Stat.UOWN) {
	BTFSC	(_ep_bdt + 24), 7, B
	BRA	_00579_DS_
;	.line	110; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	if (length > EP_OUT_BD(CDC_DATA_EP_NUM).Cnt) length = EP_OUT_BD(CDC_DATA_EP_NUM).Cnt;
	MOVLW	0x40
; #	SUBWF	(_ep_bdt + 25), W, B
; #	BTFSC	STATUS, 0
; #	GOTO	_00591_DS_
; #;;;!!! pic16_aopOp:1071 called for a spillLocation -- assigning WREG instead --- CHECK
; #	MOVFF	(_ep_bdt + 25), WREG
; #	CLRF	r0x04
; removed redundant BANKSEL
;	.line	111; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	for (i=0; i < EP_OUT_BD(CDC_DATA_EP_NUM).Cnt; i++) {
	SUBWF	(_ep_bdt + 25), W, B
	BTFSS	STATUS, 0
	MOVFF	(_ep_bdt + 25), WREG
	CLRF	r0x04
_00580_DS_:
	BANKSEL	(_ep_bdt + 25)
	MOVF	(_ep_bdt + 25), W, B
	SUBWF	r0x04, W
	BC	_00592_DS_
;	.line	112; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	buffer[i] = CDCRxBuffer[i];
	MOVF	r0x04, W
	ADDWF	r0x00, W
	MOVWF	r0x05
	CLRF	WREG
	ADDWFC	r0x01, W
	MOVWF	r0x06
	CLRF	WREG
	ADDWFC	r0x02, W
	MOVWF	r0x07
	MOVLW	LOW(_CDCRxBuffer)
	ADDWF	r0x04, W
	MOVWF	r0x08
	CLRF	r0x09
	MOVLW	HIGH(_CDCRxBuffer)
	ADDWFC	r0x09, F
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	INDF0, r0x08
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, PRODL
	MOVF	r0x07, W
	CALL	__gptrput1
;	.line	111; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	for (i=0; i < EP_OUT_BD(CDC_DATA_EP_NUM).Cnt; i++) {
	INCF	r0x04, F
	BRA	_00580_DS_
_00592_DS_:
	MOVFF	r0x04, r0x03
;	.line	121; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.uc &= 0x40;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 24)
	ANDWF	(_ep_bdt + 24), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 24), B
;	.line	122; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.DTS = !EP_OUT_BD(CDC_DATA_EP_NUM).Stat.DTS;
	CLRF	r0x00
; removed redundant BANKSEL
	BTFSC	(_ep_bdt + 24), 6, B
	INCF	r0x00, F
	MOVF	r0x00, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
	MOVF	r0x00, W
	ANDLW	0x01
	RRNCF	WREG, W
	RRNCF	WREG, W
	MOVWF	PRODH
; removed redundant BANKSEL
	MOVF	(_ep_bdt + 24), W, B
	ANDLW	0xbf
	IORWF	PRODH, W
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 24), B
;	.line	124; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Cnt = sizeof(CDCRxBuffer);
	MOVLW	0x40
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 25), B
;	.line	125; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	EP_OUT_BD(CDC_DATA_EP_NUM).Stat.uc |= BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	IORWF	(_ep_bdt + 24), W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	MOVWF	(_ep_bdt + 24), B
_00579_DS_:
;	.line	128; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	return i;
	MOVF	r0x03, W
_00584_DS_:
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ProcessCDCRequest	code
_ProcessCDCRequest:
;	.line	29; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	void ProcessCDCRequest(void)
	MOVFF	r0x00, POSTDEC1
;	.line	38; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	if ((SetupPacket.bmRequestType & USB_TYPE_MASK) != USB_TYPE_CLASS) return;
	MOVLW	0x60
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	XORLW	0x20
	BZ	_00534_DS_
	BRA	_00544_DS_
_00534_DS_:
;	.line	42; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	switch(SetupPacket.bRequest)
	MOVFF	(_SetupPacket + 1), r0x00
	MOVF	r0x00, W
	BNZ	_00557_DS_
	BRA	_00544_DS_
_00557_DS_:
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00559_DS_
	BRA	_00544_DS_
_00559_DS_:
	MOVF	r0x00, W
	XORLW	0x20
	BZ	_00537_DS_
	MOVF	r0x00, W
	XORLW	0x21
	BZ	_00538_DS_
	MOVF	r0x00, W
	XORLW	0x22
	BZ	_00539_DS_
	BRA	_00544_DS_
_00537_DS_:
;	.line	62; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	outPtr = (data byte *)&line_config;
	MOVLW	HIGH(_line_config)
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_line_config)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	63; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	wCount = sizeof(USB_CDC_Line_Coding) ;
	MOVLW	0x07
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	64; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	requestHandled = 1;				
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	65; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	break;
	BRA	_00544_DS_
_00538_DS_:
;	.line	71; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	outPtr = (data byte *)&line_config;
	MOVLW	HIGH(_line_config)
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_line_config)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	72; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	wCount = sizeof(USB_CDC_Line_Coding) ;
	MOVLW	0x07
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	73; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	74; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	break;
	BRA	_00544_DS_
_00539_DS_:
	BANKSEL	(_SetupPacket + 2)
;	.line	82; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	if (SetupPacket.wValue0==3) CONTROL_LINE=1;
	MOVF	(_SetupPacket + 2), W, B
	XORLW	0x03
	BNZ	_00541_DS_
	MOVLW	0x01
	BANKSEL	_CONTROL_LINE
	MOVWF	_CONTROL_LINE, B
	BRA	_00542_DS_
_00541_DS_:
	BANKSEL	_CONTROL_LINE
;	.line	83; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	else CONTROL_LINE=0;		
	CLRF	_CONTROL_LINE, B
_00542_DS_:
;	.line	84; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	outPtr = (data byte *)&zlp;
	MOVLW	HIGH(_zlp)
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_zlp)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	85; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	wCount = sizeof(Zero_Packet_Length) ;
	MOVLW	0x08
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	86; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	requestHandled = 1;						
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
_00544_DS_:
;	.line	88; /home/valentin/.icaro/np05/tmp/usb/usb_cdc.c	}
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__ProcessUSBTransactions	code
_ProcessUSBTransactions:
;	.line	740; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	void ProcessUSBTransactions(void) {
	MOVFF	r0x00, POSTDEC1
; #	MOVF	_deviceState, W, B
; #	BTFSS	STATUS, 2
; #	GOTO	_00481_DS_
; #	GOTO	_00507_DS_
; #	BTFSS	_UIRbits, 2
	BANKSEL	_deviceState
;	.line	742; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(deviceState == DETACHED)
	MOVF	_deviceState, W, B
;	.line	743; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	return;
	BZ	_00507_DS_
;	.line	746; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(UIRbits.ACTVIF && UIEbits.ACTVIE)
	BTFSS	_UIRbits, 2
; #	GOTO	_00483_DS_
; #	BTFSS	_UIEbits, 2
; #	GOTO	_00483_DS_
; #	CALL	_UnSuspend
; #	CLRF	r0x00
;	.line	747; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UnSuspend();
	BRA	_00483_DS_
;	.line	751; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(UCONbits.SUSPND == 1)
	BTFSC	_UIEbits, 2
	CALL	_UnSuspend
_00483_DS_:
	CLRF	r0x00
	BTFSC	_UCONbits, 1
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
;	.line	752; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	return;
	BZ	_00507_DS_
;	.line	755; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (UIRbits.URSTIF && UIEbits.URSTIE) {
	BTFSS	_UIRbits, 0
; #	GOTO	_00488_DS_
; #	BTFSS	_UIEbits, 0
; #	GOTO	_00488_DS_
; #	CALL	_BusReset
; #	BTFSS	_UIRbits, 4
;	.line	756; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	BusReset();
	BRA	_00488_DS_
;	.line	759; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (UIRbits.IDLEIF && UIEbits.IDLEIE) {
	BTFSC	_UIEbits, 0
	CALL	_BusReset
_00488_DS_:
	BTFSS	_UIRbits, 4
; #	GOTO	_00491_DS_
; #	BTFSS	_UIEbits, 4
; #	GOTO	_00491_DS_
; #	CALL	_Suspend
; #	BTFSS	_UIRbits, 6
;	.line	761; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	Suspend();
	BRA	_00491_DS_
;	.line	763; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (UIRbits.SOFIF && UIEbits.SOFIE) {
	BTFSC	_UIEbits, 4
	CALL	_Suspend
_00491_DS_:
	BTFSS	_UIRbits, 6
; #	GOTO	_00494_DS_
; #	BTFSS	_UIEbits, 6
; #	GOTO	_00494_DS_
; #	CALL	_StartOfFrame
; #	BTFSS	_UIRbits, 5
;	.line	764; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	StartOfFrame();
	BRA	_00494_DS_
;	.line	766; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (UIRbits.STALLIF && UIEbits.STALLIE) {
	BTFSC	_UIEbits, 6
	CALL	_StartOfFrame
_00494_DS_:
	BTFSS	_UIRbits, 5
; #	GOTO	_00497_DS_
; #	BTFSS	_UIEbits, 5
; #	GOTO	_00497_DS_
; #	CALL	_Stall
; #	BTFSS	_UIRbits, 1
;	.line	767; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	Stall();
	BRA	_00497_DS_
;	.line	770; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (UIRbits.UERRIF && UIEbits.UERRIE) {
	BTFSC	_UIEbits, 5
	CALL	_Stall
_00497_DS_:
	BTFSS	_UIRbits, 1
; #	GOTO	_00500_DS_
; #	BTFSS	_UIEbits, 1
; #	GOTO	_00500_DS_
; #	BCF	_UIRbits, 1
; #	MOVLW	0x03
;	.line	774; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIRbits.UERRIF = 0;
	BRA	_00500_DS_
;	.line	778; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (deviceState < DEFAULT)
	BTFSC	_UIEbits, 1
	BCF	_UIRbits, 1
_00500_DS_:
	MOVLW	0x03
; #	SUBWF	_deviceState, W, B
; #	BTFSC	STATUS, 0
; #	GOTO	_00503_DS_
; #	GOTO	_00507_DS_
; #	BTFSS	_UIRbits, 3
	BANKSEL	_deviceState
;	.line	779; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	return;
	SUBWF	_deviceState, W, B
;	.line	782; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(UIRbits.TRNIF && UIEbits.TRNIE) {
	BNC	_00507_DS_
	BTFSS	_UIRbits, 3
	BRA	_00507_DS_
	BTFSS	_UIEbits, 3
	BRA	_00507_DS_
;	.line	783; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	ProcessControlTransfer();
	CALL	_ProcessControlTransfer
;	.line	786; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIRbits.TRNIF = 0;
	BCF	_UIRbits, 3
_00507_DS_:
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__BusReset	code
_BusReset:
;	.line	712; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	void BusReset() {
	MOVFF	r0x00, POSTDEC1
;	.line	713; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UEIR  = 0x00;
	CLRF	_UEIR
;	.line	714; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIR   = 0x00;
	CLRF	_UIR
;	.line	715; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UEIE  = 0x9f;
	MOVLW	0x9f
	MOVWF	_UEIE
;	.line	716; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIE   = 0x7b;
	MOVLW	0x7b
	MOVWF	_UIE
;	.line	717; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UADDR = 0x00;
	CLRF	_UADDR
;	.line	720; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UEP0 = EP_CTRL | HSHK_EN;
	MOVLW	0x16
	MOVWF	_UEP0
_00467_DS_:
;	.line	723; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	while (UIRbits.TRNIF == 1)
	CLRF	r0x00
	BTFSC	_UIRbits, 3
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00469_DS_
;	.line	724; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIRbits.TRNIF = 0;
	BCF	_UIRbits, 3
	BRA	_00467_DS_
_00469_DS_:
;	.line	727; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UCONbits.PKTDIS = 0;
	BCF	_UCONbits, 4
;	.line	730; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
	BANKSEL	_remoteWakeup
;	.line	732; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	remoteWakeup = 0;                     // Remote wakeup is off by default
	CLRF	_remoteWakeup, B
	BANKSEL	_selfPowered
;	.line	733; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	selfPowered = 0;                      // Self powered is off by default
	CLRF	_selfPowered, B
	BANKSEL	_currentConfiguration
;	.line	734; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	currentConfiguration = 0;             // Clear active configuration
	CLRF	_currentConfiguration, B
;	.line	735; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	deviceState = DEFAULT;
	MOVLW	0x03
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__Suspend	code
_Suspend:
;	.line	682; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	void Suspend(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
;	.line	687; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIEbits.ACTVIE = 1;
	BSF	_UIEbits, 2
;	.line	688; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIRbits.IDLEIF = 0;
	BCF	_UIRbits, 4
;	.line	689; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UCONbits.SUSPND = 1;
	BSF	_UCONbits, 1
;	.line	691; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	PIR2bits.USBIF = 0;
	BCF	_PIR2bits, 5
;	.line	692; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	INTCONbits.RBIF = 0;
	BCF	_INTCONbits, 0
;	.line	693; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	PIE2bits.USBIE = 1;
	BSF	_PIE2bits, 5
;	.line	694; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	INTCONbits.RBIE = 1;
	BSF	_INTCONbits, 3
;	.line	697; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	RCSTAbits.CREN = 0;
	BCF	_RCSTAbits, 4
;	.line	698; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	TXSTAbits.TXEN = 0;
	BCF	_TXSTAbits, 5
	sleep 
;	.line	703; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	RCSTAbits.CREN = 1;
	BSF	_RCSTAbits, 4
;	.line	704; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	TXSTAbits.TXEN = 1;
	BSF	_TXSTAbits, 5
;	.line	706; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	PIE2bits.USBIE = 0;
	BCF	_PIE2bits, 5
;	.line	707; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	INTCONbits.RBIE = 0;
	BCF	_INTCONbits, 3
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__Stall	code
_Stall:
;	.line	668; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	void Stall(void) {
	MOVFF	r0x00, POSTDEC1
;	.line	672; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(UEP0bits.EPSTALL == 1) {
	CLRF	r0x00
	BTFSC	_UEP0bits, 0
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00449_DS_
;	.line	674; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
;	.line	675; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UEP0bits.EPSTALL = 0;
	BCF	_UEP0bits, 0
_00449_DS_:
;	.line	677; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIRbits.STALLIF = 0;
	BCF	_UIRbits, 5
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__StartOfFrame	code
_StartOfFrame:
;	.line	663; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIRbits.SOFIF = 0;
	BCF	_UIRbits, 6
	RETURN	

; ; Starting pCode block
S_tortucaro__UnSuspend	code
_UnSuspend:
;	.line	653; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UCONbits.SUSPND = 0;
	BCF	_UCONbits, 1
;	.line	654; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIEbits.ACTVIE = 0;
	BCF	_UIEbits, 2
;	.line	655; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIRbits.ACTVIF = 0;
	BCF	_UIRbits, 2
	RETURN	

; ; Starting pCode block
S_tortucaro__EnableUSBModule	code
_EnableUSBModule:
;	.line	623; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(UCONbits.USBEN == 0) {
	BTFSC	_UCONbits, 3
	BRA	_00423_DS_
;	.line	627; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UCON = 0;
	CLRF	_UCON
;	.line	628; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIE = 0;
	CLRF	_UIE
;	.line	629; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UCONbits.USBEN = 1;
	BSF	_UCONbits, 3
;	.line	630; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	deviceState = ATTACHED;
	MOVLW	0x01
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
_00423_DS_:
	BANKSEL	_deviceState
;	.line	634; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if ((deviceState == ATTACHED) && !UCONbits.SE0) {
	MOVF	_deviceState, W, B
	XORLW	0x01
	BNZ	_00427_DS_
	BTFSC	_UCONbits, 5
	BRA	_00427_DS_
;	.line	635; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIR = 0;
	CLRF	_UIR
;	.line	636; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIE = 0;
	CLRF	_UIE
;	.line	637; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIEbits.URSTIE = 1;
	BSF	_UIEbits, 0
;	.line	638; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UIEbits.IDLEIE = 1;
	BSF	_UIEbits, 4
;	.line	639; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	deviceState = POWERED;
	MOVLW	0x02
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
_00427_DS_:
	RETURN	

; ; Starting pCode block
S_tortucaro__ProcessControlTransfer	code
_ProcessControlTransfer:
;	.line	533; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	void ProcessControlTransfer(void) {
	MOVFF	r0x00, POSTDEC1
;	.line	537; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (USTATbits.DIR == OUT) {
	BTFSC	_USTATbits, 2
	BRA	_00393_DS_
;	.line	540; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte PID = (EP_OUT_BD(0).Stat.uc & 0x3C) >> 2;
	MOVLW	0x3c
	BANKSEL	_ep_bdt
	ANDWF	_ep_bdt, W, B
	MOVWF	r0x00
	RRNCF	r0x00, W
	RRNCF	WREG, W
	ANDLW	0x3f
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
;	.line	541; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (PID == 0x0D)
	XORLW	0x0d
	BNZ	_00377_DS_
;	.line	543; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	SetupStage();
	CALL	_SetupStage
	BRA	_00395_DS_
_00377_DS_:
	BANKSEL	_ctrlTransferStage
;	.line	544; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (ctrlTransferStage == DATA_OUT_STAGE) {
	MOVF	_ctrlTransferStage, W, B
	XORLW	0x01
	BNZ	_00374_DS_
;	.line	547; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	OutDataStage(0);
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	_OutDataStage
	INCF	FSR1L, F
	BANKSEL	_ep_bdt
;	.line	571; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(EP_OUT_BD(0).Stat.DTS)
	BTFSS	_ep_bdt, 6, B
	BRA	_00371_DS_
;	.line	572; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
	BRA	_00395_DS_
_00371_DS_:
;	.line	574; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
	BANKSEL	_ep_bdt
	MOVWF	_ep_bdt, B
	BRA	_00395_DS_
_00374_DS_:
;	.line	578; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
	BRA	_00395_DS_
_00393_DS_:
;	.line	581; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if(USTATbits.DIR == IN) {
	CLRF	r0x00
	BTFSC	_USTATbits, 2
	INCF	r0x00, F
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00395_DS_
;	.line	583; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if ((UADDR == 0) && (deviceState == ADDRESS)) {
	MOVF	_UADDR, W
	BNZ	_00382_DS_
	BANKSEL	_deviceState
	MOVF	_deviceState, W, B
	XORLW	0x04
	BNZ	_00382_DS_
;	.line	586; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UADDR = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), _UADDR
;	.line	590; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(UADDR == 0)
	MOVF	_UADDR, W
	BNZ	_00382_DS_
;	.line	593; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	deviceState = DEFAULT;
	MOVLW	0x03
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
_00382_DS_:
	BANKSEL	_ctrlTransferStage
;	.line	596; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (ctrlTransferStage == DATA_IN_STAGE) {
	MOVF	_ctrlTransferStage, W, B
	XORLW	0x02
	BNZ	_00388_DS_
;	.line	598; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	InDataStage(0);
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	_InDataStage
	INCF	FSR1L, F
	BANKSEL	(_ep_bdt + 4)
;	.line	601; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(EP_IN_BD(0).Stat.DTS)
	BTFSS	(_ep_bdt + 4), 6, B
	BRA	_00385_DS_
;	.line	602; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
	BRA	_00395_DS_
_00385_DS_:
;	.line	604; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
	BANKSEL	(_ep_bdt + 4)
	MOVWF	(_ep_bdt + 4), B
	BRA	_00395_DS_
_00388_DS_:
;	.line	608; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	WaitForSetupStage();
	CALL	_WaitForSetupStage
_00395_DS_:
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__WaitForSetupStage	code
_WaitForSetupStage:
	BANKSEL	_ctrlTransferStage
;	.line	520; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	ctrlTransferStage = SETUP_STAGE;
	CLRF	_ctrlTransferStage, B
;	.line	521; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 1)
	MOVWF	(_ep_bdt + 1), B
;	.line	522; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&SetupPacket);
	MOVLW	LOW(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
;	.line	524; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTSEN;
	MOVLW	0x88
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
; removed redundant BANKSEL
;	.line	525; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = 0x00;           // Give control to CPU
	CLRF	(_ep_bdt + 4), B
	RETURN	

; ; Starting pCode block
S_tortucaro__SetupStage	code
_SetupStage:
;	.line	447; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	void SetupStage(void) {
	MOVFF	r0x00, POSTDEC1
	BANKSEL	(_ep_bdt + 4)
;	.line	450; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc &= ~BDS_UOWN;
	MOVF	(_ep_bdt + 4), W, B
	MOVWF	r0x00
	BCF	r0x00, 7
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
; removed redundant BANKSEL
;	.line	451; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc &= ~BDS_UOWN;
	MOVF	_ep_bdt, W, B
	MOVWF	r0x00
	BCF	r0x00, 7
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
	BANKSEL	_ctrlTransferStage
;	.line	454; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	ctrlTransferStage = SETUP_STAGE;
	CLRF	_ctrlTransferStage, B
	BANKSEL	_requestHandled
;	.line	455; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 0;                   // Default is that request hasn't been handled
	CLRF	_requestHandled, B
	BANKSEL	_HIDPostProcess
;	.line	456; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	HIDPostProcess = 0;                   // Assume standard request until know otherwise
	CLRF	_HIDPostProcess, B
	BANKSEL	_wCount
;	.line	457; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	wCount = 0;                           // No bytes transferred
	CLRF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
;	.line	460; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	ProcessStandardRequest();
	CALL	_ProcessStandardRequest
;	.line	470; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if ((SetupPacket.bmRequestType & USB_RECIP_MASK) == USB_RECIP_INTERFACE)  
	MOVLW	0x1f
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
; #	MOVWF	r0x00
; #	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00338_DS_
;	.line	471; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	ProcessCDCRequest();
	CALL	_ProcessCDCRequest
_00338_DS_:
	BANKSEL	_requestHandled
;	.line	474; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (!requestHandled) {
	MOVF	_requestHandled, W, B
	BNZ	_00345_DS_
;	.line	476; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 1)
	MOVWF	(_ep_bdt + 1), B
;	.line	477; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&SetupPacket);
	MOVLW	LOW(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
; #	MOVLW	0x84
; #	MOVWF	_ep_bdt, B
; #	MOVLW	0x84
;	.line	478; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_BSTALL;
	MOVLW	0x84
; removed redundant BANKSEL
;	.line	479; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_BSTALL;
	MOVWF	_ep_bdt, B
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
	BRA	_00346_DS_
_00345_DS_:
	BANKSEL	_SetupPacket
;	.line	481; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (SetupPacket.bmRequestType & 0x80) {
	BTFSS	_SetupPacket, 7, B
	BRA	_00342_DS_
	BANKSEL	(_wCount + 1)
;	.line	483; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(SetupPacket.wLength < wCount)
	MOVF	(_wCount + 1), W, B
	BANKSEL	(_SetupPacket + 7)
	SUBWF	(_SetupPacket + 7), W, B
	BNZ	_00360_DS_
	BANKSEL	_wCount
	MOVF	_wCount, W, B
	BANKSEL	(_SetupPacket + 6)
	SUBWF	(_SetupPacket + 6), W, B
_00360_DS_:
	BC	_00340_DS_
;	.line	484; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	wCount = SetupPacket.wLength;
	MOVFF	(_SetupPacket + 6), _wCount
	MOVFF	(_SetupPacket + 7), (_wCount + 1)
_00340_DS_:
;	.line	485; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	InDataStage(0);
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	_InDataStage
	INCF	FSR1L, F
;	.line	486; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	ctrlTransferStage = DATA_IN_STAGE;
	MOVLW	0x02
	BANKSEL	_ctrlTransferStage
	MOVWF	_ctrlTransferStage, B
;	.line	488; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
	BANKSEL	(_ep_bdt + 1)
	MOVWF	(_ep_bdt + 1), B
;	.line	489; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&SetupPacket);
	MOVLW	LOW(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_SetupPacket)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
;	.line	490; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN;
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
;	.line	493; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(0).ADDR = PTR16(&controlTransferBuffer);
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 6), B
	MOVLW	HIGH(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 7), B
;	.line	495; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
	BRA	_00346_DS_
_00342_DS_:
;	.line	499; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	ctrlTransferStage = DATA_OUT_STAGE;
	MOVLW	0x01
	BANKSEL	_ctrlTransferStage
	MOVWF	_ctrlTransferStage, B
	BANKSEL	(_ep_bdt + 5)
;	.line	502; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(0).Cnt = 0;
	CLRF	(_ep_bdt + 5), B
;	.line	503; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 4), B
;	.line	506; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Cnt = EP0_BUFFER_SIZE;
	MOVLW	0x40
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 1), B
;	.line	507; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).ADDR = PTR16(&controlTransferBuffer);
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 2), B
	MOVLW	HIGH(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	(_ep_bdt + 3), B
;	.line	509; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_OUT_BD(0).Stat.uc = BDS_UOWN | BDS_DTS | BDS_DTSEN;
	MOVLW	0xc8
; removed redundant BANKSEL
	MOVWF	_ep_bdt, B
_00346_DS_:
;	.line	513; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	UCONbits.PKTDIS = 0;
	BCF	_UCONbits, 4
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__OutDataStage	code
_OutDataStage:
;	.line	411; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	void OutDataStage(unsigned char ep) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	414; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	bufferSize = ((0x03 & EP_OUT_BD(ep).Stat.uc) << 8) | EP_OUT_BD(ep).Cnt;
	RLNCF	r0x00, W
	ANDLW	0xfe
; #	MOVWF	r0x01
; #;;multiply lit val:0x04 by variable r0x01 and store in r0x00
; #;;Unrolled 8 X 8 multiplication
; #;;FIXME: the function does not support result==WREG
; #	MOVF	r0x01, W
	MULLW	0x04
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x01
	MOVLW	0x03
	ANDWF	r0x01, F
	MOVF	r0x01, W
	MOVWF	r0x04
	CLRF	r0x03
	CLRF	r0x01
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, F
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x01, F
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x00
	CLRF	r0x01
	MOVF	r0x00, W
	IORWF	r0x03, F
	MOVF	r0x01, W
	IORWF	r0x04, F
	MOVF	r0x03, W
	MOVWF	r0x00
	MOVF	r0x04, W
	MOVWF	r0x01
;	.line	421; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	wCount = wCount + bufferSize;
	MOVF	r0x00, W
	BANKSEL	_wCount
	ADDWF	_wCount, F, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	ADDWFC	(_wCount + 1), F, B
;	.line	423; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	outPtr = (byte*)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	427; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	CLRF	r0x02
	CLRF	r0x03
_00321_DS_:
	MOVF	r0x01, W
	SUBWF	r0x03, W
	BNZ	_00332_DS_
	MOVF	r0x00, W
	SUBWF	r0x02, W
_00332_DS_:
	BC	_00325_DS_
;	.line	431; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	*inPtr++ = *outPtr++;
	MOVFF	_inPtr, r0x04
	MOVFF	(_inPtr + 1), r0x05
	MOVFF	(_inPtr + 2), r0x06
	MOVFF	_outPtr, r0x07
	MOVFF	(_outPtr + 1), r0x08
	MOVFF	(_outPtr + 2), r0x09
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, PRODL
	MOVF	r0x09, W
	CALL	__gptrget1
	MOVWF	r0x07
	BANKSEL	_outPtr
	INCF	_outPtr, F, B
	BNC	_11306_DS_
; removed redundant BANKSEL
	INCF	(_outPtr + 1), F, B
_11306_DS_:
	BNC	_21307_DS_
	BANKSEL	(_outPtr + 2)
	INCF	(_outPtr + 2), F, B
_21307_DS_:
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrput1
	BANKSEL	_inPtr
	INCF	_inPtr, F, B
	BNC	_31308_DS_
; removed redundant BANKSEL
	INCF	(_inPtr + 1), F, B
_31308_DS_:
	BNC	_41309_DS_
	BANKSEL	(_inPtr + 2)
	INCF	(_inPtr + 2), F, B
_41309_DS_:
;	.line	427; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	INCF	r0x02, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
	BRA	_00321_DS_
_00325_DS_:
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__InDataStage	code
_InDataStage:
;	.line	364; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	void InDataStage(unsigned char ep) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	371; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(wCount < EP0_BUFFER_SIZE)
	MOVLW	0x00
	BANKSEL	(_wCount + 1)
	SUBWF	(_wCount + 1), W, B
	BNZ	_00310_DS_
	MOVLW	0x40
; removed redundant BANKSEL
	SUBWF	_wCount, W, B
_00310_DS_:
	BC	_00298_DS_
;	.line	372; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	bufferSize = wCount;
	MOVFF	_wCount, r0x01
	MOVFF	(_wCount + 1), r0x02
	BRA	_00299_DS_
_00298_DS_:
;	.line	374; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	bufferSize = EP0_BUFFER_SIZE;
	MOVLW	0x40
	MOVWF	r0x01
	CLRF	r0x02
_00299_DS_:
;	.line	382; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(ep).Stat.uc &= ~(BDS_BC8 | BDS_BC9);
	RLNCF	r0x00, W
	ANDLW	0xfe
	MOVWF	r0x03
	INCF	r0x03, W
; #	MOVWF	r0x00
; #;;multiply lit val:0x04 by variable r0x00 and store in r0x00
; #;;Unrolled 8 X 8 multiplication
; #;;FIXME: the function does not support result==WREG
; #	MOVF	r0x00, W
	MULLW	0x04
	MOVFF	PRODL, r0x00
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x04, F
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x05
	MOVLW	0xfc
	ANDWF	r0x05, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	r0x05, INDF0
;	.line	383; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(ep).Stat.uc |= (byte)((bufferSize & 0x0300) >> 8);
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x04, F
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x05
	CLRF	r0x06
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x06, F
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	INDF0, r0x05
	MOVLW	0x03
	ANDWF	r0x02, W
; #	MOVWF	r0x07
; #	MOVF	r0x07, W
	IORWF	r0x05, F
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	r0x05, INDF0
;	.line	384; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(ep).Cnt = (byte)(bufferSize & 0xFF);
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, W
	MOVWF	r0x03
	CLRF	r0x04
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x04, F
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	MOVF	r0x01, W
	MOVWF	r0x05
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	r0x05, INDF0
;	.line	385; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	EP_IN_BD(ep).ADDR = PTR16(&controlTransferBuffer);
	CLRF	r0x03
	MOVLW	LOW(_ep_bdt)
	ADDWF	r0x00, F
	MOVLW	HIGH(_ep_bdt)
	ADDWFC	r0x03, F
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
	MOVLW	LOW(_controlTransferBuffer)
	MOVWF	r0x04
	MOVLW	HIGH(_controlTransferBuffer)
	MOVWF	r0x05
	MOVFF	r0x00, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	r0x04, POSTINC0
	MOVFF	r0x05, INDF0
;	.line	390; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	wCount = wCount - bufferSize;
	MOVF	r0x01, W
	BANKSEL	_wCount
	SUBWF	_wCount, F, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	SUBWFB	(_wCount + 1), F, B
;	.line	393; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	inPtr = (byte *)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_inPtr + 1)
	MOVWF	(_inPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_inPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_inPtr + 2), B
;	.line	398; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	CLRF	r0x00
_00300_DS_:
	MOVFF	r0x00, r0x03
	CLRF	r0x04
	MOVF	r0x02, W
	SUBWF	r0x04, W
	BNZ	_00316_DS_
	MOVF	r0x01, W
	SUBWF	r0x03, W
_00316_DS_:
	BC	_00304_DS_
;	.line	402; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	*inPtr++ = *outPtr++;
	MOVFF	_inPtr, r0x03
	MOVFF	(_inPtr + 1), r0x04
	MOVFF	(_inPtr + 2), r0x05
	MOVFF	_outPtr, r0x06
	MOVFF	(_outPtr + 1), r0x07
	MOVFF	(_outPtr + 2), r0x08
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
	MOVWF	r0x06
	BANKSEL	_outPtr
	INCF	_outPtr, F, B
	BNC	_51310_DS_
; removed redundant BANKSEL
	INCF	(_outPtr + 1), F, B
_51310_DS_:
	BNC	_61311_DS_
	BANKSEL	(_outPtr + 2)
	INCF	(_outPtr + 2), F, B
_61311_DS_:
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrput1
	BANKSEL	_inPtr
	INCF	_inPtr, F, B
	BNC	_71312_DS_
; removed redundant BANKSEL
	INCF	(_inPtr + 1), F, B
_71312_DS_:
	BNC	_81313_DS_
	BANKSEL	(_inPtr + 2)
	INCF	(_inPtr + 2), F, B
_81313_DS_:
;	.line	398; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	for (i=0;i<bufferSize;i++) {
	INCF	r0x00, F
	BRA	_00300_DS_
_00304_DS_:
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_tortucaro__ProcessStandardRequest	code
_ProcessStandardRequest:
;	.line	253; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	void ProcessStandardRequest(void) {
	MOVFF	r0x00, POSTDEC1
;	.line	254; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte request = SetupPacket.bRequest;
	MOVFF	(_SetupPacket + 1), r0x00
	BANKSEL	_SetupPacket
;	.line	256; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if((SetupPacket.bmRequestType & 0x60) != 0x00)
	MOVF	_SetupPacket, W, B
; #	ANDLW	0x60
; #	BTFSC	STATUS, 2
; #	GOTO	_00231_DS_
; #	GOTO	_00263_DS_
; #	MOVF	r0x00, W
;	.line	259; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	return;
	ANDLW	0x60
;	.line	261; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (request == SET_ADDRESS) {
	BTFSS	STATUS, 2
	BRA	_00263_DS_
	MOVF	r0x00, W
	XORLW	0x05
	BNZ	_00261_DS_
;	.line	269; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	270; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	deviceState = ADDRESS;
	MOVLW	0x04
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
;	.line	271; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	deviceAddress = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), _deviceAddress
	BRA	_00263_DS_
_00261_DS_:
;	.line	273; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (request == GET_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x06
	BNZ	_00258_DS_
;	.line	274; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	GetDescriptor();
	CALL	_GetDescriptor
	BRA	_00263_DS_
_00258_DS_:
;	.line	276; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (request == SET_CONFIGURATION) {
	MOVF	r0x00, W
	XORLW	0x09
	BNZ	_00255_DS_
;	.line	280; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	281; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	currentConfiguration = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), _currentConfiguration
	BANKSEL	_currentConfiguration
;	.line	284; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (currentConfiguration == 0)
	MOVF	_currentConfiguration, W, B
	BNZ	_00233_DS_
;	.line	287; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	deviceState = ADDRESS;
	MOVLW	0x04
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
	BRA	_00263_DS_
_00233_DS_:
;	.line	290; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	deviceState = CONFIGURED;
	MOVLW	0x05
	BANKSEL	_deviceState
	MOVWF	_deviceState, B
;	.line	300; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	CDCInitEndpoint();
	CALL	_CDCInitEndpoint
	BRA	_00263_DS_
_00255_DS_:
;	.line	310; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (request == GET_CONFIGURATION) {
	MOVF	r0x00, W
	XORLW	0x08
	BNZ	_00252_DS_
;	.line	314; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	315; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	outPtr = (byte*)&currentConfiguration;
	MOVLW	HIGH(_currentConfiguration)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_currentConfiguration)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	316; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	wCount = 1;
	MOVLW	0x01
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
	BRA	_00263_DS_
_00252_DS_:
;	.line	318; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (request == GET_STATUS) {
	MOVF	r0x00, W
	BNZ	_00249_DS_
;	.line	319; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	GetStatus();
	CALL	_GetStatus
	BRA	_00263_DS_
_00249_DS_:
;	.line	321; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if ((request == CLEAR_FEATURE) ||
	MOVF	r0x00, W
	XORLW	0x01
	BZ	_00244_DS_
;	.line	322; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	(request == SET_FEATURE)) {
	MOVF	r0x00, W
	XORLW	0x03
	BNZ	_00245_DS_
_00244_DS_:
;	.line	323; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	SetFeature();
	CALL	_SetFeature
	BRA	_00263_DS_
_00245_DS_:
;	.line	325; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (request == GET_INTERFACE) {
	MOVF	r0x00, W
	XORLW	0x0a
	BNZ	_00242_DS_
;	.line	331; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BANKSEL	_controlTransferBuffer
;	.line	332; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	controlTransferBuffer[0] = 0;
	CLRF	_controlTransferBuffer, B
;	.line	333; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	outPtr = (byte *)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	334; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	wCount = 1;
	MOVLW	0x01
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
	BRA	_00263_DS_
_00242_DS_:
;	.line	336; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (request == SET_INTERFACE) {
	MOVF	r0x00, W
	XORLW	0x0b
	BNZ	_00263_DS_
;	.line	341; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
_00263_DS_:
;	.line	348; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (request == SYNCH_FRAME) {
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__SetFeature	code
_SetFeature:
;	.line	209; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	static void SetFeature(void) {
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
;	.line	210; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte recipient = SetupPacket.bmRequestType & 0x1F;
	MOVLW	0x1f
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
	MOVWF	r0x00
;	.line	211; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte feature = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), r0x01
;	.line	216; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (recipient == 0x00) {
	MOVF	r0x00, W
	BNZ	_00200_DS_
;	.line	218; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (feature == DEVICE_REMOTE_WAKEUP) {
	MOVF	r0x01, W
	XORLW	0x01
	BZ	_00215_DS_
	BRA	_00202_DS_
_00215_DS_:
;	.line	219; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BANKSEL	(_SetupPacket + 1)
;	.line	220; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (SetupPacket.bRequest == SET_FEATURE)
	MOVF	(_SetupPacket + 1), W, B
	XORLW	0x03
	BNZ	_00182_DS_
;	.line	221; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	remoteWakeup = 1;
	MOVLW	0x01
	BANKSEL	_remoteWakeup
	MOVWF	_remoteWakeup, B
	BRA	_00202_DS_
_00182_DS_:
	BANKSEL	_remoteWakeup
;	.line	223; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	remoteWakeup = 0;
	CLRF	_remoteWakeup, B
	BRA	_00202_DS_
_00200_DS_:
;	.line	227; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (recipient == 0x02) {
	MOVF	r0x00, W
	XORLW	0x02
	BZ	_00219_DS_
	BRA	_00202_DS_
_00219_DS_:
;	.line	229; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte endpointNum = SetupPacket.wIndex0 & 0x0F;
	MOVLW	0x0f
	BANKSEL	(_SetupPacket + 4)
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x00
;	.line	230; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte endpointDir = SetupPacket.wIndex0 & 0x80;
	MOVLW	0x80
; removed redundant BANKSEL
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x02
;	.line	231; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if ((feature == ENDPOINT_HALT) && (endpointNum != 0)) {
	MOVF	r0x01, W
	BTFSS	STATUS, 2
	BRA	_00202_DS_
	MOVF	r0x00, W
	BTFSC	STATUS, 2
	BRA	_00202_DS_
;	.line	233; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	236; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	inPtr = (byte *)&EP_OUT_BD(0) + (endpointNum * 8);
	MOVLW	HIGH(_ep_bdt)
	MOVWF	r0x03
	MOVLW	LOW(_ep_bdt)
	MOVWF	r0x01
	MOVLW	0x80
	MOVWF	r0x04
; ;multiply lit val:0x08 by variable r0x00 and store in r0x00
; ;Unrolled 8 X 8 multiplication
; ;FIXME: the function does not support result==WREG
	MOVF	r0x00, W
	MULLW	0x08
	MOVFF	PRODL, r0x00
	MOVF	r0x00, W
	ADDWF	r0x01, W
	BANKSEL	_inPtr
	MOVWF	_inPtr, B
	CLRF	WREG
	ADDWFC	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_inPtr + 1), B
	CLRF	WREG
	ADDWFC	r0x04, W
; removed redundant BANKSEL
	MOVWF	(_inPtr + 2), B
;	.line	237; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (endpointDir)
	MOVF	r0x02, W
	BZ	_00187_DS_
;	.line	238; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	inPtr += 4;
	MOVLW	0x04
; removed redundant BANKSEL
	ADDWF	_inPtr, F, B
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 1), F, B
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 2), F, B
_00187_DS_:
	BANKSEL	(_SetupPacket + 1)
;	.line	240; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(SetupPacket.bRequest == SET_FEATURE)
	MOVF	(_SetupPacket + 1), W, B
	XORLW	0x03
	BNZ	_00192_DS_
;	.line	241; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	*inPtr = 0x84;
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x03
	MOVLW	0x84
	MOVWF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x03, W
	CALL	__gptrput1
	BRA	_00202_DS_
_00192_DS_:
;	.line	243; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(endpointDir == 1)
	MOVF	r0x02, W
	XORLW	0x01
	BNZ	_00189_DS_
;	.line	244; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	*inPtr = 0x00;
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x02
	CLRF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
	BRA	_00202_DS_
_00189_DS_:
;	.line	246; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	*inPtr = 0x88;
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x02
	MOVLW	0x88
	MOVWF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
_00202_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__GetStatus	code
_GetStatus:
;	.line	164; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	static void GetStatus(void) {
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
;	.line	166; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte recipient = SetupPacket.bmRequestType & 0x1F;
	MOVLW	0x1f
	BANKSEL	_SetupPacket
	ANDWF	_SetupPacket, W, B
	MOVWF	r0x00
	BANKSEL	_controlTransferBuffer
;	.line	170; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	controlTransferBuffer[0] = 0;
	CLRF	_controlTransferBuffer, B
; removed redundant BANKSEL
;	.line	171; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	controlTransferBuffer[1] = 0;
	CLRF	(_controlTransferBuffer + 1), B
;	.line	174; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (recipient == 0x00) {
	MOVF	r0x00, W
	BNZ	_00153_DS_
;	.line	176; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BANKSEL	_selfPowered
;	.line	178; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (selfPowered)
	MOVF	_selfPowered, W, B
	BZ	_00140_DS_
;	.line	179; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	controlTransferBuffer[0] |= 0x01;
	MOVLW	0x01
	BANKSEL	_controlTransferBuffer
	IORWF	_controlTransferBuffer, W, B
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	_controlTransferBuffer, B
_00140_DS_:
	BANKSEL	_remoteWakeup
;	.line	180; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (remoteWakeup)
	MOVF	_remoteWakeup, W, B
	BTFSC	STATUS, 2
	BRA	_00154_DS_
;	.line	181; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	controlTransferBuffer[0] |= 0x02;
	MOVLW	0x02
	BANKSEL	_controlTransferBuffer
	IORWF	_controlTransferBuffer, W, B
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
	MOVWF	_controlTransferBuffer, B
	BRA	_00154_DS_
_00153_DS_:
;	.line	183; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (recipient == 0x01) {
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00150_DS_
;	.line	185; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
	BRA	_00154_DS_
_00150_DS_:
;	.line	187; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (recipient == 0x02) {
	MOVF	r0x00, W
	XORLW	0x02
	BZ	_00173_DS_
	BRA	_00154_DS_
_00173_DS_:
;	.line	189; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte endpointNum = SetupPacket.wIndex0 & 0x0F;
	MOVLW	0x0f
	BANKSEL	(_SetupPacket + 4)
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x00
;	.line	190; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte endpointDir = SetupPacket.wIndex0 & 0x80;
	MOVLW	0x80
; removed redundant BANKSEL
	ANDWF	(_SetupPacket + 4), W, B
	MOVWF	r0x01
;	.line	191; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	194; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	inPtr = (byte *)&EP_OUT_BD(0) + (endpointNum * 8);
	MOVLW	HIGH(_ep_bdt)
	MOVWF	r0x03
	MOVLW	LOW(_ep_bdt)
	MOVWF	r0x02
	MOVLW	0x80
	MOVWF	r0x04
; ;multiply lit val:0x08 by variable r0x00 and store in r0x00
; ;Unrolled 8 X 8 multiplication
; ;FIXME: the function does not support result==WREG
	MOVF	r0x00, W
	MULLW	0x08
	MOVFF	PRODL, r0x00
	MOVF	r0x00, W
	ADDWF	r0x02, W
	BANKSEL	_inPtr
	MOVWF	_inPtr, B
	CLRF	WREG
	ADDWFC	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_inPtr + 1), B
	CLRF	WREG
	ADDWFC	r0x04, W
; removed redundant BANKSEL
	MOVWF	(_inPtr + 2), B
;	.line	195; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (endpointDir)
	MOVF	r0x01, W
	BZ	_00144_DS_
;	.line	196; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	inPtr += 4;
	MOVLW	0x04
; removed redundant BANKSEL
	ADDWF	_inPtr, F, B
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 1), F, B
; removed redundant BANKSEL
	ADDWFC	(_inPtr + 2), F, B
_00144_DS_:
;	.line	197; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(*inPtr & BDS_BSTALL)
	MOVFF	_inPtr, r0x00
	MOVFF	(_inPtr + 1), r0x01
	MOVFF	(_inPtr + 2), r0x02
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x00
	BTFSS	r0x00, 2
	BRA	_00154_DS_
;	.line	198; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	controlTransferBuffer[0] = 0x01;
	MOVLW	0x01
	BANKSEL	_controlTransferBuffer
	MOVWF	_controlTransferBuffer, B
_00154_DS_:
	BANKSEL	_requestHandled
;	.line	201; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (requestHandled) {
	MOVF	_requestHandled, W, B
	BZ	_00157_DS_
;	.line	202; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	outPtr = (byte *)&controlTransferBuffer;
	MOVLW	HIGH(_controlTransferBuffer)
	BANKSEL	(_outPtr + 1)
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_controlTransferBuffer)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(_outPtr + 2), B
;	.line	203; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	wCount = 2;
	MOVLW	0x02
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
_00157_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
S_tortucaro__GetDescriptor	code
_GetDescriptor:
;	.line	97; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	static void GetDescriptor(void) {
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	BANKSEL	_SetupPacket
;	.line	101; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if(SetupPacket.bmRequestType == 0x80) {
	MOVF	_SetupPacket, W, B
	XORLW	0x80
	BZ	_00126_DS_
	BRA	_00118_DS_
_00126_DS_:
;	.line	102; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte descriptorType  = SetupPacket.wValue1;
	MOVFF	(_SetupPacket + 3), r0x00
;	.line	103; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	byte descriptorIndex = SetupPacket.wValue0;
	MOVFF	(_SetupPacket + 2), r0x01
;	.line	105; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	if (descriptorType == DEVICE_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00114_DS_
;	.line	109; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	110; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	outPtr = (byte *)&libdevice_descriptor;
	MOVLW	UPPER(_libdevice_descriptor)
	BANKSEL	(_outPtr + 2)
	MOVWF	(_outPtr + 2), B
	MOVLW	HIGH(_libdevice_descriptor)
; removed redundant BANKSEL
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_libdevice_descriptor)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
;	.line	111; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	wCount = sizeof(USB_Device_Descriptor);
	MOVLW	0x12
	BANKSEL	_wCount
	MOVWF	_wCount, B
; removed redundant BANKSEL
	CLRF	(_wCount + 1), B
	BRA	_00118_DS_
_00114_DS_:
;	.line	113; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (descriptorType == CONFIGURATION_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x02
	BNZ	_00111_DS_
;	.line	117; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
;	.line	128; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	outPtr = (byte *)&libconfiguration_descriptor;
	MOVLW	UPPER(_libconfiguration_descriptor)
	BANKSEL	(_outPtr + 2)
	MOVWF	(_outPtr + 2), B
	MOVLW	HIGH(_libconfiguration_descriptor)
; removed redundant BANKSEL
	MOVWF	(_outPtr + 1), B
	MOVLW	LOW(_libconfiguration_descriptor)
; removed redundant BANKSEL
	MOVWF	_outPtr, B
;	.line	130; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	wCount = libconfiguration_descriptor.Header.wTotalLength;
	MOVLW	LOW(_libconfiguration_descriptor + 2)
	MOVWF	TBLPTRL
	MOVLW	HIGH(_libconfiguration_descriptor + 2)
	MOVWF	TBLPTRH
	MOVLW	UPPER(_libconfiguration_descriptor + 2)
	MOVWF	TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, _wCount
	TBLRD*+	
	MOVFF	TABLAT, (_wCount + 1)
	BRA	_00118_DS_
_00111_DS_:
;	.line	136; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (descriptorType == STRING_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x03
	BNZ	_00108_DS_
;	.line	140; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
; ;multiply lit val:0x03 by variable r0x01 and store in r0x01
; ;Unrolled 8 X 8 multiplication
; ;FIXME: the function does not support result==WREG
;	.line	141; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	outPtr = (byte *)&libstring_descriptor[descriptorIndex];
	MOVF	r0x01, W
	MULLW	0x03
	MOVFF	PRODL, r0x01
	CLRF	r0x02
	CLRF	r0x03
	MOVLW	LOW(_libstring_descriptor)
	ADDWF	r0x01, F
	MOVLW	HIGH(_libstring_descriptor)
	ADDWFC	r0x02, F
	MOVLW	UPPER(_libstring_descriptor)
	ADDWFC	r0x03, F
	MOVF	r0x03, W
	BANKSEL	(_outPtr + 2)
	MOVWF	(_outPtr + 2), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_outPtr + 1), B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	_outPtr, B
;	.line	142; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	wCount = *outPtr;
	MOVFF	_outPtr, r0x01
	MOVFF	(_outPtr + 1), r0x02
	MOVFF	(_outPtr + 2), r0x03
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, PRODL
	MOVF	r0x03, W
	CALL	__gptrget1
	MOVWF	r0x01
	MOVFF	r0x01, _wCount
	BANKSEL	(_wCount + 1)
	CLRF	(_wCount + 1), B
	BRA	_00118_DS_
_00108_DS_:
;	.line	144; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	else if (descriptorType == DEVICE_QUALIFIER_DESCRIPTOR) {
	MOVF	r0x00, W
	XORLW	0x06
	BNZ	_00118_DS_
;	.line	148; /home/valentin/.icaro/np05/tmp/usb/picUSB.c	requestHandled = 1;
	MOVLW	0x01
	BANKSEL	_requestHandled
	MOVWF	_requestHandled, B
_00118_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block for Ival
	code
_libdevice_descriptor:
	DB	0x12, 0x01, 0x00, 0x02, 0x02, 0x00, 0x00, 0x40, 0xd8, 0x04, 0xab, 0xfe
	DB	0x00, 0x00, 0x00, 0x01, 0x00, 0x01
; ; Starting pCode block for Ival
_libconfiguration_descriptor:
	DB	0x09, 0x02, 0x43, 0x00, 0x02, 0x01, 0x00, 0x03, 0x14, 0x09, 0x04, 0x00
	DB	0x00, 0x01, 0x02, 0x02, 0x01, 0x00, 0x05, 0x24, 0x00, 0x10, 0x01, 0x04
	DB	0x24, 0x02, 0x00, 0x05, 0x24, 0x06, 0x00, 0x01, 0x05, 0x24, 0x01, 0x00
	DB	0x01, 0x07, 0x05, 0x82, 0x03, 0x10, 0x00, 0x02, 0x09, 0x04, 0x01, 0x00
	DB	0x02, 0x0a, 0x00, 0x00, 0x00, 0x07, 0x05, 0x03, 0x02, 0x40, 0x00, 0x00
	DB	0x07, 0x05, 0x83, 0x02, 0x40, 0x00, 0x00
; ; Starting pCode block for Ival
_libstring_descriptor:
	DB	0x28, 0x03, 0x50, 0x0c, 0x03, 0x50, 0x0c, 0x03, 0x50, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
; ; Starting pCode block for Ival
_servomasks:
	DB	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x40, 0x80, 0x01, 0x02
	DB	0x04, 0x01, 0x02, 0x04, 0x08, 0x20
; ; Starting pCode block for Ival
_mask:
	DB	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x40, 0x80, 0x01, 0x02
	DB	0x04, 0x01, 0x02, 0x04, 0x08, 0x20, 0x01, 0x02, 0x04, 0x01, 0x02, 0x04
	DB	0x08, 0x10, 0x20, 0x40, 0x80
; ; Starting pCode block for Ival
_port:
	DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01
	DB	0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x04, 0x04, 0x04, 0x03, 0x03, 0x03
	DB	0x03, 0x03, 0x03, 0x03, 0x03
; ; Starting pCode block
__str_0:
	DB	0x30, 0x00
; ; Starting pCode block
__str_1:
	DB	0x31, 0x00
; ; Starting pCode block
__str_2:
	DB	0x6d, 0x75, 0x65, 0x76, 0x6f, 0x20, 0x65, 0x6c, 0x20, 0x73, 0x65, 0x72
	DB	0x76, 0x6f, 0x20, 0x00
; ; Starting pCode block
__str_3:
	DB	0x69, 0x63, 0x61, 0x72, 0x6f, 0x20, 0x55, 0x53, 0x42, 0x20, 0x30, 0x31
	DB	0x20, 0x0a, 0x00


; Statistics:
; code size:	 9576 (0x2568) bytes ( 7.31%)
;           	 4788 (0x12b4) words
; udata size:	  532 (0x0214) bytes (29.69%)
; access size:	   10 (0x000a) bytes


	end
