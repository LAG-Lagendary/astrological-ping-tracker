🌐     signal_to_space - Network Latency Monitoring System

📝 Program Description: PING Monitor

PING Monitor is a highly efficient Python script designed for continuously measuring network latency and stability for specified targets (DNS servers, application servers, VPN nodes, etc.).

Key Features

Continuous Monitoring: Automatically sends PING requests at specified intervals.

Detailed Logging: Records the exact date, time, sequence number, status (Success/Error), and latency (in ms) in a separate log file for each target.

Cross-Platform: Uses standard ping commands via subprocess, supporting Linux, macOS, and Windows.

Corporate Application (Remote Employee Check)

This tool is ideal for HR, IT departments, and administrators managing distributed teams. It allows you to objectively assess the quality of an employee's internet connection, which impacts their productivity:

Connection Quality Check: Identifies issues with stability (packet loss) and speed (high latency).

Routing Issue Identification: Detects sudden spikes in latency (as with Comodo DNS in your previous analysis), which may indicate a suboptimal traffic route.

Remote Network Audit: Obtains objective data to help the employee troubleshoot issues with their ISP.

🧭 Employee Distance Calculation (Geographical Estimation)

While PING does not provide precise geographic coordinates, it provides vital information for estimating the approximate distance and connection quality.

Estimation Principle (RTT & Geolocation)

The program uses the round trip time (RTT) of a packet to estimate distance:

$$\text{Approximate distance (km)} \approx \frac{\text{RTT (seconds)}}{2} \times 200,000 \text{ km/s}$$

200,000 km/s is the average signal propagation speed in fiber optics (approximately 2/3 the speed of light).

Dividing by 2 is necessary because RTT includes the round trip path.

Application example:

An employee pings a known server in New York City (NY).

If PING = 20 ms $\rightarrow$ , the employee is likely in the same city or very close.

If PING = 120 ms $\rightarrow$ The employee is likely located significantly away (for example, on the other coast or in another country), and this is normal for this route.

🚀 Starting Monitoring

To start monitoring in the background, use the provided start_monitoring.sh script. It will run ping_monitor.py for each target in parallel.

# To start all targets in the background:
bash start_monitoring.sh

# To stop all monitoring processes:
# (Find the PID of the Python3 or ping process using 'ps aux | grep ping_monitor.py' and use 'kill <PID>')
