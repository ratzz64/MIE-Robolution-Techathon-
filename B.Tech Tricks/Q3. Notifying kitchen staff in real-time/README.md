# README for Q3 - Notifying kitchen stuff in real time

## Bistro 92 Smart Ordering System - Real-Time Kitchen Notifications

This solution describes how to implement a real-time notification feature for kitchen staff when a new customer order is placed, ensuring quick response and improved service speed.

---

## Technology Stack

### Backend Server: 
 Node.js with Express.js can be used for this
### Real-Time Communication:
 WebSocket using Socket.IO
### Frontend Dashboard: 
HTML + JavaScript
### Database: 
MySQL (Popsql app as editor)
### Hosting: 
Heroku for hosting

---

## System Working Principle

1. **Order Placement**:
   A customer places an order using the table smart pad (ESP32 device).After that the smart pad sends an HTTP POST request to the Node.js server with order details.

2. **Order Processing**:
   The order is then saved to the database.After saving, the server *emits a WebSocket event* (`newOrder`) to all connected kitchen dashboard clients.

3. **Kitchen Notification**:
   The kitchen dashboard is connected via WebSocket, *instantly receives the new order* without needing to refresh.The kitchen staff can view the new order immediately on their screen.

---

