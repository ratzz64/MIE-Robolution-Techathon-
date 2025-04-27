# README for Q4 - Cloud-Based System Architecture

## Bistro 92 Smart Ordering System - Cloud Architecture Design

This is a solution for real-time cloud based architecture for smart ordering system ensuring low latency and smooth communication

---

## Cloud System Components

### 1.Smart Pads: 
ESP32 devices on each table for customer ordering.
### 2.API Gateway: 
AWS API Gateway to receive and manage incoming HTTP requests from smart pads.
### 3.Serverless Compute: 
AWS Lambda functions to process orders without managing servers.
### 4.Database: 
  - AWS DynamoDB (NoSQL) for fast, flexible, and scalable data storage.
  - Or AWS RDS (MySQL) for structured relational data.
### 5.Real-Time Communication: 
AWS IoT Core or WebSocket APIs to instantly send order updates to the kitchen dashboard.
### 6.Frontend Hosting: 
  - AWS S3 + CloudFront for hosting the kitchen dashboard.
  - Or Firebase Hosting as an alternative.
### 7.Monitoring & Alerts: 
AWS CloudWatch for monitoring serverless functions and system health.

---

## System Workflow

### 1.Order Submission:
   - Customer places an order on the ESP32 smart pad.
   - Order data is sent via HTTP POST to the **API Gateway**.

### 2.Order Processing:
   - The API Gateway forwards the request to a **Lambda function**.
   - The Lambda function processes and stores the order in the **DynamoDB** or **RDS** database.

### 3.Real-Time Notification:
   - Once the order is stored, the Lambda function triggers a **WebSocket** event or publishes a message via **IoT Core**.
   - The **Kitchen Dashboard** listens for these real-time updates and displays the new order immediately.

### 4.Data Storage and Access:
   - All order details, statuses, and payment information are stored securely in the cloud database.
   - The system can scale automatically based on traffic without any manual intervention.

