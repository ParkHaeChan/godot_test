extends Node3D

@export var mesh_instance : MeshInstance3D

func _ready():
	if mesh_instance and mesh_instance.mesh:
		var material = mesh_instance.material_override
		if material:
			# 머티리얼의 Albedo 색상을 변경합니다
			material.albedo_color = Color(1.0, 0.0, 0.0)  # 빨간색으로 설정
			mesh_instance.material_override = material
		else:
			print("StandardMaterial3D 타입의 머티리얼을 찾을 수 없습니다.")
	else:
		print("MeshInstance3D 노드가 ImmediateMesh를 사용하지 않습니다.")
