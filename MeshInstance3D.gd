extends MeshInstance3D

var rotate_speed = 360

@export var mesh_instance : MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready():
	var mat = mesh_instance.mesh.surface_get_material(0)
	mat.albedo_color = Color(1.0, 0.0, 0.0, 1.0)
	
	mesh_instance.mesh.surface_set_material(0, mat)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation.y += deg_to_rad(rotate_speed) * delta
