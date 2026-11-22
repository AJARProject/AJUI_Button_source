//%attributes = {}

  // luminance ( Red ; Green ; Blue ) -> return
  //
  // $Red : (longint) red value
  // $Green : (longint) green value
  // $Blue : (longint) blue vale
  // $luminance : (longint) luminance
  //
  // Calc the luminance

#DECLARE($param1 : Text; $param2 : Text; $param3 : Text) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 30.10.19, 16:46:19
	  // ----------------------------------------------------
	  // Method: luminance
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

var $Red; $Green; $Blue : Integer

$Red:=Num($param1)
$Green:=Num($param2)
$Blue:=Num($param3)

$result:=(0.299*$Red)+(0.587*$Green)+(0.114*$Blue)
