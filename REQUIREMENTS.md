# Requirements

## System Requirements

- **Node.js** >= 18.0.0
- **npm** >= 9.0.0
- **OS**: Windows, macOS, or Linux

## E2B Account

- Sign up at https://e2b.dev
- Obtain an API key from the E2B dashboard
- Add it to `backend/.env` as `E2B_API_KEY`

## Backend Dependencies (`backend/package.json`)

| Package | Version | Purpose |
|---------|---------|---------|
| `@e2b/desktop` | ^1.9.2 | E2B cloud desktop sandbox + VNC stream |
| `express` | ^4.18.2 | HTTP server |
| `cors` | ^2.8.5 | Cross-origin requests from frontend |
| `dotenv` | ^16.3.1 | Environment variable loading |
| `ts-node` | ^10.9.2 | Run TypeScript directly (dev) |
| `typescript` | ^5.3.3 | TypeScript compiler |
| `@types/express` | ^4.17.21 | Express type definitions |
| `@types/cors` | ^2.8.17 | CORS type definitions |
| `@types/node` | ^20.10.0 | Node.js type definitions |

## Frontend Dependencies (`frontend/package.json`)

| Package | Version | Purpose |
|---------|---------|---------|
| `next` | ^16.x | App Router, SSR, dev server |
| `react` | ^18.2.0 | UI rendering |
| `react-dom` | ^18.2.0 | DOM mounting |
| `tailwindcss` | ^3.3.6 | Utility-first CSS |
| `typescript` | ^5.3.3 | TypeScript compiler |
| `autoprefixer` | ^10.4.16 | CSS vendor prefixes |
| `postcss` | ^8.4.32 | CSS processing pipeline |
| `@types/react` | ^18.2.42 | React type definitions |
| `@types/react-dom` | ^18.2.17 | ReactDOM type definitions |
| `@types/node` | ^20.10.0 | Node.js type definitions |

## Network Requirements

| Port | Service |
|------|---------|
| 3000 | Next.js frontend |
| 5000 | Express backend |

Both ports must be free before starting the servers.
