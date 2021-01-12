extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var magnitude = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _integrate_forces(state):
	#state is a reference of PhysicsDirectBodyState
	if Input.is_action_pressed("ui_down"):
		add_force(Vector3.BACK*magnitude,global_transform.origin)
#		add_central_force(Vector3.BACK*magnitude)
	if Input.is_action_pressed("ui_up"):
		add_force(Vector3.FORWARD*magnitude,global_transform.origin)
#		add_central_force(Vector3.BACK*magnitude)
	if Input.is_action_pressed("ui_left"):
		add_force(Vector3.LEFT*magnitude,global_transform.origin)
#		add_central_force(Vector3.BACK*magnitude)
	if Input.is_action_pressed("ui_right"):
		add_force(Vector3.RIGHT*magnitude,global_transform.origin)
#		add_central_force(Vector3.BACK*magnitude)
	if Input.is_action_just_pressed("ui_accept"):
		apply_impulse(global_transform.origin,Vector3.UP*magnitude*.25)
		


func _on_Player_body_entered(body):
	print(body)
	pass # Replace with function body.
