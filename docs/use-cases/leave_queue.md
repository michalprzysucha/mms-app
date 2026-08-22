# Leave matchmaking queue

## User Story

As a player,
I want to leave matchmaking queue.

## Scenario: Player is queued and leaves

### **Given**  

 - Discord server  
 - The player is in the queue  
 - The player has appropriate role on a server

### **When**  

The player leaves the queue

### **Then**  

The player is removed from the queue

## Scenario: Player is not in the queue

### **Given**  

The player is not in the queue

### **When**

The player tries to leave the queue

### **Then**  

The system rejects the request