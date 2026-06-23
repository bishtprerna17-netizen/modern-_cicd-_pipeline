from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {
        "status": "Success",
        "message": "🔥 Boom! Real-world Python AI Era Backend is LIVE!",
        "architecture": "CI/CD Automated via GitHub Actions"
    }

@app.get("/health")
def health():
    return {"status": "UP and Running"}
