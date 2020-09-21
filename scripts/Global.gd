extends Node

# Information
var information_title = "DISCRIMINACION AUDITIVA"
var information_description = "[center]EL JUEGO DE [wave][color=#ffd948]\"DISCRIMINACION AUDITIVA\"[/color][/wave] ESTIMULA ([rainbow freq=0.1 sat=0.5 val=1]LA ATENCION AUDITIVA[/rainbow] Y [rainbow freq=0.1 sat=0.5 val=1]DISCRIMANACION AUDITIVA[/rainbow]) CON EL FIN DE MEJORAR LA COMPRENSION DE LOS SONIDOS DEL LENGUAJE. TE INVITAMOS A PROBAR TU CAPACIDAD DE DISCRIMINAR, IDENTIFICAR E INTERPRETAR LOS MENSAJES SONOROS.[/center]\n\n\n\n\n[center][img=150x180]res://assets/logos/colegio.png[/img][/center]"
var information_redirect = "TitleScreen"
# Nivels
var nivels_level = 1
var nivels_score = 0

# Information
func update_title(title):
	self.information_title = str(title)

func update_description(description):
	self.information_description = str(description)

func update_redirect(redirect):
	self.information_redirect = str(redirect)

# Nivels
func update_level(level):
	self.nivels_level = level

func update_score(score):
	self.nivels_score = score
