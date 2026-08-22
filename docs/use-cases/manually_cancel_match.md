# Manually cancel match

## User Story

As a Discord server administrator,
I want to be able to manually cancel a match in the matchmaking system.

## Scenario: Administrator cancels a match

### **Given** 

- Discord server
- administrator or equivalent role
- existing match

### **When**

The administrator cancels the match in the matchmaking system

### **Then**

The match is canceled and if it was completed, players' rating is restored to the state before the match.
