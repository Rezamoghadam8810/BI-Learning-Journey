# SSIS Lookup Transformation Exercise

## فارسی

### معرفی پروژه
این پروژه یک تمرین از دوره هوش تجاری (Business Intelligence) است که با استفاده از **SSIS** پیاده‌سازی شده است.  
هدف تمرین، خواندن داده‌ها از یک **Flat File** و تکمیل اطلاعات آن با استفاده از چندین **Lookup Transformation** و سپس ذخیره داده‌های نهایی در یک جدول در SQL Server است.

---

### منبع داده (Source)

داده‌های اولیه از یک **Flat File** خوانده می‌شوند که شامل ستون‌های زیر است:

- OrganizationKey
- DepartmentGroupKey
- ScenarioKey
- AccountKey

این فایل شامل کلیدهایی است که برای پیدا کردن اطلاعات تکمیلی از جداول مرجع استفاده می‌شوند.

---

### منطق ETL

در این تمرین از **۴ Lookup Transformation** استفاده شده است.  
هر Lookup برای پیدا کردن مقدار توضیحی مرتبط با یکی از کلیدها استفاده می‌شود.

فرآیند به صورت زیر انجام می‌شود:

1. خواندن داده‌ها از **Flat File Source**
2. اجرای **Lookup Transformation** برای هر کلید
3. پیدا کردن اطلاعات مرتبط از جداول مرجع
4. اضافه شدن ستون‌های توضیحی به داده‌ها
5. ذخیره داده‌های نهایی در یک جدول در SQL Server

---

### ستون‌های خروجی در جدول مقصد

پس از انجام Lookup ها، داده‌ها با ستون‌های زیر در جدول مقصد ذخیره می‌شوند:

- AccountDescription
- DepartmentGroupName
- GetOrganizationName
- GetSenarioName

این ستون‌ها اطلاعات توصیفی مربوط به کلیدهای موجود در فایل ورودی را نشان می‌دهند.

---

### ابزارها و تکنولوژی‌ها

- SQL Server
- SSIS (SQL Server Integration Services)
- Visual Studio / SSDT
- Flat File Source
- Lookup Transformation

---

### هدف تمرین

این تمرین برای یادگیری مفاهیم زیر انجام شده است:

- کار با **Flat File Source**
- استفاده از **Lookup Transformation**
- اتصال داده‌ها با جداول مرجع
- Enrich کردن داده‌ها قبل از ذخیره در دیتابیس
- طراحی Data Flow در SSIS

---

## English

### Project Overview

This project is an exercise from my **Business Intelligence (BI) training course** implemented using **SQL Server Integration Services (SSIS)**.

The goal of this exercise is to read data from a **Flat File**, enrich it using multiple **Lookup Transformations**, and store the matched results in a destination table in SQL Server.

---

### Source Data

The source data is read from a **Flat File** containing the following columns:

- OrganizationKey
- DepartmentGroupKey
- ScenarioKey
- AccountKey

These columns represent keys that are used to retrieve descriptive information from reference tables.

---

### ETL Process

In this exercise, **four Lookup transformations** are used to match the keys from the flat file with their corresponding descriptive values.

The ETL process works as follows:

1. Data is read from a **Flat File Source**
2. Each key is processed through a **Lookup Transformation**
3. Matching records are retrieved from reference tables
4. Additional descriptive columns are added to the data
5. The final enriched data is loaded into a SQL Server table

---

### Output Columns

After the lookup process, the destination table contains the following columns:

- AccountDescription
- DepartmentGroupName
- GetOrganizationName
- GetSenarioName

These columns represent descriptive values corresponding to the keys from the source file.

---

### Technologies Used

- SQL Server
- SSIS (SQL Server Integration Services)
- Visual Studio / SSDT
- Flat File Source
- Lookup Transformation

---

### Learning Objectives

This exercise demonstrates:

- Reading data from **Flat Files**
- Using **Lookup transformations**
- Enriching data using reference tables
- Designing **ETL Data Flow** in SSIS
- Loading processed data into SQL Server
`
