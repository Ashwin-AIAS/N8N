# 🚀 N8N Webhook Forwarder Project

A simple mini project built with [n8n](https://n8n.io) — demonstrating how to receive a webhook and forward it to another API.

This project is designed as a learning exercise for automating workflows using **n8n**, version-controlling workflows in **Git**, and running everything locally without Docker.

---

## 🧠 Overview

This workflow does three things:

1. **Receives a Webhook** (`POST /webhook/my-event`)
2. **Forwards the request** to a test API — [jsonplaceholder.typicode.com/posts](https://jsonplaceholder.typicode.com/posts)
3. **Returns a response** (`Received`) to confirm success

Workflow file: [`workflows/webhook-forwarder.json`](./workflows/webhook-forwarder.json)

---

## ⚙️ Project Structure

webhook-forwarder/
├── docker/ # (optional) Docker Compose file for n8n
├── scripts/ # helper scripts
│ ├── test.ps1 # PowerShell test script
│ └── test.sh # Bash test script
├── workflows/
│ └── webhook-forwarder.json # Main n8n workflow
├── .env.example # Example env vars
├── .gitignore
└── README.md

