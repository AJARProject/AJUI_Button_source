//%attributes = {}
  // FAB_enableObject ( $enable  )
  //
  // $enable : (boolean) enable form objects
  //
  // This method enable/disable the form objects(HDI_FAB). Enable when the secondary button are hidden.

#DECLARE($param1 : Boolean)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 18.12.19, 10:33:39
	  // ----------------------------------------------------
	  // Method: FAB_enableObject
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $enable : Boolean

$enable:=$param1

  //main positions
OBJECT SET ENABLED(*;"top";$enable)
OBJECT SET ENABLED(*;"top-left";$enable)
OBJECT SET ENABLED(*;"top-right";$enable)
OBJECT SET ENABLED(*;"center";$enable)
OBJECT SET ENABLED(*;"left";$enable)
OBJECT SET ENABLED(*;"right";$enable)
OBJECT SET ENABLED(*;"bottom-left";$enable)
OBJECT SET ENABLED(*;"bottom-right";$enable)
OBJECT SET ENABLED(*;"bottom";$enable)

  //FAB options
OBJECT SET ENABLED(*;"btns_fab";$enable)
OBJECT SET ENABLED(*;"startAngle";$enable)
OBJECT SET ENABLED(*;"angleToTravel";$enable)
OBJECT SET ENABLED(*;"radius";$enable)
OBJECT SET ENABLED(*;"clockwise";$enable)