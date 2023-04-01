extends Label

const TIPS = [
	"Pro tip: Purchase the duel pass to play as Grimora!",
	"Downloading store items...",
	"Pro tip: Everybody else has skins, you're missing out!",
	"Uploading browser history...",
	"Pro tip: Buy sapphire potions from the Trader to open loot boxes faster!",
	"Generating fake players...",
	"Pro tip: A fool and his money are easily parted",
	"Installing invasive anti-cheat...",
	"Pro tip: The only cure for a skill issue is a shiny new skin from the STORE!",
	"Personalizing skinner box...",
	"Pro tip: Summon new challengers to get more meat!",
	"Scrapping content from IMF 1...",
	"Pro tip: If you don't agree with your data being harvested, it's too late!",
	"Calculating best blackmail strategy...",
	"Pro tip: Buy packs for a competitive advantage!",
	"Generating impossible daily challenges..."
]

var inq = false

func new_tip() -> void:
	if not inq:
		text = TIPS.pick_random()
		$ProgressBar.value += randi_range(0, 15)
		
		if $ProgressBar.value >= 100:
	#		get_node("..").visible = false
	#		get_node("../Stoat/AnimationPlayer").stop()
	#		get_node("../../Queue").show()
			$ProgressBar.hide()
			text = "Waiting in queue...\nPosition 401/400"
