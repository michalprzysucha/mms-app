# MMS - Matchmaking System

## Problem

Players need a quick and easy way to find an opponent and create a match.

## Goal

The system allows players to join a queue and find an opponent with similar rating for a match.

## Users

The system is designed mainly for online gaming players, but it can be used by anyone who wants to set up competitive
matches.

## High-level description

The system allows players to join a queue and find opponent with similar rating for a 1v1 match. Player search lasts as
long as the player is in the queue. When opponent is found the system creates dedicated room on a Discord server for
players to arrange a match. After match is played and the result is submitted the room is deleted and player rating
is updated accordingly. If the match is not played within given deadline both players receive rating penalty and the
room is deleted.

## Main use cases

- Player can join the queue to look for an opponent.
- Player can leave the queue at any moment.
- System creates dedicated room on a Discord server when opponent is found.
- Players can submit match results. When the result is submitted the room on Discord server is automatically deleted
  and players' rating is updated.
- System automatically deletes the room after deadline and updates players ratings accordingly.
- Players can check their rating on a Discord server.
- Administrator can create custom match rooms.
- Administrator can delete match rooms.
- Administrator can create betting polls on a Discord server.

## Architecture

To be decided in the future.

## Technology

- Java
- Spring Boot
- Spock
- PostgreSQL