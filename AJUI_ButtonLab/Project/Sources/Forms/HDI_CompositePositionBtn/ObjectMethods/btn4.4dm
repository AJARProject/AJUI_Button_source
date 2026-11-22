
Case of 
	: (Form event code=On Load)
		
		Form.btn4:=New AJUI_Button 
		
		Lab_SetCompositeBtn (Form.btn4;"btn4")
		
		  //default
		Form.btn4.CompPicturePosition(AJUI_btn_default;"right")
		Form.btn4.CompPictSizeAllocation(AJUI_btn_default;30)
		
End case 

Form.btn4.Draw()