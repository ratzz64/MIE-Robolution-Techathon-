# README for Q5 - Real-Time Dashboard

## Real-Time Dashboard

This solution creates a real-time dashboard for the Bistro 92 team, allowing them to keep an eye on pending orders, average fulfillment times, and total sales. This ensures smooth operations and enhances customer service.

---

## Dashboard Features

- **Pending Orders**: Get a clear view of all customer orders that are still in progress or waiting to be served.
- **Average Fulfillment Time**: Automatically calculate and showcase the average time it takes to complete orders.
- **Total Sales**: Display the total value of all successfully completed and paid orders.

---

## Technology Stack

- **Frontend**: React.js
- **Real-Time Data Communication**: WebSocket (Socket.IO)
- **Graphs and Charts**: Chart.js or Recharts
- **Backend**: Node.js server that manages WebSocket connections
- **Database**: MySQL or AWS DynamoDB for storing and retrieving orders and payments
- **Hosting**: Firebase Hosting, AWS S3, or Vercel for hosting the frontend

---

## Dashboard Workflow

1. **Data Fetching**:
- When the dashboard first loads, it fetches current orders, average fulfillment times, and total sales from the backend.

2. **Real-Time Updates**:
- As new orders come in or are completed, the backend **sends WebSocket events** (`orderPlaced`, `orderCompleted`).
- The frontend listens for these events and updates the dashboard automatically, no refreshing needed.

3. **Visualization**:
- **Pending Orders**: Shown in a live-updating table.
- **Average Fulfillment Time**: Presented as a straightforward numerical metric or a time-based graph.
- **Total Sales**: Displayed as a live-updating total or a graph showing daily/weekly sales.

---

## 📈 Example Dashboard Layout

| Section             | Type         | Details                                       |
|---------------------|--------------|-----------------------------------------------|
| Pending Orders       | Table/List   | Order ID, Table Number, Time Placed           |
| Average Fulfillment Time | Metric/Card | Time in minutes                              |
| Total Sales           | Graph/Counter | Amount collected (daily/weekly)              |

---






