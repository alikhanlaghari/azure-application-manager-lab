# Phase 2 – Networking & Security

## Overview
This phase demonstrates how to design secure network communication in Azure
using Virtual Networks, subnets, Network Security Groups (NSGs), and VNet peering.

The focus is on least-privilege access and private connectivity without exposing
resources to the public internet.

---

## Architecture
- One application VNet (`vnet-app`) with separated tiers
  - `web-subnet` (frontend)
  - `app-subnet` (backend)
- One shared VNet (`vnet-shared`)
- Private VNet-to-VNet peering between the two networks

---

## What was built
- Azure Virtual Network with multiple subnets
- Network Security Groups applied at subnet level
- Inbound rules allowing only required traffic
- Backend subnet accessible only from frontend subnet
- Bidirectional VNet peering over Azure backbone

---

## Why this was built
To demonstrate secure, scalable, and maintainable network design
aligned with real enterprise and AZ-104 best practices.

---

## Key learnings
- NSGs enforce least-privilege traffic control
- Default deny rules improve security posture
- Subnet-level NSGs simplify policy enforcement
- VNet peering enables private, low-latency connectivity
- Azure Portal may auto-create reverse peering, so verification is essential

---

## Business value
- Reduced attack surface
- Clear separation of application tiers
- Secure internal communication
- Foundation for hub-and-spoke architecture

