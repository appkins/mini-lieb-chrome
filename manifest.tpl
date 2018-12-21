{
  "version": "${version}",
  "manifest_version": 2,
  "name": ${theme_name},
  "icons": {
		"16": "images/icon16.png",
		"48": "images/icon48.png",
		"128": "images/icon128.png"
	},
  "theme": {
    "images" : {
      "theme_frame": "images/theme_frame_dk.png",
      "theme_frame_inactive": "images/theme_frame_inactive_dk.png",
      "theme_toolbar": "images/theme_toolbar_dk.png",
      "theme_tab_background": "images/theme_tab_background_dk.png",
      "theme_tab_background_inactive": "images/theme_tab_background_inactive_dk.png"
    },
    "colors" : {
      "ntp_link": ${white}, 
      "ntp_text": ${white}, 
      "ntp_section_link": ${white}, 
      "ntp_section_text": ${dark},
      "ntp_background": ${dark}, 
      "frame": ${dark}, 
      "toolbar": ${dark}, 
      "tab_text": ${white}, 
      "tab_background_text": ${dark}, 
      "bookmark_text": ${white}
    },
    "tints" : {
      "buttons" : [0.33, 0.5, 0.47],
      "frame_inactive": [0.50, 0.50, 0.50], 
      "frame_incognito_inactive": [0.50, 0.50, 0.50]
    },
    "properties" : {
     	"ntp_background_alignment" : "bottom",
	    "ntp_background_repeat": "no-repeat"
    }
  }
}