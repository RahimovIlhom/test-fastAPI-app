import uvloop
from fastapi import FastAPI
from fastapi.middleware.trustedhost import TrustedHostMiddleware
from config import ALLOWED_HOSTS

uvloop.install()  # UVloop ni faollashtirish

app = FastAPI()

app.add_middleware(
    TrustedHostMiddleware, allowed_hosts=ALLOWED_HOSTS
)

@app.get("/")
async def main():
    return {"message": "Hello World"}