# Remove player from matchmaking system

## User Story

As a Discord server administrator,
I want to be able to remove player from the matchmaking system.

## Scenario: Administrator removes a player

### **Given** 

- Discord server
- administrator or equivalent role
- existing player name

### **When**

The administrator removes the player from the matchmaking system

### **Then**

The player is removed from the system

## Scenario: Administrator attempts to remove a non-existing player

### **Given**

- Discord server
- administrator or equivalent role
- non-existing player name

### **When**

The administrator attempts to remove the non-existing player from the matchmaking system

### **Then**

The request is rejected with message indicating that the player does not exist in the system