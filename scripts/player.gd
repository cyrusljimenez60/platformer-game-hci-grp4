extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
var on_ladder:bool = false

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor() and !on_ladder:
		velocity += get_gravity() * delta
	# Check for ladder climb
	if on_ladder:
		if Input.is_action_pressed("ui_down"):
			velocity.y = SPEED*delta*10
		elif Input.is_action_pressed("ui_up"):
			velocity.y = -SPEED*delta*10
		else:
			velocity.y = 0
			
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction: -1, 0, 1
	var direction := Input.get_axis("move_left", "move_right")
	
	# Flip the Sprite
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
		
	# Play animations
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	# Apply movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
func _on_ladder_body_entered(body: Node2D) -> void:
	if "Player" in body.name:
		on_ladder = true
		
func _on_ladder_body_exited(body: Node2D) -> void:
	if "Player" in body.name:
		on_ladder = false
