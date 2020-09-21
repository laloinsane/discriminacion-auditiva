extends Control

var audio = AudioStreamPlayer.new()
var ogg = AudioStreamOGGVorbis.new()
var audiobtn = AudioStreamPlayer.new()
var oggbtn = AudioStreamOGGVorbis.new()

func _ready():
	# Transition
	$Transition.fadeOut()
	yield($Transition/AnimationPlayer, "animation_finished")
	# Childs
	add_child(audio)
	add_child(audiobtn)
	ogg = load("res://assets/sounds/title.ogg")
	oggbtn = load("res://assets/sounds/click.ogg")
	ogg.loop = true
	oggbtn.loop = false
	audio.stream = ogg
	audiobtn.stream = oggbtn
	audio.play()

func _on_Nivel2_pressed():
	audiobtn.play()
	Global.update_title("INTENSIDAD")
	Global.update_description("[fill]EL JUEGO CONSTA DE DOS ETAPAS. EN LAS CUALES ESCUCHARAS DOS SONIDOS, DEBES COLOCAR MUCHA ATENCION E IDENTIFICAR SI LOS SONIDOS TIENEN [color=#ffd948]IGUAL[/color] ([img=25x25]res://assets/icons/igual.png[/img]) O [color=#ffd948]DIFERENTE[/color] ([img=25x25]res://assets/icons/diffss.png[/img]) INTENSIDAD. SI PRESENTAS UN PUNTAJE [rainbow freq=0.1 sat=0.5 val=1]IGUAL O SUPERIOR[/rainbow] A [color=#ffd948]SIETE[/color] EN CADA ETAPA PASAS A LA SIGUIENTE, SINO LO PUEDES VOLVER A INTERNTAR LAS VECES QUE QUIERAS.[/fill]")
	Global.update_redirect("Nivel4")
	$Transition.fadeIn("Information")

func _on_Nivel3_pressed():
	audiobtn.play()
	Global.update_title("DURACION")
	Global.update_description("[fill]EL JUEGO CONSTA DE DOS ETAPAS. EN LAS CUALES ESCUCHARAS DOS SONIDOS, DEBES COLOCAR MUCHA ATENCION E IDENTIFICAR SI LOS SONIDOS TIENEN [color=#ffd948]IGUAL[/color] ([img=25x25]res://assets/icons/igual.png[/img]) O [color=#ffd948]DIFERENTE[/color] ([img=25x25]res://assets/icons/diffss.png[/img]) DURACION. SI PRESENTAS UN PUNTAJE [rainbow freq=0.1 sat=0.5 val=1]IGUAL O SUPERIOR[/rainbow] A [color=#ffd948]SIETE[/color] EN CADA ETAPA PASAS A LA SIGUIENTE, SINO LO PUEDES VOLVER A INTERNTAR LAS VECES QUE QUIERAS.[/fill]")
	Global.update_redirect("Nivel3")
	$Transition.fadeIn("Information")

func _on_Credits_pressed():
	audiobtn.play()
	$Transition.fadeIn("Credits")
