//%attributes = {"shared":true}

  // ----------------------------------------------------
  // Anwender (OS): Thomas Maul
  // Datum und Zeit: 26.02.09
  // ----------------------------------------------------
  // Methode: UserMode_Forms
  // Allows to specify the Form to be used for New/Double click
  // 
  // Parameter  
  // $1 = ptr to text array containing form names (based on table numbers)
  // ----------------------------------------------------
C_POINTER:C301($1)  // must be declared to get this working: (Type($1)=Is pointer) 
  // if not $1 would be of type "variant"

UserMode_Init 

If (Count parameters:C259=1)
	If (Type:C295($1)=Is pointer:K8:14)
		If (Type:C295($1->)=Text array:K8:16)
			  //%W-518.1
			COPY ARRAY:C226($1->;ar_UserMode_Forms)
			  //%W+518.1
			ARRAY TEXT:C222(ar_UserMode_Forms;Get last table number:C254)
		End if 
	End if 
End if 