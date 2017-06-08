PROGRAM_NAME='1219_HollandParkVillas'
INCLUDE 'CustomFunctions'
DEFINE_PROGRAM{
	//SEND_STRING 0, 'TICK-TOCK'
}
/******************************************************************************
	Holland Park Villas standardised MDU code

	Configured via processor loaded config file (filename.txt)

	BMS Login: Engineer / Engineer01
	QS Login: lutron / lutron

	TPDesign Password: SC_HPV

******************************************************************************/
/******************************************************************************
	Device Declarations - Ethernet Ports
******************************************************************************/
DEFINE_DEVICE
dvMaster 		= 0:01:0
ipBMS				= 0:10:0
ipLutron			= 0:20:0
/******************************************************************************
	Device Declarations - Physical Ports
******************************************************************************/
DEFINE_DEVICE
dvIOs				= 5001:22:0
DEFINE_CONSTANT
DEVCHAN chnDoorBell		= {dvIOs,1}
/******************************************************************************
	Device Declarations - Virtual Devices
******************************************************************************/
DEFINE_DEVICE
vdvSIP			= 33002:1:0

vdvQSGateway	= 33100:1:0
vdvQSKeypad01	= 33101:1:0
vdvQSKeypad02	= 33102:1:0
vdvQSKeypad03	= 33103:1:0
vdvQSKeypad04	= 33104:1:0
vdvQSKeypad05	= 33105:1:0
vdvQSKeypad06	= 33106:1:0
vdvQSKeypad07	= 33107:1:0
vdvQSKeypad08	= 33108:1:0
vdvQSKeypad09	= 33109:1:0
vdvQSKeypad10	= 33110:1:0
vdvQSKeypad11	= 33111:1:0
vdvQSKeypad12	= 33112:1:0
vdvQSKeypad13	= 33113:1:0
vdvQSKeypad14	= 33114:1:0
vdvQSKeypad15	= 33115:1:0

vdvBMS 			= 33200:1:0
vdvBMSZone01	= 33201:1:0
vdvBMSZone02	= 33202:1:0
vdvBMSZone03	= 33203:1:0
vdvBMSZone04	= 33204:1:0
vdvBMSZone05	= 33205:1:0
vdvBMSZone06	= 33206:1:0
vdvBMSZone07	= 33207:1:0
vdvBMSZone08	= 33208:1:0
vdvBMSZone09	= 33209:1:0
vdvBMSZone10	= 33210:1:0
vdvBMSZone11	= 33211:1:0
vdvBMSZone12	= 33212:1:0
vdvBMSZone13	= 33213:1:0
vdvBMSZone14	= 33214:1:0
vdvBMSZone15	= 33215:1:0
vdvBMSGlobal	= 33216:1:0
/******************************************************************************
	Device Declarations - Interface Devices
******************************************************************************/
DEFINE_DEVICE
// Wall Panels
tpMain01		= 10001:1:0
tpMain02		= 10002:1:0
tpMain03		= 10003:1:0
tpMain04		= 10004:1:0
tpMain05		= 10005:1:0
tpMain06		= 10006:1:0
tpMain07		= 10007:1:0
tpMain08		= 10008:1:0
tpMain09		= 10009:1:0
tpMain10		= 10010:1:0
// Roaming Panels
tpMain11		= 10101:1:0
tpMain12		= 10102:1:0
tpMain13		= 10103:1:0
tpMain14		= 10104:1:0
tpMain15		= 10105:1:0
tpMain16		= 10106:1:0
tpMain17		= 10107:1:0
tpMain18		= 10108:1:0
tpMain19		= 10109:1:0
tpMain20		= 10110:1:0

// Wall Panels
tpDoor01		= 10001:2:0
tpDoor02		= 10002:2:0
tpDoor03		= 10003:2:0
tpDoor04		= 10004:2:0
tpDoor05		= 10005:2:0
tpDoor06		= 10006:2:0
tpDoor07		= 10007:2:0
tpDoor08		= 10008:2:0
tpDoor09		= 10009:2:0
tpDoor10		= 10010:2:0
// Roaming Panels
tpDoor11		= 10101:2:0
tpDoor12		= 10102:2:0
tpDoor13		= 10103:2:0
tpDoor14		= 10104:2:0
tpDoor15		= 10105:2:0
tpDoor16		= 10106:2:0
tpDoor17		= 10107:2:0
tpDoor18		= 10108:2:0
tpDoor19		= 10109:2:0
tpDoor20		= 10110:2:0

// Wall Panels
tpHVAC01		= 10001:3:0
tpHVAC02		= 10002:3:0
tpHVAC03		= 10003:3:0
tpHVAC04		= 10004:3:0
tpHVAC05		= 10005:3:0
tpHVAC06		= 10006:3:0
tpHVAC07		= 10007:3:0
tpHVAC08		= 10008:3:0
tpHVAC09		= 10009:3:0
tpHVAC10		= 10010:3:0
// Roaming Panels
tpHVAC11		= 10101:3:0
tpHVAC12		= 10102:3:0
tpHVAC13		= 10103:3:0
tpHVAC14		= 10104:3:0
tpHVAC15		= 10105:3:0
tpHVAC16		= 10106:3:0
tpHVAC17		= 10107:3:0
tpHVAC18		= 10108:3:0
tpHVAC19		= 10109:3:0
tpHVAC20		= 10110:3:0
/******************************************************************************
	Device Declarations - Device Arrays
******************************************************************************/
DEFINE_VARIABLE
DEV tpMain[] = {
	tpMain01,tpMain02,tpMain03,tpMain04,tpMain05,
	tpMain06,tpMain07,tpMain08,tpMain09,tpMain10,
	tpMain11,tpMain12,tpMain13,tpMain14,tpMain15,
	tpMain16,tpMain17,tpMain18,tpMain19,tpMain20
}
DEV tpDoor[] = {
	tpDoor01,tpDoor02,tpDoor03,tpDoor04,tpDoor05,
	tpDoor06,tpDoor07,tpDoor08,tpDoor09,tpDoor10,
	tpDoor11,tpDoor12,tpDoor13,tpDoor14,tpDoor15,
	tpDoor16,tpDoor17,tpDoor18,tpDoor19,tpDoor20
}
DEV tpHVAC[] = {
	tpHVAC01,tpHVAC02,tpHVAC03,tpHVAC04,tpHVAC05,
	tpHVAC06,tpHVAC07,tpHVAC08,tpHVAC09,tpHVAC10,
	tpHVAC11,tpHVAC12,tpHVAC13,tpHVAC14,tpHVAC15,
	tpHVAC16,tpHVAC17,tpHVAC18,tpHVAC19,tpHVAC20
}
DEV vdvQSDevices[] = {
	vdvQSGateway,
	vdvQSKeypad01,vdvQSKeypad02,vdvQSKeypad03,vdvQSKeypad04,vdvQSKeypad05,
	vdvQSKeypad06,vdvQSKeypad07,vdvQSKeypad08,vdvQSKeypad09,vdvQSKeypad10,
	vdvQSKeypad11,vdvQSKeypad12,vdvQSKeypad13,vdvQSKeypad14,vdvQSKeypad15
}
DEV vdvQSKeypads[] = {
	vdvQSKeypad01,vdvQSKeypad02,vdvQSKeypad03,vdvQSKeypad04,vdvQSKeypad05,
	vdvQSKeypad06,vdvQSKeypad07,vdvQSKeypad08,vdvQSKeypad09,vdvQSKeypad10,
	vdvQSKeypad11,vdvQSKeypad12,vdvQSKeypad13,vdvQSKeypad14,vdvQSKeypad15
}
DEV vdvBMSZones[] = {
	vdvBMSZone01,vdvBMSZone02,vdvBMSZone03,vdvBMSZone04,vdvBMSZone05,
	vdvBMSZone06,vdvBMSZone07,vdvBMSZone08,vdvBMSZone09,vdvBMSZone10,
	vdvBMSZone11,vdvBMSZone12,vdvBMSZone13,vdvBMSZone14,vdvBMSZone15,
	vdvBMSGlobal
}
/******************************************************************************
	System Declarations - Structures
******************************************************************************/
DEFINE_CONSTANT MAX_ROOMS = 15
DEFINE_CONSTANT STATIC_PANELS = 10
DEFINE_CONSTANT TOTAL_PANELS = 20
DEFINE_CONSTANT MAX_HVAC_OBJS	= 8

DEFINE_TYPE STRUCTURE uLIGHTS{
	CHAR		KEYPAD_ID[20]			// Keypad IntegrationID Reference
	CHAR		KEYPAD_SN[20]			// Keypad Serial Number
	CHAR		KEYPAD_BTN[10][20]	// Keypad Button Name
	INTEGER 	KEYPAD_RAMP				// Keypad Has Raise/Lower
}
DEFINE_TYPE STRUCTURE uHVACObj{
	FLOAT		VALUE
	INTEGER	TYPE
	INTEGER	ID
}
DEFINE_TYPE STRUCTURE uHVAC{
	INTEGER	CONTROL_TYPE
	uHVACObj	OBJECT[MAX_HVAC_OBJS]
}
DEFINE_TYPE STRUCTURE uRoom{
	CHAR 		NAME[50]
	uHVAC		HVAC
	uLIGHTS	LIGHTING
}
DEFINE_TYPE STRUCTURE uAptConfig{
	CHAR 		FILE_NAME[100]

	CHAR 		BPT_HOST_IP[255]
	CHAR 		BPT_USERNAME[20]
	CHAR 		BPT_PASSWORD[20]
	CHAR 		BPT_CONCIERGE[20]

	CHAR 		BMS_HOST_IP[255]

	CHAR 		LIGHT_HOST_IP[255]
	CHAR 		LIGHT_GATEWAY_ID[10]
}
DEFINE_TYPE STRUCTURE uApartment{
	uRoom		ROOM[MAX_ROOMS]
	INTEGER 	ROOM_COUNT
	INTEGER	WALL_PANEL_COUNT

	INTEGER 	DO_NOT_DISTURB
	CHAR		SIP_CALLER_NUMBER[50]
	CHAR		SIP_CALLER_NAME[50]

	CHAR 		MASTER_SERIAL_NO[50]
	uAptConfig CONFIG
}
DEFINE_TYPE STRUCTURE uPanConfig{
	CHAR		REF[20]
	INTEGER 	DEFAULT_ROOM
	INTEGER 	ROAMING
}
DEFINE_TYPE STRUCTURE uPanel{
	INTEGER MENU_1
	INTEGER OVERLAY
	INTEGER DnD
	INTEGER ROOM

	uPanConfig CONFIG
}
/******************************************************************************
	System Declarations - Variables
******************************************************************************/
DEFINE_VARIABLE
VOLATILE uApartment 	myApartment
VOLATILE uPanel     	myPanel[TOTAL_PANELS]
VOLATILE LONG 			TLT_PANEL[] = {60000}
VOLATILE LONG 			TLT_SETTINGS[] = {1500}
VOLATILE LONG 			TLT_DOORBELL[] = {5000}

/******************************************************************************
	System Declarations - General Constants
******************************************************************************/
DEFINE_CONSTANT
CHAR MAIN_PAGE[] = 'RoomControl'

INTEGER OVERLAY_NONE		= 0
INTEGER OVERLAY_ROOMS	= 1
INTEGER OVERLAY_DIAG		= 2
INTEGER OVERLAY_SET		= 3

INTEGER MENU_HOME			= 1
INTEGER MENU_DOOR			= 2
INTEGER MENU_HVAC			= 3
INTEGER MENU_LIGHT		= 4

INTEGER HVAC_CONTROL_TYPE_NONE 	= 0
INTEGER HVAC_CONTROL_TYPE_NORMAL	= 1
INTEGER HVAC_CONTROL_TYPE_NO_FAN	= 2

LONG TLID_SETTINGS		= 1
LONG TLID_DOORBELL		= 2

LONG TLID_PANEL00 		= 300
LONG TLID_PANEL01 		= 301
LONG TLID_PANEL02 		= 302
LONG TLID_PANEL03 		= 303
LONG TLID_PANEL04 		= 304
LONG TLID_PANEL05 		= 305
LONG TLID_PANEL06 		= 306
LONG TLID_PANEL07 		= 307
LONG TLID_PANEL08 		= 308
LONG TLID_PANEL09 		= 309
LONG TLID_PANEL10 		= 310
/******************************************************************************
	System Declarations - Interface Constants
******************************************************************************/
DEFINE_CONSTANT
INTEGER addRoomMode			= 1
INTEGER addRoomListBox		= 2

INTEGER btnMainMenu[]		= {101,102,103,104}
INTEGER btnRoomNone			=  120
INTEGER btnRoomSelect[]		= {121,122,123,124,125,126,127,128,129,130,131,132,133,134,135}
INTEGER btnOverlayClose		=  160
INTEGER btnOverlaySelect[]	= {161,162,163}
// Lighting
INTEGER btnLightKeypad[]	= {
	501,502,503,504,505,506,507,508,509,510,
	511,512,513,514,515,516,517,518,519,520
}
// HVAC
INTEGER btnHVAC_FanSpeed[]	 = {
	601,602,603
}
INTEGER btnHVAC_RoomMode[]	= {
	611,612,613,614,615
}
INTEGER btnHVAC_Holiday = 621
INTEGER btnHVAC_Heating = 622
INTEGER btnHVAC_Cooling = 623
// Diagnostics
INTEGER btnDIAG_BPT_LINK		= 3000

INTEGER btnDIAG_BMS_LINK		= 3100

INTEGER btnDIAG_QS_LINK			= 3200
INTEGER btnDIAG_QS_KEYPADS[]	= {
	3201,3202,3203,3204,3205,
	3206,3207,3208,3209,3210,
	3211,3212,3213,3214,3215
}

INTEGER btnDiagConfigFile		= 3901
INTEGER btnDiagPanelLocation	= 3902
INTEGER btnDiagPanelRoam		= 3903

INTEGER btnCOMMS		= 4000
/******************************************************************************
	System Config - Load File
******************************************************************************/
DEFINE_START{
	// Set System RMS Reference to the Serial Number
	STACK_VAR DEV_INFO_STRUCT sDeviceInfo
	DEVICE_INFO(dvMaster, sDeviceInfo)
	myApartment.MASTER_SERIAL_NO = sDeviceInfo.SERIAL_NUMBER
	fnLoadConfigFile('_config.txt')
}

DEFINE_FUNCTION fnLoadConfigFile(CHAR pEXT[]){
	STACK_VAR CHAR FileName[255]
	STACK_VAR SLONG NumFiles
 	STACK_VAR SLONG Entry
	STACK_VAR INTEGER x
	NumFiles = 1
	Entry = 1
	WHILE(NumFiles > 0){
		NumFiles = FILE_DIR('.',FileName,Entry)
		Entry++
		IF(LOWER_STRING(RIGHT_STRING(FileName,LENGTH_ARRAY(pEXT))) == pEXT){
			myApartment.CONFIG.FILE_NAME = FileName
			fnProcessConfig()
			RETURN
		}
	}
	myApartment.CONFIG.FILE_NAME = ''
	SEND_STRING 0, "'AMX CODE: Config File "',myApartment.CONFIG.FILE_NAME,'"'"
}


DEFINE_EVENT DATA_EVENT[vdvQSGateway]{
	ONLINE:{
		SEND_COMMAND vdvQSGateway,"'PROPERTY-IP,',myApartment.CONFIG.LIGHT_HOST_IP"
	}
}
//config is processed by the setting type and assigned to the appropriate room config strucutre
DEFINE_FUNCTION fnProcessConfig(){
	STACK_VAR SLONG slFileHandle
	STACK_VAR CHAR  thisLine[1000]
	STACK_VAR INTEGER _LINE
	// Load Config
	//SEND_STRING 0, "'AMX CODE: Opening Config File ',myApartment.CONFIG.FILE_NAME"
	slFileHandle = FILE_OPEN(myApartment.CONFIG.FILE_NAME,FILE_READ_ONLY)
	//SEND_STRING 0, "'AMX CODE: Opening Config Result ',ITOA(slFileHandle)"
	IF(slFileHandle > 0){
		STACK_VAR SLONG readRESULT
		_LINE = 1
		readRESULT = FILE_READ_LINE(slFileHandle,thisLine,MAX_LENGTH_ARRAY(thisLine))
		WHILE(readRESULT >= 0){
			IF(readRESULT == 0){
				// Blank Line
			}
			ELSE IF(thisLine[1] == '#'){
				// Comment Line
			}
			ELSE IF(FIND_STRING(thisLine,'=',1)){
				STACK_VAR CHAR _SETTING[255]
				_SETTING = REMOVE_STRING(thisLine,'=',1)
				_SETTING = fnStripCharsRight(_SETTING,1)
				_SETTING = fnRemoveWhiteSpace(_SETTING)
				thisLine = fnRemoveWhiteSpace(thisLine)
				SWITCH(_SETTING){
					// System Options - Door Entry
					CASE 'BPT_EMULATE':{
						SEND_COMMAND vdvSIP,"'PROPERTY-EMULATE,',thisLine"
					}
					CASE 'BPT_HOST_IP':{
						myApartment.CONFIG.BPT_HOST_IP = thisLine
						SEND_COMMAND vdvSIP,"'PROPERTY-SYSTEM,BPT'"
						SEND_COMMAND vdvSIP,"'PROPERTY-IP,',myApartment.CONFIG.BPT_HOST_IP"
						//SEND_COMMAND vdvSIP,"'PROPERTY-DEBUG,DEV'"
					}
					CASE 'BPT_USERNAME':{
						myApartment.CONFIG.BPT_USERNAME = thisLine
						SEND_COMMAND vdvSIP,"'PROPERTY-USERNAME,',myApartment.CONFIG.BPT_USERNAME"
					}
					CASE 'BPT_PASSWORD':{
						myApartment.CONFIG.BPT_PASSWORD = thisLine
						SEND_COMMAND vdvSIP,"'PROPERTY-PASSWORD,',myApartment.CONFIG.BPT_PASSWORD"
					}
					CASE 'BPT_CONCIERGE':{
						myApartment.CONFIG.BPT_CONCIERGE = thisLine
						SEND_COMMAND vdvSIP,"'PROPERTY-SPEEDDIAL,1,Concierge,',myApartment.CONFIG.BPT_CONCIERGE"
					}

					// System Options - HVAC
					CASE 'BMS_DEBUG':{
						SEND_COMMAND vdvBMS,"'PROPERTY-DEBUG,',thisLine"
					}
					// System Options - HVAC
					CASE 'BMS_HOST_IP':{
						myApartment.CONFIG.BMS_HOST_IP = thisLine
						SEND_COMMAND vdvBMS,"'PROPERTY-IP,',myApartment.CONFIG.BMS_HOST_IP"
					}
					CASE 'BMS_GLOBAL_MIN_SP':{
						SEND_COMMAND vdvBMSGlobal,"'PROPERTY-ID,4,ANALOG_INPUT,',thisLine"
					}
					CASE 'BMS_GLOBAL_MAX_SP':{
						SEND_COMMAND vdvBMSGlobal,"'PROPERTY-ID,5,ANALOG_INPUT,',thisLine"
					}
					CASE 'BMS_GLOBAL_MAX_SP_BATH':{
						SEND_COMMAND vdvBMSGlobal,"'PROPERTY-ID,6,ANALOG_INPUT,',thisLine"
					}
					CASE 'BMS_GLOBAL_HOLIDAY':{
						SEND_COMMAND vdvBMSGlobal,"'PROPERTY-ID,1,BINARY_VALUE,',thisLine"
					}
					CASE 'BMS_GLOBAL_HEATING':{
						SEND_COMMAND vdvBMSGlobal,"'PROPERTY-ID,2,BINARY_VALUE,',thisLine"
					}
					CASE 'BMS_GLOBAL_COOLING':{
						SEND_COMMAND vdvBMSGlobal,"'PROPERTY-ID,3,BINARY_VALUE,',thisLine"
					}

					// System Options - Lighting
					CASE 'LIGHT_HOST_IP':{
						myApartment.CONFIG.LIGHT_HOST_IP = thisLine
						SEND_COMMAND vdvQSGateway,"'PROPERTY-IP,',myApartment.CONFIG.LIGHT_HOST_IP"
						//SEND_COMMAND vdvQSGateway,"'PROPERTY-DEBUG,DEV'"
					}
					CASE 'LIGHT_GATEWAY_ID':{
						myApartment.CONFIG.LIGHT_GATEWAY_ID = thisLine
						SEND_COMMAND vdvQSGateway,"'PROPERTY-ID,',myApartment.CONFIG.LIGHT_GATEWAY_ID"
					}

					// Room Options - General
					CASE 'ROOM_NAME':{
						myApartment.ROOM_COUNT++
						myApartment.ROOM[myApartment.ROOM_COUNT].NAME = thisLine
					}

					// Room Options - Lighting
					CASE 'LIGHT_KEYPAD_ID':{
						myApartment.ROOM[myApartment.ROOM_COUNT].LIGHTING.KEYPAD_ID = thisLine
						SEND_COMMAND vdvQSKeypads[myApartment.ROOM_COUNT],"'PROPERTY-ID,',thisLine"
					}
					CASE 'LIGHT_KEYPAD_BTN':{
						STACK_VAR INTEGER btnID
						btnID = ATOI(fnStripCharsRight(REMOVE_STRING(thisLine,',',1),1))
						myApartment.ROOM[myApartment.ROOM_COUNT].LIGHTING.KEYPAD_BTN[btnID] = thisLine
					}
					CASE 'LIGHT_KEYPAD_RAMP':{
						myApartment.ROOM[myApartment.ROOM_COUNT].LIGHTING.KEYPAD_RAMP = (thisLine == 'TRUE')
					}
					// Room Options - BMS
					CASE 'BMS_CONFIGURATION':{
						SWITCH(thisLine){
							CASE 'NORMAL':myApartment.ROOM[myApartment.ROOM_COUNT].HVAC.CONTROL_TYPE = HVAC_CONTROL_TYPE_NORMAL
							CASE 'NO_FAN':myApartment.ROOM[myApartment.ROOM_COUNT].HVAC.CONTROL_TYPE = HVAC_CONTROL_TYPE_NO_FAN
						}
					}
					CASE 'BMS_SPACE_TEMP_ID':{
						SEND_COMMAND vdvBMSZones[myApartment.ROOM_COUNT],"'PROPERTY-ID,1,ANALOG_INPUT,',thisLine"
					}
					CASE 'BMS_SET_POINT_ID':{
						SEND_COMMAND vdvBMSZones[myApartment.ROOM_COUNT],"'PROPERTY-ID,2,ANALOG_VALUE,',thisLine"
					}
					CASE 'BMS_ROOM_MODE':{
						SEND_COMMAND vdvBMSZones[myApartment.ROOM_COUNT],"'PROPERTY-ID,3,MULTISTATE_VALUE,',thisLine"
					}
					CASE 'BMS_FAN_MODE':{
						SEND_COMMAND vdvBMSZones[myApartment.ROOM_COUNT],"'PROPERTY-ID,4,MULTISTATE_VALUE,',thisLine"
					}
					// Panel Options
					CASE 'PANEL_REF':{
						myApartment.WALL_PANEL_COUNT++
						myPanel[myApartment.WALL_PANEL_COUNT].CONFIG.REF = thisLine
					}
					CASE 'DEFAULT_ROOM':{
						myPanel[myApartment.WALL_PANEL_COUNT].CONFIG.DEFAULT_ROOM = ATOI(thisLine)
					}
					CASE 'ROAMING':{
						myPanel[myApartment.WALL_PANEL_COUNT].CONFIG.ROAMING = (thisLine == 'TRUE')
					}
				}
			}
			_LINE++
			readRESULT = FILE_READ_LINE(slFileHandle,thisLine,MAX_LENGTH_ARRAY(thisLine))
		}
		FILE_CLOSE(slFileHandle)
	}
}
/******************************************************************************
	Module Declarations
******************************************************************************/
DEFINE_MODULE 'mBacnetIP' 		BacnetIP(vdvBMS,vdvBMSZones,tpHVAC,ipBMS)
DEFINE_MODULE 'mLutronQS' 		LutronQS(vdvQSDevices,ipLutron)
DEFINE_MODULE 'mSIPDoorEntry'	DoorEnt(vdvSIP,tpDoor)
/******************************************************************************
	Interface Control - Utility Functions
******************************************************************************/
DEFINE_FUNCTION fnInitPanel(INTEGER pPanel){
	// Loop through all panels if pPanel is empty
	IF(!pPanel){
		STACK_VAR INTEGER p
		FOR(p = 1; p <= LENGTH_ARRAY(tpMain); p++){
			fnInitPanel(p)
		}
		RETURN
	}
	SELECT{
		ACTIVE(myApartment.CONFIG.FILE_NAME == ''):{
			SEND_COMMAND tpMain[pPanel],'PAGE-NoConfiguration'
			RETURN
		}
	}
	// Default Values
	myPanel[pPanel].MENU_1 = MENU_HOME
	myPanel[pPanel].ROOM = myPanel[pPanel].CONFIG.DEFAULT_ROOM
	IF(1){
		// Room Names
		STACK_VAR INTEGER x
		SEND_COMMAND tpMain[pPanel],"'^TXT-',ITOA(btnRoomNone),',0,Global'"
		FOR(x = 1; x <= MAX_ROOMS; x++){
			IF(LENGTH_ARRAY(myApartment.ROOM[x].NAME)){
				SEND_COMMAND tpMain[pPanel],"'^TXT-',ITOA(btnRoomSelect[x]),',0,',myApartment.ROOM[x].NAME"
			}
			ELSE{
				SEND_COMMAND tpMain[pPanel],"'^SHD-',ITOA(addRoomListBox),',subRoomList',FORMAT('%02d',x)"
			}
		}
	}
	fnSetupPanelForRoom(pPanel)
	SEND_COMMAND tpMain[pPanel],"'PAGE-',MAIN_PAGE"
}

	(** Utility Function - Setup Panel **)
DEFINE_FUNCTION fnSetupPanelForRoom(INTEGER pPanel){

	STACK_VAR INTEGER pROOM

	IF(!pPanel){
		STACK_VAR INTEGER p
		FOR(p = 1; p <= LENGTH_ARRAY(tpMain); p++){
			fnSetupPanelForRoom(p)
		}
		RETURN
	}

	pROOM = myPanel[pPanel].ROOM

	// Change Room Name
	SWITCH(pROOM){
		CASE 0:	SEND_COMMAND tpMain[pPanel],"'^TXT-',ITOA(btnOverlaySelect[OVERLAY_ROOMS]),',0,Global'"
		DEFAULT:	SEND_COMMAND tpMain[pPanel],"'^TXT-',ITOA(btnOverlaySelect[OVERLAY_ROOMS]),',0,',myApartment.ROOM[pROOM].NAME"
	}

	// Disable Door Entry if panel is in Inactive Mode
	SEND_COMMAND tpMain[pPanel],"'^SHO-',ITOA(btnMainMenu[MENU_DOOR]),',',ITOA(![vdvSIP,50+pPanel])"

	// Hide menu options that are not configured for this room
	IF(pROOM){
		// HVAC
		SEND_COMMAND tpMain[pPanel],"'^SHO-',ITOA(btnMainMenu[MENU_HVAC]),',',ITOA(myApartment.ROOM[pROOM].HVAC.CONTROL_TYPE != HVAC_CONTROL_TYPE_NONE)"
		// Lighting
		SEND_COMMAND tpMain[pPanel],"'^SHO-',ITOA(btnMainMenu[MENU_LIGHT]),',',ITOA(LENGTH_ARRAY(myApartment.ROOM[pROOM].LIGHTING.KEYPAD_ID) > 0)"
		// Reset menu option if it's in an area that is no longer applicable
		SWITCH(myPanel[pPanel].MENU_1){
			CASE MENU_HVAC:	IF(myApartment.ROOM[pROOM].HVAC.CONTROL_TYPE == HVAC_CONTROL_TYPE_NONE){			myPanel[pPanel].MENU_1 = 1 }
			CASE MENU_LIGHT:	IF(!LENGTH_ARRAY(myApartment.ROOM[pROOM].LIGHTING.KEYPAD_ID)){	myPanel[pPanel].MENU_1 = 1 }
		}
	}
	ELSE{
		SEND_COMMAND tpMain[pPanel],"'^SHO-',ITOA(btnMainMenu[MENU_HVAC]),',1'"	// Global HVAC
		SEND_COMMAND tpMain[pPanel],"'^SHO-',ITOA(btnMainMenu[MENU_LIGHT]),',0'"
		SWITCH(myPanel[pPanel].MENU_1){
			CASE MENU_HVAC:
			CASE MENU_LIGHT:	myPanel[pPanel].MENU_1 = 1
		}
	}

	// Lighting Options
	IF(pROOM){
		IF(LENGTH_ARRAY(myApartment.ROOM[pROOM].LIGHTING.KEYPAD_ID)){
			STACK_VAR INTEGER b
			FOR(b = 1; b <= 10; b++){
				IF(LENGTH_ARRAY(myApartment.ROOM[pROOM].LIGHTING.KEYPAD_BTN[b])){
					SEND_COMMAND tpMain[pPanel],"'^TXT-',ITOA(btnLightKeypad[b]),',0,',myApartment.ROOM[pROOM].LIGHTING.KEYPAD_BTN[b]"
					SEND_COMMAND tpMain[pPanel],"'^SHO-',ITOA(btnLightKeypad[b]),',1'"
				}
				ELSE{
					SEND_COMMAND tpMain[pPanel],"'^SHO-',ITOA(btnLightKeypad[b]),',0'"
				}
			}
			SEND_COMMAND tpMain[pPanel],"'^SHO-',ITOA(btnLightKeypad[18]),',',ITOA(myApartment.ROOM[pROOM].LIGHTING.KEYPAD_RAMP)"
			SEND_COMMAND tpMain[pPanel],"'^SHO-',ITOA(btnLightKeypad[19]),',',ITOA(myApartment.ROOM[pROOM].LIGHTING.KEYPAD_RAMP)"
		}
	}
	// Setup the HVAC
	DO_PUSH(tpHVAC[pPanel],200+myPanel[pPanel].ROOM)
	// Call Next in Chain
	fnSetupPanelPanes(pPanel)
}
(** Utility Function - Setup Panel **)
DEFINE_FUNCTION fnSetupPanelPanes(INTEGER pPanel){
	IF(!pPanel){
		STACK_VAR INTEGER p
		FOR(p = 1; p <= LENGTH_ARRAY(tpMain); p++){
			fnSetupPanelPanes(p)
		}
		RETURN
	}
	// Reset Overlays
	fnSetupOverlay(pPanel,OVERLAY_NONE)
	// Show pane
	SWITCH(myPanel[pPanel].MENU_1){
		CASE MENU_HOME:	SEND_COMMAND tpMain[pPanel],"'@PPN-paneHome;', MAIN_PAGE"
		CASE MENU_HVAC:{
			SWITCH(myPanel[pPanel].ROOM){
				CASE 0:SEND_COMMAND tpMain[pPanel],"'@PPN-paneHVAC_Global;', MAIN_PAGE"
				DEFAULT:{
					SWITCH(myApartment.ROOM[myPanel[pPanel].ROOM].HVAC.CONTROL_TYPE){
						CASE HVAC_CONTROL_TYPE_NORMAL: 	SEND_COMMAND tpMain[pPanel],"'@PPN-paneHVAC_Normal;', MAIN_PAGE"
						CASE HVAC_CONTROL_TYPE_NO_FAN: 		SEND_COMMAND tpMain[pPanel],"'@PPN-paneHVAC_NoFan;', MAIN_PAGE"
					}
				}
			}
		}
		CASE MENU_LIGHT:	SEND_COMMAND tpMain[pPanel],"'@PPN-paneLight;',MAIN_PAGE"
		CASE MENU_DOOR:{
			STACK_VAR CHAR pDoorPane[255]
			pDoorPane = 'paneDoor_Idle'
			IF(![vdvSIP,201] && ![vdvSIP,pPanel+50]){
				SELECT{
					ACTIVE([vdvSIP,238]):{
						IF([vdvSIP,pPanel]){
							IF(myApartment.SIP_CALLER_NUMBER == myApartment.CONFIG.BPT_CONCIERGE){
								pDoorPane = 'paneDoor_Connected_V2'
							}
							ELSE{
								pDoorPane = 'paneDoor_Connected_V1'
							}
						}
						ELSE{
							pDoorPane = 'paneDoor_Busy'
						}
					}
					ACTIVE([vdvSIP,237]):{
						IF([vdvSIP,pPanel]){
							pDoorPane = 'paneDoor_Dialling'
						}
						ELSE{
							pDoorPane = 'paneDoor_Busy'
						}
					}
					ACTIVE([vdvSIP,236]):{
						pDoorPane = 'paneDoor_Incoming'
					}
				}
			}
			SEND_COMMAND tpMain[pPanel],"'@PPN-',pDoorPane,';', MAIN_PAGE"
		}
	}
}
	(** Utility Function - Overlay Panel **)
DEFINE_FUNCTION fnSetupOverlay(INTEGER pPanel, INTEGER pOVERLAY){
	// Select Main Overlay
	SWITCH(pOVERLAY){
		CASE OVERLAY_NONE:{
			SEND_COMMAND tpMain[pPanel],"'@PPF-overlayDiagnostics;',MAIN_PAGE"
			SEND_COMMAND tpMain[pPanel],"'@PPF-overlayBackLayer;',MAIN_PAGE"
			IF([vdvSip,50+pPanel] && myPanel[pPanel].MENU_1 == MENU_DOOR){
				myPanel[pPanel].MENU_1 = MENU_HOME
				fnSetupPanelForRoom(pPanel)
			}
		}
		DEFAULT:{
			SEND_COMMAND tpMain[pPanel],"'@PPN-overlayBackLayer;',MAIN_PAGE"
			SWITCH(pOVERLAY){
				CASE OVERLAY_DIAG:	SEND_COMMAND tpMain[pPanel],"'@PPN-overlayDiagnostics;',MAIN_PAGE"
				CASE OVERLAY_SET:		SEND_COMMAND tpMain[pPanel],"'@PPN-overlaySettings;',MAIN_PAGE"
				CASE OVERLAY_ROOMS:{
					IF(myApartment.ROOM_COUNT > 6){
						SEND_COMMAND tpMain[pPanel],"'@PPN-overlayRoomListMore;',MAIN_PAGE"
					}
					ELSE{
						SEND_COMMAND tpMain[pPanel],"'@PPN-overlayRoomList',fnPadLeadingChars(ITOA(myApartment.ROOM_COUNT),'0',2),';',MAIN_PAGE"
					}
				}
			}
		}
	}
	myPanel[pPanel].OVERLAY = pOVERLAY
}
/******************************************************************************
	Interface Control - General Menus & Navigation
******************************************************************************/
DEFINE_EVENT BUTTON_EVENT[tpMain,0]{
	PUSH:{
		IF(TIMELINE_ACTIVE(GET_LAST(tpMain)+TLID_PANEL00)){ TIMELINE_KILL(GET_LAST(tpMain)+TLID_PANEL00) }
		TIMELINE_CREATE(GET_LAST(tpMain)+TLID_PANEL00,TLT_PANEL,LENGTH_ARRAY(TLT_PANEL),TIMELINE_ABSOLUTE,TIMELINE_ONCE)
	}
}
DEFINE_EVENT
TIMELINE_EVENT[TLID_PANEL01]
TIMELINE_EVENT[TLID_PANEL02]
TIMELINE_EVENT[TLID_PANEL03]
TIMELINE_EVENT[TLID_PANEL04]
TIMELINE_EVENT[TLID_PANEL05]
TIMELINE_EVENT[TLID_PANEL06]
TIMELINE_EVENT[TLID_PANEL07]
TIMELINE_EVENT[TLID_PANEL08]
TIMELINE_EVENT[TLID_PANEL09]
TIMELINE_EVENT[TLID_PANEL10]{
	IF(myPanel[TIMELINE.ID-TLID_PANEL00].OVERLAY){
		fnSetupOverlay(TIMELINE.ID-TLID_PANEL00,OVERLAY_NONE)
	}
}

DEFINE_EVENT DATA_EVENT[tpMain]{
	ONLINE:{
		fnInitPanel(GET_LAST(tpMain))
	}
}

DEFINE_EVENT BUTTON_EVENT[tpMain,btnMainMenu]{
	RELEASE:{
		STACK_VAR INTEGER p; p = GET_LAST(tpMain)
		myPanel[p].MENU_1 = GET_LAST(btnMainMenu)
		fnSetupPanelPanes(p)
	}
}

DEFINE_EVENT BUTTON_EVENT[tpMain,btnOverlayClose]{
	RELEASE:{
		STACK_VAR INTEGER p; p = GET_LAST(tpMain)
		IF(myPanel[p].OVERLAY){
			fnSetupOverlay(p,OVERLAY_NONE)
		}
	}
}
DEFINE_EVENT BUTTON_EVENT[tpMain,btnOverlaySelect]{
	PUSH:{
		STACK_VAR INTEGER p; p = GET_LAST(tpMain)
		IF(myPanel[p].OVERLAY == GET_LAST(btnOverlaySelect)){
			fnSetupOverlay(p,OVERLAY_NONE)
		}
		ELSE{
			// Don't allow non-roaming panels to select a room
			IF(!(GET_LAST(btnOverlaySelect) == OVERLAY_ROOMS && !myPanel[p].CONFIG.ROAMING)){
				fnSetupOverlay(p,GET_LAST(btnOverlaySelect))
			}
		}
	}
	HOLD[30]:{
		STACK_VAR INTEGER p; p = GET_LAST(tpMain)
		IF(GET_LAST(btnOverlaySelect) == OVERLAY_ROOMS){
			fnSetupOverlay(p,OVERLAY_DIAG)
		}
	}
}
DEFINE_EVENT BUTTON_EVENT[tpMain,btnRoomNone]{
	RELEASE:{
		STACK_VAR INTEGER p; p = GET_LAST(tpMain)
		myPanel[p].ROOM = 0
		fnSetupPanelForRoom(p)
	}
}
DEFINE_EVENT BUTTON_EVENT[tpMain,btnRoomSelect]{
	RELEASE:{
		STACK_VAR INTEGER p; p = GET_LAST(tpMain)
		myPanel[p].ROOM = GET_LAST(btnRoomSelect)
		fnSetupPanelForRoom(p)
	}
}
/******************************************************************************
	Interface Control - Mainline Feedback
******************************************************************************/
DEFINE_PROGRAM{
	STACK_VAR INTEGER p
	FOR(p = 1; p <= LENGTH_ARRAY(tpMain); p++){
		STACK_VAR INTEGER b
		FOR(b = 1; b <= MAX_ROOMS; b++){
			[tpMain[p],btnRoomSelect[b]] 			= (myPanel[p].ROOM == b)
		}
		[tpMain[p],btnRoomNone] = (myPanel[p].ROOM == 0)
	}
}
/******************************************************************************
	Interface Control - Lighting
******************************************************************************/
DEFINE_EVENT BUTTON_EVENT[tpMain,btnLightKeypad]{
	PUSH:{
		SEND_COMMAND vdvQSKeypads[myPanel[GET_LAST(tpMain)].ROOM],"'PRESS-',ITOA(GET_LAST(btnLightKeypad))"
	}
	RELEASE:{
		SEND_COMMAND vdvQSKeypads[myPanel[GET_LAST(tpMain)].ROOM],"'RELEASE-',ITOA(GET_LAST(btnLightKeypad))"
	}
}
DEFINE_PROGRAM{
	STACK_VAR INTEGER p
	FOR(p = 1; p <= LENGTH_ARRAY(tpMain); p++){
		IF(myPanel[p].ROOM){
			STACK_VAR INTEGER b
			FOR(b = 1; b <= 10; b++){
				[tpMain[p],btnLightKeypad[b]] = ([vdvQSKeypads[myPanel[p].ROOM],80+b])
			}
		}
	}
}
/******************************************************************************
	Interface Control - HVAC
******************************************************************************/
DEFINE_START{
	STACK_VAR INTEGER z
	FOR(z = 1; z <= MAX_ROOMS; z++){
		STACK_VAR INTEGER o
		FOR(o = 1; o <= MAX_HVAC_OBJS; o++){
			// Link level values to object
			CREATE_LEVEL vdvBMSZones[z],o,myApartment.ROOM[z].HVAC.OBJECT[o].VALUE
		}
	}
}
DEFINE_EVENT LEVEL_EVENT[vdvBMSGlobal,0]{
	SWITCH(LEVEL.INPUT.LEVEL){
		CASE 4:{
			STACK_VAR INTEGER z
			FOR(z = 1; z <= MAX_ROOMS; z++){
				IF(myApartment.ROOM[z].HVAC.CONTROL_TYPE != HVAC_CONTROL_TYPE_NONE){
					SEND_COMMAND vdvBMSZones[z],"'PROPERTY-RANGE,2,MIN,',ITOA(LEVEL.VALUE)"
				}
			}
		}
		DEFAULT:{
			STACK_VAR INTEGER z
			FOR(z = 1; z <= MAX_ROOMS; z++){
				IF(myApartment.ROOM[z].HVAC.CONTROL_TYPE == HVAC_CONTROL_TYPE_NORMAL && LEVEL.INPUT.LEVEL == 5){
					SEND_COMMAND vdvBMSZones[z],"'PROPERTY-RANGE,2,MAX,',ITOA(LEVEL.VALUE)"
				}
				IF(myApartment.ROOM[z].HVAC.CONTROL_TYPE == HVAC_CONTROL_TYPE_NO_FAN && LEVEL.INPUT.LEVEL == 6){
					SEND_COMMAND vdvBMSZones[z],"'PROPERTY-RANGE,2,MAX,',ITOA(LEVEL.VALUE)"
				}
			}
		}
	}
}
DEFINE_EVENT BUTTON_EVENT[tpMain,btnHVAC_FanSpeed]{
	PUSH:{
		SEND_COMMAND vdvBMSZones[myPanel[GET_LAST(tpMain)].ROOM],"'VALUE-4,',ITOA(GET_LAST(btnHVAC_FanSpeed))"
	}
}
DEFINE_EVENT BUTTON_EVENT[tpMain,btnHVAC_RoomMode]{
	PUSH:{
		SEND_COMMAND vdvBMSZones[myPanel[GET_LAST(tpMain)].ROOM],"'VALUE-3,',ITOA(GET_LAST(btnHVAC_RoomMode))"
	}
}
DEFINE_EVENT BUTTON_EVENT[tpMain,btnHVAC_Holiday]{
	PUSH:{
		SEND_COMMAND vdvBMSGlobal, 'VALUE-1,TOGGLE'
	}
}
DEFINE_EVENT BUTTON_EVENT[tpMain,btnHVAC_Heating]{
	PUSH:{
		SEND_COMMAND vdvBMSGlobal, 'VALUE-2,TOGGLE'
	}
}
DEFINE_EVENT BUTTON_EVENT[tpMain,btnHVAC_Cooling]{
	PUSH:{
		SEND_COMMAND vdvBMSGlobal, 'VALUE-3,TOGGLE'
	}
}
DEFINE_EVENT CHANNEL_EVENT[vdvBMSZones,0]{
	ON:{}
	OFF:{}
}
DEFINE_PROGRAM{
	STACK_VAR INTEGER p
	FOR(p = 1; p <= LENGTH_ARRAY(tpMain); p++){
		IF(myPanel[p].ROOM){
			STACK_VAR INTEGER b
			FOR(b = 1; b <= LENGTH_ARRAY(btnHVAC_FanSpeed); b++){
				[tpMain[p],btnHVAC_FanSpeed[b]] = (myApartment.ROOM[myPanel[p].ROOM].HVAC.OBJECT[4].VALUE == ATOF(ITOA(b)))
			}
			FOR(b = 1; b <= LENGTH_ARRAY(btnHVAC_RoomMode); b++){
				[tpMain[p],btnHVAC_RoomMode[b]] = (myApartment.ROOM[myPanel[p].ROOM].HVAC.OBJECT[3].VALUE == ATOF(ITOA(b)))
			}
			SEND_LEVEL tpMain[p],addRoomMode,ATOI(FTOA(myApartment.ROOM[myPanel[p].ROOM].HVAC.OBJECT[3].VALUE))
		}
	}
	// Global Settings
	[tpMain,btnHVAC_Holiday] = ([vdvBMSGlobal,1])
	[tpMain,btnHVAC_Heating] = ([vdvBMSGlobal,2])
	[tpMain,btnHVAC_Cooling] = ([vdvBMSGlobal,3])
}
/******************************************************************************
	Interface Control - Settings
******************************************************************************/
DEFINE_EVENT CHANNEL_EVENT[vdvSIP,0]{
	ON:{
		IF(CHANNEL.CHANNEL > 50 && CHANNEL.CHANNEL <= LENGTH_ARRAY(tpDoor)+50){
			SEND_COMMAND tpMain[CHANNEL.CHANNEL-50],"'^SHO-',ITOA(btnMainMenu[MENU_DOOR]),',',ITOA(![vdvSIP,CHANNEL.CHANNEL])"
		}
	}
	OFF:{
		IF(CHANNEL.CHANNEL > 50 && CHANNEL.CHANNEL <= LENGTH_ARRAY(tpDoor)+50){
			SEND_COMMAND tpMain[CHANNEL.CHANNEL-50],"'^SHO-',ITOA(btnMainMenu[MENU_DOOR]),',',ITOA(![vdvSIP,CHANNEL.CHANNEL])"
		}
	}
}
/******************************************************************************
	Interface Control - Diagnostics
******************************************************************************/
DEFINE_EVENT DATA_EVENT[tpMain]{
	ONLINE:{
		STACK_VAR INTEGER x

		SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDiagConfigFile),',0,',myApartment.CONFIG.FILE_NAME"
		// Diagnostics - Door Entry IP
		SWITCH(LENGTH_ARRAY(myApartment.CONFIG.BPT_HOST_IP)){
			CASE 0:	SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDIAG_BPT_LINK),',0,BPT Link',$0A,'Host Not Set'"
			DEFAULT: SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDIAG_BPT_LINK),',0,BPT Link',$0A,'Host:',myApartment.CONFIG.BPT_HOST_IP,$0A,'User:',myApartment.CONFIG.BPT_USERNAME"
		}
		// Diagnostics - BMS IP
		SWITCH(LENGTH_ARRAY(myApartment.CONFIG.BMS_HOST_IP)){
			CASE 0:	SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDIAG_BMS_LINK),',0,BMS Link',$0A,'Host Not Set'"
			DEFAULT:	SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDIAG_BMS_LINK),',0,BMS Link',$0A,myApartment.CONFIG.BMS_HOST_IP"
		}
		// Diagnostics - Lutron IP
		SWITCH(LENGTH_ARRAY(myApartment.CONFIG.LIGHT_HOST_IP)){
			CASE 0:	SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDIAG_QS_LINK),',0,Lutron Link',$0A,'Host Not Set'"
			DEFAULT:	SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDIAG_QS_LINK),',0,Lutron Link',$0A,myApartment.CONFIG.LIGHT_HOST_IP"
		}
		// Room Name Config
		SWITCH(myPanel[GET_LAST(tpMain)].CONFIG.DEFAULT_ROOM){
			CASE 0:	SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDiagPanelLocation),',0,Global'"
			DEFAULT:	SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDiagPanelLocation),',0,',myApartment.ROOM[myPanel[GET_LAST(tpMain)].CONFIG.DEFAULT_ROOM].NAME"
		}
		FOR(x = 1; x <= MAX_ROOMS; x++){
			IF(LENGTH_ARRAY(myApartment.ROOM[x].NAME)){
				SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnRoomSelect[x]),',0,',myApartment.ROOM[x].NAME"
			}
			// Diagnostics
			SWITCH(LENGTH_ARRAY(myApartment.ROOM[x].LIGHTING.KEYPAD_ID)){
				CASE 0:	SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDIAG_QS_KEYPADS[x]),',0,QS Keypad',$0A,'Not Configured'"
				DEFAULT:	SEND_COMMAND DATA.DEVICE,"'^TXT-',ITOA(btnDIAG_QS_KEYPADS[x]),',0,QS Keypad',$0A,'SN:',myApartment.ROOM[x].LIGHTING.KEYPAD_SN"
			}
		}
		IF(myApartment.ROOM_COUNT){
			SEND_COMMAND DATA.DEVICE,"'^SHO-',ITOA(btnDIAG_QS_KEYPADS[1]),'.',ITOA(btnDIAG_QS_KEYPADS[myApartment.ROOM_COUNT]),',1'"
		}
		IF(myApartment.ROOM_COUNT < MAX_ROOMS){
			SEND_COMMAND DATA.DEVICE,"'^SHO-',ITOA(btnDIAG_QS_KEYPADS[myApartment.ROOM_COUNT+1]),'.',ITOA(btnDIAG_QS_KEYPADS[LENGTH_ARRAY(btnDIAG_QS_KEYPADS)]),',0'"
		}
	}
}
DEFINE_PROGRAM{
	STACK_VAR INTEGER b
	STACK_VAR INTEGER p
	FOR(p = 1; p <= LENGTH_ARRAY(tpMain); p++){
		[tpMain[p],btnDiagPanelRoam] 	= myPanel[p].CONFIG.ROAMING
	}
	FOR(b = 1; b <= MAX_ROOMS; b++){
		[tpMain,btnDIAG_QS_KEYPADS[b]] 	= [vdvQSKeypads[b],251]
	}
	[tpMain,btnDIAG_BPT_LINK] 	= [vdvSIP,252]
	[tpMain,btnDIAG_BMS_LINK] 	= [vdvBMS,252]
	[tpMain,btnDIAG_QS_LINK]	= [vdvQSGateway,252]
	[tpMain,btnCOMMS]				= (TRUE)
}
/******************************************************************************
	Device Control - Lighting Devices
******************************************************************************/
DEFINE_EVENT DATA_EVENT[vdvQSKeypads]{
	STRING:{
		SWITCH(fnStripCharsRight(REMOVE_STRING(DATA.TEXT,'-',1),1)){
			CASE 'PROPERTY':{
				SWITCH(fnStripCharsRight(REMOVE_STRING(DATA.TEXT,',',1),1)){
					CASE 'META_SN':{
						myApartment.ROOM[GET_LAST(vdvQSKeypads)].LIGHTING.KEYPAD_SN = DATA.TEXT
						SEND_COMMAND tpMain,"'^TXT-',ITOA(btnDIAG_QS_KEYPADS[GET_LAST(vdvQSKeypads)]),',0,QS Keypad',$0A,'SN:',DATA.TEXT"
					}
				}
			}
		}
	}
}
/******************************************************************************
	Device Control - DoorBell
******************************************************************************/
DEFINE_EVENT CHANNEL_EVENT[chnDoorBell]{
	ON:{
		IF(!TIMELINE_ACTIVE(TLID_DOORBELL)){
			TIMELINE_CREATE(TLID_DOORBELL,TLT_DOORBELL,LENGTH_ARRAY(TLT_DOORBELL),TIMELINE_ABSOLUTE,TIMELINE_ONCE)
			// If apartment is not in DnD mode
			IF(![vdvSIP,201]){
				STACK_VAR INTEGER p
				FOR(p = 1; p <= LENGTH_ARRAY(tpDoor); p++){
					IF(!myPanel[p].DnD){
						SEND_COMMAND tpMain[p],"'@SOU-DoorBell.mp3'"
					}
				}
			}
		}
	}
}
/******************************************************************************
	Device Control - Door Entry
******************************************************************************/
DEFINE_EVENT LEVEL_EVENT[vdvSIP,1]{
	// If apartment is not in DnD mode
	IF(![vdvSIP,201]){
		STACK_VAR INTEGER p
		FOR(p = 1; p <= LENGTH_ARRAY(tpDoor); p++){
			IF(!myPanel[p].DnD){
				IF(LEVEL.VALUE == 1){
					myPanel[p].MENU_1 = MENU_DOOR
				}
				IF(myPanel[p].MENU_1 == MENU_DOOR){
					fnSetupPanelPanes(p)
				}
			}
		}
	}
}
DEFINE_EVENT DATA_EVENT[vdvSIP]{
	STRING:{
		SWITCH(fnStripCharsRight(REMOVE_STRING(DATA.TEXT,'-',1),1)){
			CASE 'CALLER_NUM':myApartment.SIP_CALLER_NUMBER = DATA.TEXT
			CASE 'CALLER_ID': myApartment.SIP_CALLER_NAME = DATA.TEXT
		}
	}
}
/******************************************************************************
	EoF
******************************************************************************/
