extends RigidBody

func _ready():
	$ImpactSound.pitch_scale = rand_range(0.95, 1.05)

func _on_LifetimeTimer_timeout():
	queue_free()

func _on_AudioTimer_timeout():
	$ImpactSound.play()
