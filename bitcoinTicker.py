import requests

def scrape():
	response = requests.get(URL+COIN)
	response_json = response.json()
	return float (response_json[0]['price_usd'])

URL = 'https://api.coinmarketcap.com/v1/ticker/'
COIN = 'bitcoin'
last_price = None

while True:
	latest_price = scrape()
	if latest_price != last_price:
		print ("Ultimo precio: ", latest_price)
		last_price = latest_price
