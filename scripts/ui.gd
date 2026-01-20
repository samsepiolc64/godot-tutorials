extends CanvasLayer

var coins :int = 0 

@onready var score: Label = $Score


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Events.on_coin_collect.connect(coin_collected)
	score.text = "Coins: " + str(coins)

func coin_collected():
	coins += 1
	score.text = "Coins: " + str(coins)
	
