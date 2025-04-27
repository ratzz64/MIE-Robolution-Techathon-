# README for Q3 - Notifying kitchen stuff in real time

## 'Bistro 92'

Here is a solution for notifying the ordered items to the kitchen stuffs in real time

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
   The order is then saved to the database.After saving, the server emits a websocket event (`newOrder`) to all connected kitchen dashboard clients.

3. **Kitchen Notification**:
   The kitchen server is connected to the Websocket.So the the stuffs are notified quickly without needing to refresh.

---

