import requests
import time

API_ENDPOINT = "https://api.meteochile.gob.cl/v1/estaciones"
INTERVALO_SEGUNDOS = 300  # 5 minutos estrictos

while True:
    print("[STREAMING] Capturando variables meteorológicas...")
    try:
        response = requests.get(API_ENDPOINT, timeout=10)
        if response.status_code == 200:
            print("[SUCCESS] Ingesta procesada a la capa rápida.")
    except Exception as e:
        print(f"[ERROR] Falla: {str(e)}")
    time.sleep(INTERVALO_SEGUNDOS)
