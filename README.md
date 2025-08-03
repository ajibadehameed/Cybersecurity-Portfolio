#  Cyber Lab

This repository documents hands-on cybersecurity labs and protocol analyses using virtualized environments. It includes protocol dissections (DNS, ICMP), VM installations, IP subneting, OS configurations, and packet inspections—all conducted within a local VirtualBox setup.

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

 **Screenshots**:  
![Windows 11 VM](<img width="3024" height="1964" alt="image" src="https://github.com/user-attachments/assets/d86ff313-9eb2-46ff-b4da-a6ef2828e3fd" />)  
![Ubuntu CLI](<img width="3024" height="1964" alt="image" src="https://github.com/user-attachments/assets/7e79e14d-d9f1-4eac-b9a9-828053aa0254" />)  
![Ubuntu GUI](images/ubuntu-gui.png)  
![CentOS Install](images/centos-install.png)

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

📸 ![DNS Capture](images/dns-protocol.png)

---

### 2. ICMP (Ping) Traffic

**Goal:** Understand ICMP echo requests/replies and TTL behavior.

**What I Did:**
- Ran `ping` and `traceroute` commands across internal and external hosts.
- Analyzed live ICMP packets in Wireshark.
- Measured latency, packet size, TTL values.

📸 ![ICMP Traffic](images/icmp-protocol.png)

---

## ⚙️ System Configuration

Detailed specs of host machine and VM settings.

- CPU Virtualization: Enabled
- RAM: 16 GB
- VirtualBox: [Insert Version]
- Disk Images: Dynamically allocated VDI

📸 ![System Config](images/system-config.png)

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

## 🧭 About

This project is part of my cybersecurity self-training portfolio. I also maintain separate repositories on [geospatial analysis](https://github.com/yourusername/geospatial-lab) and [oceanographic modeling](https://github.com/yourusername/ocean-modeling).

---
