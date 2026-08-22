# Join matchmaking queue

## User Story

As a player,
I want to join the matchmaking queue on Discord server,
so that I can find an opponent.

## Scenario: Player joins the queue

### **Given**  

 - Discord server  
 - The player is not in the queue  
 - The player has appropriate role on a server

### **When**  

The player joins the queue

### **Then**  

The player is added to the queue

## Scenario: Player is already in the queue

### **Given**  

The player is already in the queue

### **When**

The player tries to join the queue again

### **Then**  

The system rejects the request