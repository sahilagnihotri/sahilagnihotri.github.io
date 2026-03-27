---
title: SleepScope
author: Sahil Agnihotri
draft: false
date: '2026-01-17'
layout: single_withfooter
permalink: /privacy-policy-sleepscope/
---
# SleepScope
**SleepScope — CPAP Therapy Tracker**
*Last updated: March 27, 2026*

I built SleepScope to view my own CPAP therapy data on my phone. It reads data from a ResMed AirSense machine through an ezShare WiFi SD card (a $15 card that goes in the  machine's SD slot and creates a local WiFi hotspot).

If you don't have the hardware to test: you can use "Import from Files" to load sample data, or enable Apple Health to see the HealthKit integration.

# Privacy Policy

Sahil Agnihotri ("we", "us", "our") operates the SleepScope mobile application (the "App"). This Privacy Policy explains how we collect, use, store, and protect your information when you use the App.

SleepScope is designed with a privacy-first architecture. Your health data stays on your device. We do not operate cloud servers, and we do not collect, transmit, or sell your personal or health data.

---

## 1. Data We Collect

### CPAP Therapy Data

The App reads CPAP therapy data from your ResMed machine's SD card, including:

- Apnea-Hypopnea Index (AHI) and event breakdowns (obstructive, central, hypopnea)
- Therapy pressure settings and statistics (median, 95th percentile, max)
- Mask leak rates
- Detailed waveform data (flow rate, pressure, SpO2)
- Session timestamps, duration, and usage hours
- Machine serial number and device settings

### Apple Health Data

With your explicit permission, the App reads the following data from Apple Health (read-only access):

- Sleep stages (awake, REM, core, deep)
- Heart rate and heart rate variability (HRV)
- Blood oxygen saturation (SpO2)
- Respiratory rate

The App does **not** write data to Apple Health unless you explicitly enable this option.

### Snoring Detection (Optional)

If you enable the optional snoring detection feature, the App uses your device microphone to detect snoring sounds during sleep. All audio processing occurs entirely on-device using Apple's SoundAnalysis framework. **No raw audio is recorded or stored.** Only derived metrics (snoring event timestamps and duration) are saved.

### Data We Do Not Collect

- No names, email addresses, or account information (the App has no accounts)
- No location data
- No device identifiers for tracking purposes
- No usage analytics or telemetry
- No crash reports containing health data

---

## 2. How Data Is Collected

### ezShare WiFi SD Card

CPAP therapy data is transferred from your machine's SD card via an ezShare WiFi SD card adapter. This connection occurs over a **local WiFi network only** — data travels directly from the SD card to your iPhone. No data passes through any external server or internet endpoint during this transfer.

### Apple Health API

Health data is accessed through Apple's HealthKit API with your explicit, granular consent. You choose exactly which data types to share, and you can revoke access at any time via iOS Settings > Health > SleepScope.

### Microphone Access (Optional)

Microphone access is requested only if you enable the snoring detection feature. You can deny or revoke this permission at any time via iOS Settings.

---

## 3. Where Data Is Stored

All data is stored **on your device only**, using SwiftData (backed by Core Data and SQLite).

- **No cloud servers.** We do not operate any backend infrastructure.
- **No remote databases.** Your data never leaves your device by default.
- **Optional iCloud sync.** If you enable iCloud sync, your data is stored in your private iCloud container using Apple's CloudKit infrastructure. This data is encrypted in transit and at rest by Apple, and is accessible only to your Apple ID. We have no access to your iCloud data.
- **No raw audio.** Snoring detection processes audio in real time and discards it immediately. Only derived metadata is stored.

---

## 4. Third-Party Services

### No Data Sharing

We do **not** share, sell, rent, or disclose your personal or health data to any third party. Specifically:

- **No analytics SDKs** (no Google Analytics, Firebase Analytics, Mixpanel, or similar)
- **No crash reporting** that includes health data
- **No advertising networks** that receive health data
- **No data brokers or resellers**

### Future Advertising

The App may in the future display non-personalized advertisements. If implemented, these ads will:

- **Never** use your health, therapy, or Apple Health data for ad targeting
- **Never** share health data with advertising networks
- Be clearly identified as advertisements
- Use only non-personal contextual signals (e.g., app category, device language)

---

## 5. Apple HealthKit Compliance

In compliance with Apple's HealthKit guidelines and App Store Review Guidelines:

- Health data accessed through HealthKit is **never** used for advertising or marketing purposes
- Health data is **never** shared with third parties
- Health data is **never** sold to any party for any reason
- Health data is used solely to provide the App's core functionality: correlating your sleep and health metrics with CPAP therapy data
- The App's privacy policy (this document) is accessible before any HealthKit permission is requested

---

## 6. GDPR Compliance

SleepScope is operated from Norway, within the European Economic Area (EEA). The General Data Protection Regulation (GDPR) applies to all users.

### Lawful Basis for Processing

The lawful basis for processing your data is **explicit consent** (Article 6(1)(a) and Article 9(2)(a) GDPR). You provide consent when you:

- Grant permission to access your CPAP SD card data
- Authorize Apple Health data access via the iOS permission dialog
- Enable optional microphone access for snoring detection

You may withdraw consent at any time by revoking permissions in iOS Settings or by deleting your data within the App.

### Your Rights Under GDPR

You have the following rights regarding your personal data:

- **Right of access (Art. 15):** You can view all your data directly within the App at any time. Since all data is stored on your device, you have immediate, unrestricted access.
- **Right to rectification (Art. 16):** You can request correction of inaccurate data by contacting us.
- **Right to erasure (Art. 17):** You can delete all your data at any time using the "Clear All Data" option in Settings > Data Management. This permanently removes all therapy data, health correlations, and derived metrics from your device.
- **Right to data portability (Art. 20):** You can export your data in standard formats (CSV, JSON) from within the App.
- **Right to restrict processing (Art. 18):** You can revoke individual permissions (Health, microphone) via iOS Settings at any time.
- **Right to object (Art. 21):** As processing is based on consent, you may withdraw consent at any time.
- **Right to lodge a complaint:** You have the right to lodge a complaint with the Norwegian Data Protection Authority (Datatilsynet) or your local supervisory authority.

### Data Controller

The data controller is:

Sahil Agnihotri
Norway

Email: [sahil@agnihotri.se](mailto:sahil@agnihotri.se)

---

## 7. Data Retention

- **Default:** Your data is retained on your device indefinitely until you choose to delete it.
- **Configurable retention:** You can configure automatic data retention periods in Settings (30 days, 90 days, 1 year, or unlimited).
- **Auto-delete:** When enabled, data older than your chosen retention period is automatically removed during routine app maintenance.
- **Manual deletion:** You can delete all data at any time via Settings > Data Management > Clear All Data.
- **App removal:** Uninstalling the App removes all locally stored data. If iCloud sync is enabled, you must also remove data from iCloud separately via iOS Settings.

---

## 8. Data Security

We take the security of your health data seriously:

- **Encryption at rest:** All on-device data is protected by iOS Data Protection, which encrypts data using your device passcode and the Secure Enclave.
- **No network transmission:** By default, your data is never transmitted over the internet. The only network communication is:
  - **Local WiFi** to the ezShare SD card (a direct device-to-card connection on your local network)
  - **iCloud sync** (optional), which uses Apple's end-to-end encryption infrastructure
- **No remote endpoints:** The App does not communicate with any servers we operate. There are no API calls, no telemetry endpoints, and no background network requests to our infrastructure.
- **Secure processing:** Snoring audio is processed in real time using on-device machine learning and is never written to disk.

---

## 9. Children's Privacy

SleepScope is not intended for use by children under the age of 16 (or 13, where applicable by local law). We do not knowingly collect personal data from children. CPAP therapy is a medical treatment typically prescribed to adults, and the App is designed for adult users managing their own therapy.

If you believe a child has provided data through the App, please contact us and we will take steps to address the situation.

---

## 10. International Data Transfers

Since all data is stored on your device, no international data transfers occur by default. If you enable iCloud sync, Apple may store data in data centers outside the EEA in accordance with Apple's own privacy policy and data processing agreements, which include Standard Contractual Clauses approved by the European Commission.

---

## 11. Changes to This Privacy Policy

We may update this Privacy Policy from time to time. Changes will be communicated through:

- An in-app notification upon updating to a new version
- The "Last updated" date at the top of this document

We encourage you to review this Privacy Policy periodically. Continued use of the App after changes are posted constitutes acceptance of the revised policy. For material changes affecting how your health data is processed, we will request renewed consent where required by law.

---

## 12. Contact Us

If you have any questions, concerns, or requests regarding this Privacy Policy or your personal data, please contact:

**Sahil Agnihotri**
Email: [sahil@agnihotri.se](mailto:sahil@agnihotri.se)
Location: Norway

For GDPR-related inquiries, you may also contact the Norwegian Data Protection Authority:

**Datatilsynet**
Website: [https://www.datatilsynet.no](https://www.datatilsynet.no)

---

*This privacy policy is effective as of March 27, 2026.*
