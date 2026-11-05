extends Camera3D

@export var sensibilite:float
# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotation.x-=event.relative.y*(sensibilite/500)
		print(rotation.x)
		if rotation.x>1:
			rotation.x=1
			print("hey")
			return
		if rotation.x<-1:
			rotation.x=-1
			return
#		rotation.x-=event.relative.y*(sensibilite/500)
