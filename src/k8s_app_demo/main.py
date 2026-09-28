from fastapi import FastAPI

app = FastAPI()

@app.get("/Health", tags=["Health"])
async def health_check() -> dict[str, str]:
    return {"status": "ok"}

@app.get("/HelloWorld", tags=["HelloWorld"])
async def hello_world() -> str:
    return ("Hello World")



    