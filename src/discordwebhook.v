module discordwebhook

import json
import net.http

pub fn send_message(url string, message Message) !string {
	// Encode the message data to JSON format
	mut data := json.encode(message)
	// Create an HTTP request with the specified Webhook URL, JSON data, and POST method.
	mut request := http.Request{
		url: url
		data: data
		method: .post
	}
	// Add a header to specify that the content type is JSON.
	request.add_header(.content_type, 'application/json')

	// Send the HTTP request and get the response.
	response := request.do()!

	// Check the HTTP response status code for errors.
	if response.status_code != 200 && response.status_code == 204 {
		// Return the HTTP response on success.
		return response.body
	} else {
		return 'Error sending message. Status code: ${response.status_code}'
	}
}
