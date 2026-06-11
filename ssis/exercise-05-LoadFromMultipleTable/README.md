\# SSIS Dynamic ETL from Multiple Databases



\## فارسی



\### معرفی پروژه

این پروژه یک تمرین آموزشی از دوره هوش تجاری (BI) من است.  

هدف این تمرین، شبیه‌سازی فرآیند خواندن اطلاعات از چند دیتابیس مختلف و تجمیع آن‌ها در یک دیتابیس مقصد با استفاده از \*\*SSIS\*\* است.



در این سناریو، سه دیتابیس با نام‌های زیر ایجاد شده‌اند:



\- `DB1`

\- `DB2`

\- `DB3`



در هر کدام از این دیتابیس‌ها یک جدول دارای داده قرار دارد.  

همچنین یک دیتابیس تنظیمات با نام `ETL\_Settings` در نظر گرفته شده که شامل جدولی برای کنترل فرآیند ETL است.



\---



\### ساختار جدول تنظیمات

جدول تنظیمات شامل ستون‌های زیر است:



\- `ServerName`

\- `DatabaseName`

\- `TableName`

\- `isActive`



این جدول به عنوان منبع تنظیمات ETL عمل می‌کند و مشخص می‌کند که از کدام دیتابیس‌ها باید داده خوانده شود.



\---



\### منطق اجرای پروژه

در این پروژه، پکیج \*\*SSIS\*\* ابتدا جدول تنظیمات را می‌خواند.  

سپس برای هر رکوردی که مقدار `isActive` آن فعال باشد:



1\. نام سرور، دیتابیس و جدول را از جدول تنظیمات دریافت می‌کند.

2\. به دیتابیس مربوطه متصل می‌شود.

3\. داده‌های جدول موردنظر را می‌خواند.

4\. اطلاعات را در دیتابیس مقصد با نام `IntegratedDB` و جدول `MergeTable` بارگذاری می‌کند.



به این ترتیب، فقط داده‌های دیتابیس‌های فعال وارد دیتابیس نهایی می‌شوند.



\---



\### هدف تمرین

این پروژه با هدف تمرین مفاهیم زیر پیاده‌سازی شده است:



\- کار با \*\*SSIS\*\*

\- خواندن اطلاعات از چند منبع داده

\- استفاده از جدول تنظیمات برای کنترل فرآیند ETL

\- پیاده‌سازی ETL به صورت پویا (Dynamic)

\- تجمیع داده‌ها در یک دیتابیس مرکزی



\---



\### تکنولوژی‌ها و ابزارها

\- SQL Server

\- SSIS (SQL Server Integration Services)

\- Visual Studio / SSDT



\---



\### دیتابیس مقصد

داده‌های استخراج‌شده در دیتابیس زیر ذخیره می‌شوند:



\- \*\*Database:\*\* `IntegratedDB`

\- \*\*Table:\*\* `MergeTable`



\---



\### خروجی مورد انتظار

در پایان اجرای پکیج، داده‌های موجود در دیتابیس‌های فعال (`DB1` تا `DB3`) در جدول `MergeTable` از دیتابیس `IntegratedDB` تجمیع می‌شوند.



\---



\### نکات آموزشی

این پروژه یک نمونه ساده اما کاربردی از طراحی ETL مبتنی بر تنظیمات است.  

در پروژه‌های واقعی، این الگو می‌تواند برای مدیریت چندین منبع داده و کنترل فرآیند بارگذاری بدون نیاز به تغییر مستقیم در پکیج SSIS استفاده شود.



\---



\## English



\### Project Overview

This project is a hands-on exercise from my Business Intelligence (BI) training course.  

The goal of this exercise is to simulate reading data from multiple databases and integrating it into a single target database using \*\*SSIS\*\*.



In this scenario, three databases were created:



\- `DB1`

\- `DB2`

\- `DB3`



Each database contains one table with sample data.  

In addition, a configuration database named `ETL\_Settings` was created to control the ETL process.



\---



\### ETL Settings Table Structure

The settings table contains the following columns:



\- `ServerName`

\- `DatabaseName`

\- `TableName`

\- `isActive`



This table acts as the ETL configuration source and determines which databases should be processed.



\---



\### Project Logic

In this project, the \*\*SSIS\*\* package first reads the ETL settings table.  

Then, for each row where `isActive` is enabled:



1\. It reads the server name, database name, and table name from the settings table.

2\. Connects to the corresponding source database.

3\. Extracts data from the specified table.

4\. Loads the data into the destination database named `IntegratedDB`, specifically into the `MergeTable` table.



As a result, only data from active databases is transferred to the final integrated database.



\---



\### Learning Objectives

This exercise was designed to practice the following concepts:



\- Working with \*\*SSIS\*\*

\- Reading data from multiple source systems

\- Using a configuration table to control ETL behavior

\- Building a dynamic ETL process

\- Consolidating data into a centralized database



\---



\### Technologies \& Tools

\- SQL Server

\- SSIS (SQL Server Integration Services)

\- Visual Studio / SSDT



\---



\### Target Database

The extracted data is loaded into:



\- \*\*Database:\*\* `IntegratedDB`

\- \*\*Table:\*\* `MergeTable`



\---



\### Expected Output

After running the package, data from the active databases (`DB1` to `DB3`) is consolidated into `MergeTable` in the `IntegratedDB` database.



\---



\### Notes

This project is a simple but practical example of a configuration-driven ETL design.  

In real-world scenarios, this pattern can be used to manage multiple data sources and control the loading process without directly modifying the SSIS package.



