---
title: Lab notes
date: 2023-04-20
---

# Lab Notes
## POT Sensor
- The ADC pins of ESP32 have can read values in the range of *0V to 3.3V*
- `analogRead()` function returns a value in the range *[0, 4095]*. It has a resolution of *12 bits*.
- The ADC pins of ESP32 are not linear meaning 4095 is mapped for both 3.2V and 3.3V. Same is true of the
  lower voltages. Beside the fringes ADC is linear.

``` cpp
    void setup() {
      Serial.begin(9600);
      pinMode(A0, INPUT);
    }


    void loop() {
      /* We know that 3.3V is 4095
	 We can figure out the appropriate by multiplying with this ratio
	 3.3/4095 = x/<value received>
	 x = <value received> * (3.3/4095)
      ,*/
      float voltage = analogRead(A0) * (3.3 / 4095);
      Serial.printf("%.2fV\n", voltage);
      delay(100);
    }
```

## BMP280
- The `BMP280`  is a digital barometric pressure and temperature sensor.
- It supports both `I2C` and `SPI`.
### `I2C`
| I2C Device                    | ESP32          | 
| ----------------------------- | -------------- |
| SDA/SDI                       | =D21=(GPIO 21) |
| SCL/SCK                       | =D22=GPIO 22   |
| GND                           | GND            |
| VCC                           | 3V3            |
``` cpp
#include <Adafruit_BMP280.h>
#include <Adafruit_Sensor.h>
#include <Wire.h>

#define DBK_BMP280_ADDR 0x76
#define DBK_BAUD_RATE 9600
#define DBK_DELAY 1000
#define DBK_SEALEVEL_HPA 1013.25

Adafruit_BMP280 bmp;

void setup()
{
	Serial.begin(DBK_BAUD_RATE);
	/* bmp.begin() can be called without any args. It will take the
	 * default address.
	 * */
	if (!bmp.begin(DBK_BMP280_ADDR)) {
		Serial.println("BMP280 not connected");
		while (1)
			;
	}
}

void loop()
{
	float temp, pressure, altitude;
	/* bmp.readPressure() returns in terms of Pascals
	 * But we need it interms of hectopascals. So we divide by 100
	 * The F suffix forces it to be a float. If we had used just 100.0
	 * it would have been a double. Since we only need the first 2
	 * significant digits after the decimal point the extra space
	 * needed by double is not worth it. So we are explicity forcing it
	 * to be a float.
	 *
	 * bmp.readAltitude() need a reference point. The altitude calculation
	 * is done by comparing the value we give with the value found by
	 * the sensor. By comparing with the pressure at the sea level we can
	 * get the approximate altitude
	 * */
	temp = bmp.readTemperature();
	altitude = bmp.readAltitude(DBK_SEALEVEL_HPA);
	pressure = bmp.readPressure() / 100.0F;
	Serial.printf("%.2fC, %.2fm, %.2fhPa\n", temp, altitude, pressure);
	delay(DBK_DELAY);
}
```
### SPI
| BME280                 | ESP32   |
| ---------------------- | ------- |
| SCL (SCK)              | GPIO 18 |
| SDO (MISO)             | GPIO 19 |
| SDI (MOSI)             | GPIO 23 |
| CSB (CS)               | GPIO 5  |
| GND                    | GND     |
| VCC                    | 3V3     |

``` cpp
#include <Adafruit_BMP280.h>
#include <Adafruit_Sensor.h>
#include <Wire.h>
#include <SPI.h>

#define DBK_BMP280_ADDR 0x76
#define DBK_BAUD_RATE 9600
#define DBK_DELAY 1000
#define DBK_SEALEVEL_HPA 1013.25

#define BMP_SCK 18
#define BMP_MISO 19
#define BMP_MOSI 23
#define BMP_CS 5

Adafruit_BMP280 bmp(BMP_CS);

void setup()
{
	Serial.begin(DBK_BAUD_RATE);
	if (!bmp.begin(DBK_BMP280_ADDR)) {
		Serial.println("BMP280 not connected");
		while (1)
			;
	}
}

void loop()
{
	float temp, pressure, altitude;
	temp = bmp.readTemperature();
	altitude = bmp.readAltitude(DBK_SEALEVEL_HPA);
	pressure = bmp.readPressure() / 100.0F;
	Serial.printf("%.2fC, %.2fm, %.2fhPa\n", temp, altitude, pressure);
	delay(DBK_DELAY);
}
```

## MPU6050
### Pinout
| MPU6050           | ESP32 |
| ----------------- | ----- |
| VCC               | 3V2   |
| GND               | GND   |
| SCL               | D22   |
| SDA               | D21   |
| XDA               |       |
| XCL               |       |
| AD0               |       |
| INT               |       |

```cpp
#include <Adafruit_MPU6050.h>
#include <Adafruit_Sensor.h>
#include <Wire.h>

#define DBK_DELAY 1000

Adafruit_MPU6050 mpu;
void setup(void)
{
	Serial.begin(9600);

	Serial.println("MPU6050");
	if (!mpu.begin()) {
		Serial.println("MPU6050 not connected");
		while (1) {
		};
	}
	mpu.setAccelerometerRange(MPU6050_RANGE_8_G);
	mpu.setGyroRange(MPU6050_RANGE_500_DEG);
	mpu.setFilterBandwidth(MPU6050_BAND_5_HZ);
}

void loop()
{
	sensors_event_t a, g, temp;
	mpu.getEvent(&a, &g, &temp);

	Serial.printf("ACCEL: %.2f, %.2f, %.2f m/s^2\n", a.acceleration.x,
		      a.acceleration.y, a.acceleration.z);
	Serial.printf("ROT: %.2f, %.2f, %.2f m/s^2\n", g.gyro.x, g.gyro.y,
		      g.gyro.z);
	Serial.printf("TEMP: %.2f C\n", temp.temperature);
	delay(DBK_DELAY);
}
```

## MAX30100
### Pinout
| MAX30100          | ESP32 |
| ----------------- | ----- |
| VCC               | 3V2   |
| GND               | GND   |
| SCL               | D22   |
| SDA               | D21   |
| INT               |       |
| IRD               |       |
| RD                |       |
| GND               |       |

```cpp
#include <MAX30100_PulseOximeter.h>
#include <Wire.h>

#define REPORTING_PERIOD_MS 1000

PulseOximeter pox;

uint32_t time_since_last_report = 0;

void onBeatDetected()
{
	// Callback function
	// Can be used to blink LED on heartbeat
	Serial.println("Beat!");
}

void setup()
{
	Serial.begin(9600);

	Serial.print("MAX30100");
	if (!pox.begin()) {
		Serial.println("MAX30100 not connected");
		for (;;) {
		};
	}
	pox.setOnBeatDetectedCallback(onBeatDetected);
}

void loop()
{
	pox.update();
	// millis() returns the time since boot
	// We have to measure for atleast REPORTING_PERIOD_MS to get accurate results
	if (millis() - time_since_last_report > REPORTING_PERIOD_MS) {
		Serial.printf("HR: %.2f bpm\nSpO2: %.2f%\n", pox.getHeartRate(),
			      pox.getSpO2());
		time_since_last_report = millis();
	}
}
```

## DS18B20
``` cpp
#include <DallasTemperature.h>
#include <OneWire.h>

#define ONEWIRE_BUS 4
#define DBK_DELAY 1000

OneWire oneWire(ONEWIRE_BUS);
DallasTemperature sensors(&oneWire);

void setup()
{
	Serial.begin(9600);
	sensors.begin();
}

void loop()
{
	sensors.requestTemperatures();
	float temp_c = sensors.getTempCByIndex(0);
	float temp_f = sensors.getTempFByIndex(0);
	Serial.printf("TEMP: %.2fC/%.2fF\n", temp_c, temp_f) delay(DBK_DELAY);
}
#+end_src
** PWM
#+begin_src cpp
#define LED_PIN 16
#define LEDC_CHANNEL 0
#define LEDC_FREQ 10000
#define LEDC_RES 12

void setup()
{
	Serial.begin(9600);
	pinMode(LED_PIN, OUTPUT);
	ledcSetup(LEDC_CHANNEL, LEDC_FREQ, LEDC_RES);
	ledcAttachPin(LED_PIN, LEDC_CHANNEL);
}

void loop()
{
	for(int dutyCycle = 0; dutyCycle <= 255; dutyCycle++){   
		// changing the LED brightness with PWM
		ledcWrite(LED_CHANNEL, dutyCycle);
		delay(15);
	}
}
```

## WiFi
### Station Mode
#### Connecting to another network
``` cpp
#include <WiFi.h>

const char *ssid = "moto";
const char *password = "";

void setup()
{
	Serial.begin(9600);
	WiFi.mode(WIFI_STA);
	WiFi.begin(ssid, password);
	Serial.print("Connecting to WiFi ..");
	while (WiFi.status() != WL_CONNECTED) {
		Serial.print('.');
		delay(1000);
	}
	Serial.println(WiFi.localIP());
}

void loop()
{
}
```
#### Sending POST Requests
```cpp
#include <HTTPClient.h>
#include <WiFi.h>

const char *ssid = "moto";
const char *password = "";
const char *serverName = "http://192.168.160.252/post_test.php";

void setup()
{
	Serial.begin(9600);
	WiFi.mode(WIFI_STA);
	WiFi.begin(ssid, password);
	Serial.print("Connecting to WiFi ..");
	while (WiFi.status() != WL_CONNECTED) {
		Serial.print('.');
		delay(1000);
	}
	Serial.println(WiFi.localIP());
}

void loop()
{
	WiFiClient client;
	HTTPClient http;
	String httpRequestData = "user=dbk";
	http.begin(client, serverName);
	http.addHeader("Content-Type", "application/x-www-form-urlencoded");
	int httpResponseCode = http.POST(httpRequestData);
	String payload = http.getString();
	Serial.println(httpResponseCode);
	Serial.println(payload);
	http.end();
	delay(1000);
}
```

### AP Mode
``` cpp
#include <WiFi.h>

const char *ssid = "dbk";

void setup()
{
	Serial.begin(9600);
	Serial.print("AP");
	WiFi.softAP(ssid);

	IPAddress IP = WiFi.softAPIP();
	Serial.print("AP IP address: ");
	Serial.println(IP);
}

void loop()
{
}
```
