//%attributes = {}
  // FAB_init_btn

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 25.11.19, 20:33:33
	  // ----------------------------------------------------
	  // Method: FAB_init_btn
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 


var $currentBtnName : Text
var $template : Object
$currentBtnName:=OBJECT Get name(Object current)

Case of 
	: (Form event code=On Load)
		  // Load the template 
		$template:=New object("templateName";"Blog4D_FAB")
		Form[$currentBtnName]:=New AJUI_Button ($template)
		Form[$currentBtnName].Name($currentBtnName)
		Form[$currentBtnName].Height(AJUI_btn_default;30)
		Form[$currentBtnName].Width(AJUI_btn_default;30)
		
		Case of 
			: ($currentBtnName="btn_1")
				Form[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994415---account-avatar-person-profile-user.svg")
				Form[$currentBtnName].OnClick("btn_1_onClick_cb")
			: ($currentBtnName="btn_2")
				Form[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994366---friend-group-members-people-team.svg")
				Form[$currentBtnName].OnClick("btn_2_onClick_cb")
			: ($currentBtnName="btn_3")
				Form[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994425---camera-interface-lens-photo-photography.svg")
				Form[$currentBtnName].OnClick("btn_3_onClick_cb")
			: ($currentBtnName="btn_4")
				Form[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994354---arrow-download-downloading-interface-save.svg")
				Form[$currentBtnName].OnClick("btn_4_onClick_cb")
			: ($currentBtnName="btn_5")
				Form[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994374---email-inbox-incoming-mail-mailbox-message.svg")
				Form[$currentBtnName].OnClick("btn_5_onClick_cb")
			: ($currentBtnName="btn_6")
				Form[$currentBtnName].PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994345---backup-cloud-server-storage-upload.svg")
				Form[$currentBtnName].OnClick("btn_6_onClick_cb")
				
		End case 
		
	: (Form event code=On Getting Focus) & (Form.FABisActive)
		OBJECT SET SHORTCUT(*;"clickButton";" ")  // set a space as a shortcut
		
	: (Form event code=On Losing Focus) & (Form.FABisActive)
		OBJECT SET SHORTCUT(*;"clickButton";"")  // remove the shortcut
		
End case 

Form[$currentBtnName].Draw()

