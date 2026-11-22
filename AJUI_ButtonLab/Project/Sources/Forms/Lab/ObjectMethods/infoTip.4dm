var $evt : Integer
$evt:=Form event code

Case of 
	: ($evt=On Load)
		Form.btnTempSettings:=newTemplateButton 
		Form.btnTempSettings.Height(AJUI_btn_default;20)
		Form.btnTempSettings.Width(AJUI_btn_default;20)
		Form.btnTempSettings.PictureHeight(AJUI_btn_default;10)
		Form.btnTempSettings.PictureWidth(AJUI_btn_default;10)
		Form.btnTempSettings.Name("infoTip")
		Form.btnTempSettings.Label(AJUI_btn_default;"Settings")
		Form.btnTempSettings.PicturePath(AJUI_btn_default;"svg/Deemak_Daksina/3994403---cog-gear-options-preferences-settings.svg")
		
		TLoc_TipSubform_init ("infoTip")
		
		
	: ($evt=On Clicked)
		
		Form.tip_sf_details.path_global:=Form.templateLocPref.path_global
		Form.tip_sf_details.path_shared:=Form.templateLocPref.path_shared
		Form.tip_sf_details.path_personal:=Form.templateLocPref.path_personal
		
		Form.tLocTip.Show()
		Form.btnTempSettings.Enable(False)
End case 

Form.btnTempSettings.Draw()