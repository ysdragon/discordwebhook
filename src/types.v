module discordwebhook

import time

pub struct Message {
pub:
	username         ?string
	avatar_url       ?string
	content          ?string
	embeds           ?[]Embed
	allowed_mentions ?Allowed_mentions
}

pub struct Embed {
pub:
	title       ?string
	url         ?string
	description ?string
	color       ?string
	author      ?Author
	fields      ?[]Field
	thumbnail   ?Thumbnail
	image       ?Image
	footer      ?Footer
	timestamp   time.Time
}

pub struct Author {
pub:
	name     ?string
	url      ?string
	icon_url ?string
}

pub struct Field {
pub:
	name   ?string
	value  ?string
	inline ?bool
}

pub struct Thumbnail {
pub:
	url ?string
}

pub struct Image {
pub:
	url ?string
}

pub struct Footer {
pub:
	text     ?string
	icon_url ?string
}

pub struct Allowed_mentions {
pub:
	parse ?[]string
	users ?[]string
	roles ?[]string
}
