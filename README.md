# Second Self — AI Agent Workstation

A solo prototype of a "Second Self" AI agent workstation. A web app where a top-center laptop "screen notch" drops down into an advanced AI control dashboard — chat on the left, live cloud desktop stream on the right.

## Architecture

```
second-self/
├── frontend/   → Next.js (App Router) on port 3000
└── backend/    → Node.js + Express on port 5000
```

## Tech Stack

| Layer | Tech |
|-------|------|
| Frontend | Next.js 16, TypeScript, Tailwind CSS |
| Backend | Node.js, Express, CORS, dotenv |
| Cloud Desktop | E2B Desktop Sandbox (`@e2b/desktop`) |
| Styling | Claude Code CLI aesthetic — terminal black, slate steel, cyber orange |

## Prerequisites

- Node.js 18+
- npm 9+
- An [E2B](https://e2b.dev) account and API key

## Setup

### 1. Clone / navigate to the project root

```bash
cd "second self"
```

### 2. Configure environment variables

```bash
# backend/.env is already set up. Edit if needed:
E2B_API_KEY=your_e2b_api_key_here
PORT=5000
```

### 3. Install dependencies

```bash
# Backend
cd backend && npm install

# Frontend
cd ../frontend && npm install
```

### 4. Run both servers

Open two terminals:

**Terminal 1 — Backend:**
```bash
cd backend
npx ts-node src/index.ts
```

**Terminal 2 — Frontend:**
```bash
cd frontend
npx next dev
```

The app is now live at `http://localhost:3000`.

## How It Works

1. Open `http://localhost:3000`
2. Click the **Second Self** pill notch at the top-center of the screen
3. The panel expands — a loading mascot animates while the E2B cloud desktop spins up
4. Once ready: chat interface on the left, live VNC desktop stream on the right
5. Click the backdrop or the notch again to collapse the panel

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/health` | Backend heartbeat |
| `POST` | `/api/sandbox/create` | Spin up E2B cloud desktop, returns `streamUrl` |
| `POST` | `/api/sandbox/close` | Kill the active sandbox |
| `POST` | `/api/chat` | Send a message, get AI response |

## Design System

| Token | Value | Usage |
|-------|-------|-------|
| Terminal Black | `#0D0D11` | Main background |
| Slate Steel | `#23232F` | Borders, panels |
| Cyber Orange | `#FF7A00` | Accents, glow, active states |

## Project Structure

```
second-self/
├── README.md
├── frontend/
│   ├── src/
│   │   ├── app/
│   │   │   ├── layout.tsx
│   │   │   ├── page.tsx
│   │   │   └── globals.css
│   │   ├── components/
│   │   │   ├── Notch.tsx           ← pill button + expand logic
│   │   │   ├── ControlPanel.tsx    ← 750×520 dashboard container
│   │   │   ├── ChatInterface.tsx   ← left pane, message list + input
│   │   │   ├── DesktopStream.tsx   ← right pane, VNC iframe
│   │   │   └── LoadingMascot.tsx   ← ASCII mascot with orange glow
│   │   ├── lib/api.ts              ← fetch helpers for backend
│   │   └── types/index.ts
│   ├── tailwind.config.ts
│   ├── next.config.js
│   └── package.json
│
└── backend/
    ├── src/
    │   ├── index.ts                ← Express server entry
    │   ├── routes/
    │   │   ├── sandbox.ts          ← /api/sandbox routes
    │   │   └── chat.ts             ← /api/chat route
    │   ├── services/
    │   │   ├── e2bService.ts       ← E2B Desktop SDK wrapper
    │   │   └── aiService.ts        ← AI message processing
    │   └── types/index.ts
    ├── .env
    ├── tsconfig.json
    └── package.json
```
