extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in 10:
		var node = preload("res://box.tscn").instantiate()
		node.position.x += randf()-0.5
		node.position.y += randf()-0.5
		node.position.z += randf()-0.5
		node.transform.basis.x = Vector3(randf()-0.5, randf()-0.5, randf()-0.5)
		node.transform.basis.y = Vector3(randf()-0.5, randf()-0.5, randf()-0.5)
		node.transform.basis.z = Vector3(randf()-0.5, randf()-0.5, randf()-0.5)
				
		add_child(node)
