#  Cyber Lab

This repository documents hands-on cybersecurity labs and protocol analyses using virtualized environments. It includes protocol dissections (DNS, ICMP), VM installations, IP subnetting, OS configurations, packet inspections, Active Directory, SIEM, Patch Management, and Cryptography — all conducted within a local VirtualBox setup.

---

##  Lab Environment

- **Host Machine:** Windows 11, Macbook
- **Virtualization Tool:** VirtualBox
- **Virtual Machines Used:**  
  - Ubuntu (CLI and GUI)  
  - CentOS  
  - Windows 11  
- **Tools:**  
  - Wireshark  
  - Terminal utilities (`ping`, `dig`, `nslookup`, `traceroute`)  
  - System configuration tools  
  - Packet analysis

---

##  Virtual Machine Installations

| OS         | Type     | Status | Notes                          |
|------------|----------|--------|---------------------------------|
| Windows 11 | Desktop  | ✅     | Fully updated, Virtualized     |
| Ubuntu     | CLI      | ✅     | Used for protocol simulations  |
| Ubuntu     | GUI      | ✅     | For desktop testing            |
| CentOS     | Server   | ✅     | Used for service configuration |

 
---
# Cybersecurity Network Analysis Task: IP Addressing & Subnetting

This repository documents my lab work on analyzing network addressing schemes, creating subnet plans, and validating host configurations for secure and efficient network communication.

---

##  Objective

- Understand and apply IP addressing concepts (IPv4 & IPv6).
- Perform subnetting to segment networks according to design requirements.
- Verify network configurations through analysis and testing.
- Demonstrate calculations for usable hosts, network addresses, and broadcast addresses.
- Apply addressing strategies for cybersecurity lab environments.

---

##  Tools & Environment

- **Operating Systems:** Windows 11, Ubuntu (CLI & GUI)
- **Networking Tools:** `ipconfig`, `ifconfig`, `ping`, `traceroute`, `netstat`
- **Diagramming:** draw.io / Lucidchart for network topology
- **Packet Analysis:** Wireshark
- **Virtualization:** VirtualBox (for isolated lab networks)

---

##  Task Steps

### 1. IP Addressing Analysis
- Identified current IP configuration using:
  ```powershell
  ipconfig /all     # Windows
  ifconfig          # Linux

### 2. Subnetting Plan
Given a base network: 192.168.10.0/24

Required: 5 subnets with at least 30 hosts each.

Calculation:

Host requirement: 30 → Need 5 bits for hosts (2^5 - 2 = 30 usable)

New mask: /27 (255.255.255.224)

Number of subnets: 2^(borrowed bits) = 8

Resulting subnets:

Subnet #	Network Address	Usable Range	Broadcast Address
1	192.168.10.0	192.168.10.1–192.168.10.30	192.168.10.31
2	192.168.10.32	192.168.10.33–192.168.10.62	192.168.10.63
3	192.168.10.64	192.168.10.65–192.168.10.94	192.168.10.95
4	192.168.10.96	192.168.10.97–192.168.10.126	192.168.10.127
5	192.168.10.128	192.168.10.129–192.168.10.158	192.168.10.159

3. Address Assignment
Assigned first usable IP in each subnet to gateway/router.

Allocated static IPs for servers, dynamic range for clients.

Ensured no overlap and documented assignments in an IP Address Table.

4. Verification & Testing
Used ping and traceroute to confirm connectivity.

Captured ARP and ICMP traffic in Wireshark to observe network behavior.

Verified subnet isolation by attempting cross-subnet communication.


---

## 🧪 Protocol Labs

### 1. DNS Resolution

**Goal:** Analyze how DNS converts human-readable domains to IP addresses.

**What I Did:**
- Used tools like `dig`, `nslookup`, and `host` on Ubuntu.
- Captured traffic using Wireshark.
- Examined DNS Query and Response packets.

**Key Observations:**
- Identified recursive and iterative queries.
- Tracked full domain resolution path.



---

### 2. ICMP (Ping) Traffic

**Goal:** Understand ICMP echo requests/replies and TTL behavior.

**What I Did:**
- Ran `ping` and `traceroute` commands across internal and external hosts.
- Analyzed live ICMP packets in Wireshark.
- Measured latency, packet size, TTL values.



---

## ⚙️ System Configuration

Detailed specs of host machine and VM settings.

- CPU Virtualization: Enabled
- RAM: 16 GB
- VirtualBox: [Insert Version]
- Disk Images: Dynamically allocated VDI



---

## ✅ Skills Practiced

- Virtual Machine provisioning and troubleshooting  
- DNS and ICMP protocol inspection  
- Basic network forensics  
- OS installation and configuration  
- Wireshark analysis fundamentals  
- CLI tool use across multiple distros

---

## 📌 Next Steps

- Add firewall rule testing and logging  
- Configure DNS caching server and observe TTL expiry  
- Simulate MITM attacks in isolated network  
- Document and compare ICMP behavior under blocked ports/firewalls  
- Automate VM creation via Vagrant or Ansible

---

# Active Directory Homelab

End-to-end Windows AD lab: two domain controllers, DNS, domain joins, OU/GPO management, replication health, Windows Admin Center, and basic network validation (ICMP, port checks). All steps are reproducible and evidenced with screenshots and command outputs.

---

## Lab Snapshot

- **Forest/domain:** `cyberlearnssh.local`
- **Functional level:** 2016
- **Controllers:** `FRA02-WS-DC01` (Primary), `LAG02-WS-DC02` (Secondary)
- **Services:** AD DS, DNS, DFSR (SYSVOL), GPMC
- **Mgmt:** Windows Admin Center for servers and workstations

---
## What’s in this repo

- **Connectivity checks**
  - Continuous ping by IP (batch)
  - Quick PowerShell port tests (RDP 3389, DNS 53)
- **Active Directory**
  - Promote DC01, set functional level 2016
  - Add DC02 and verify replication
  - Create users, join servers/workstations
  - Organize OUs and link GPOs
- **DNS**
  - Fix gateway, validate forward and reverse lookups
  - `nslookup` sanity checks
- **Health**
  - `repadmin /replsummary`
  - `dcdiag` on both DCs
- **Management**
  - Windows Admin Center views
  - Shared folder permissions evidence

---

## Environment & prerequisites

- Hypervisor or lab network (VirtualBox/VMware/Hyper-V)
- Windows Server for DCs (2016+ recommended)
- At least one Windows client, one server member
- Local admin on all VMs
- Internet optional (used for updates/WAC access)

---

---

## 🧭 About

This project is part of my cybersecurity self-training portfolio. I also maintain separate repositories on [geospatial analysis](https://github.com/yourusername/geospatial-lab) and [oceanographic modeling](https://github.com/yourusername/ocean-modeling).

---
