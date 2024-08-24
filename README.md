# monitor-tcp-script
• It will show all user IPs and indicate whether they use Tor
• you need use root "sudo"
• then "sudo bash" works better
• Interpretation:
• A connection on port 22 (SSH) indicates that there is an active SSH session with 
 the machine 192.168.1.20.
• Connections on port 443 (HTTPS) and port 5900 (possibly VNC) indicate that this server is communicating with other machines that may be important.
Ports in LISTEN, such as 80 (HTTP) and 3306 (MySQL), indicate that these services are available and can be exploited.
• Further Exploration:
• Port 3306 (MySQL): Since the MySQL service is running and listening on the localhost interface, the red team could attempt to exploit this instance locally, perhaps by using a known vulnerability or brute-forcing credentials.
• VNC connection: A connection on port 5900 could indicate that the server is being accessed remotely via VNC. The red teamer could attempt to hijack this session, perform a man-in-the-middle attack, or exploit VNC configuration flaws.
Covering Tracks

• Action: After exploiting the system and potentially compromising other machines on the network, the Red Teamer clears the netstat command history and any related logs to avoid detection.
Command:
bash
• Command:
• history -c
• better understand the network situation of the compromised server, identify active services and connections, and plan the next steps of the attack, such as vulnerability exploitation and lateral movement. The command was essential to reveal critical details about the internal network, which could be used to further compromise the target company's infrastructure.
