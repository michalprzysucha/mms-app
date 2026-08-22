# Add player to matchmaking system

## User Story

As a Discord server administrator,
I want to be able to add player to the matchmaking system.

## Scenario: Administrator adds a non-existing player

### **Given** 

- Discord server
- administrator or equivalent role
- player name

### **When**

The administrator adds the player to the matchmaking system

### **Then**

The player is added to the system

## Scenario: Administrator adds an existing player

### **Given**

- Discord server
- administrator or equivalent role
- existing player name

### **When**

The administrator adds the existing player to the matchmaking system

### **Then**

The request is rejected