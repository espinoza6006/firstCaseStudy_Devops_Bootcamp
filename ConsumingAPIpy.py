# from urllib import responser
import requests

response = requests.get("http://localhost:5000/products/")
response.status_code
print(response.status_code)
print(response.headers["content-type"])
#print(response.content)
print(response.text) # Optenemos respuesta en html de la app.