# 🚀 Adventure Works Power BI Dashboard

## 📖 Project Overview
This Power BI dashboard provides a **comprehensive analysis of Adventure Works’ global sales performance**, helping stakeholders evaluate profitability, customer engagement, and regional performance at a glance.  
It was built using SQL Server as the data source, where data was cleaned and transformed before modeling and visualization in Power BI.

The project demonstrates expertise in:
- **DAX-based KPI creation** (Revenue, Profit, Margin %, Customer, Orders)
- **Data modeling using Star Schema**
- **Interactive navigation features** (bookmarks, sidebar filters, drill-throughs)
- **Analytical storytelling through visuals** and actionable insights

The dashboard is divided into **three interactive tabs** — Executive Summary, Product Details, and Customer Details — each designed for a specific business audience.

---

## 🎯 Objective
To deliver an **interactive and insight-driven business intelligence report** that empowers management to monitor:
- Sales and profit performance across **regions, products, and time**
- Product-level contribution and growth trends
- Customer segmentation, activity, and engagement levels  

The key goals were to:
- Create a **management-friendly view** with KPIs, growth metrics, and trends  
- Enable **drill-through analysis** from company-level insights to product-level details  
- Visualize **customer behavior patterns** through demographics and purchase frequency  
- Enhance user experience with **bookmark-based navigation and filter sidebar**

---

## 🧩 Dataset Details
The data was sourced from the **Adventure Works database (SQL Server)** and processed through SQL scripts for cleaning before importing into Power BI.

| Table Name | Description |
|-------------|--------------|
| `Sales` | Order-level transaction data including quantity, price, and profit |
| `Product`, `Product_Subcategory`, `Product_Category` | Hierarchical product data |
| `Customer` | Customer demographic information |
| `Territory` | Region and country-level sales mapping |

---

## ⚙️ Data Preparation & Cleaning
Data cleaning, Data Visualization was performed in **SQL Server Management Studio** & **Power BI**.  

From the AdventureWork database, we use SQL to select relevant columns, add flag columns and generate below Views:

1. vw_Customer
2. vw_Product
3. vw_Product_Category
4. vw_Product_Subcategory
5. vw_Sales
6. vw_Territory

Then I connected these views to the Power BI dashboard using the SQL Server Connector.

I have exported the data in CSV files. You can find it over here ![CSV Files]([Data Cleaning]/[Data CSV Files]/)


**Key Steps:**
- Replaced missing categorical values with `'NA'`
- Added flag columns for missing product pricing data
- Joined tables using a **Star Schema** data model (Sales as fact, others as dimension) in Power BI
- Built DAX measures for core KPIs like Total Revenue, Profit, Orders, and YoY%

---

## 📊 Dashboard Pages Summary

### 🏢 Executive Summary Page
A high-level view designed for senior management and executives to assess overall business health.

**Visuals & Features:**
- KPI Cards: Total Revenue, Total Profit, Profit Margin %, Active Customers, Total Orders  
- Revenue Trend Chart  
- Revenue by Region  
- Top 10 Products (Revenue, Orders, Profit Margin %)  
- Monthly Revenue, Orders, and Margin KPIs  
- Most Ordered & Least Ordered Product Cards  
- Sidebar with Navigation Icons and Reset Filters  

---

### 📦 Product Detail Page (Drill-through Enabled)
Enables users to analyze performance metrics for any selected product from the Executive Summary page.

**Visuals & Features:**
- KPI Cards: Total Profit, Total Quantity Sold, Total Regions Sold  
- Trend Line Chart with parameter selection for Revenue, Profit, Orders, or Product Margin  
- YoY Growth Bar Charts (Revenue and Orders)  
- Map: Total Orders by Region  
- Dynamic Drill-through Navigation from Executive Summary  

---

### 👥 Customer Detail Page
Focuses on customer segmentation, engagement, and purchase behavior.

**Visuals & Features:**
- KPI Cards: Unique Customers, Revenue per Customer, Last Purchase Date, Avg. Orders per Month  
- Top Customer Card (with Orders & Revenue)  
- Top 100 Customers by Orders and Revenue  
- Trend Chart with Parameter Selection (“Total Customers” or “Revenue per Customer”)  
- Total Orders by Year  
- Pie Charts: Orders by Income Level, Occupation, Gender  

---

### 🎨 User Experience Enhancements
To ensure a seamless and intuitive experience:
- Added a **Sidebar Navigation Panel** using *bookmarks* and *grouped elements*  
- Sidebar includes:
  - Page navigation icons (Executive Summary, Product, Customer)
  - Filter icon to expand/collapse filters panel  
  - Reset Filters button to clear all active slicers  
- Improved accessibility and dashboard flow by grouping and layering elements for smooth transitions  

---

## 🧮 Key DAX Measures

| Measure | Formula Description |
|----------|---------------------|
| `Total Revenue` | `SUMX(Sales, Sales[Order Quantity] * Sales[Retail Price])` |
| `Total Cost` | `SUMX(Sales, Sales[Order Quantity] * Sales[Product Cost])` |
| `Total Profit` | `[Total Revenue] - [Total Cost]` |
| `Profit Margin %` | `DIVIDE([Total Profit], [Total Revenue], 0)` |
| `YoY Revenue %` | `DIVIDE([Total Revenue] - [Previous Year Revenue], [Previous Year Revenue])` |
| `Active Customers` | `DISTINCTCOUNT(Sales[Customer ID])` |

---

## 🧭 Data Model (Star Schema)
**Fact Table:** `Sales`  
**Dimension Tables:** `Calendar`, `Product`, `Customer`, `Territory`, `Product_Subcategory`, `Product_Category`

**Relationships:**
- `Sales[ProductKey]` → `Product[ProductKey]`
- `Sales[CustomerKey]` → `Customer[CustomerKey]`
- `Sales[TerritoryKey]` → `Territory[TerritoryKey]`
- `Calendar[Date]` → `Sales[OrderDate]`

📌 *This structure ensures optimized performance and enables Time Intelligence functions.*

---

## 🧰 Tools & Technologies Used

| Tool | Purpose |
|------|----------|
| **Power BI Desktop** | Dashboard development and DAX measures |
| **SQL Server Management Studio (SSMS)** | Data cleaning and preprocessing |
| **Power Query Editor** | Data transformation and column management |
| **Excel/CSV** | Supporting data files for loading and validation |

---

## 💡 Key Insights & Learnings

✅ Developed **dynamic DAX measures** to calculate KPIs such as YoY Growth, Profit Margin %, and Revenue per Customer.  
✅ Designed a **Star Schema model** ensuring optimized performance for large datasets.  
✅ Implemented **Drill-through navigation** from product-level summaries to detail-level views.  
✅ Added **interactive sidebar navigation** with bookmarks for seamless tab transitions.  
✅ Built **parameterized visuals** to switch between different metrics (e.g., Revenue, Orders, Profit).  
✅ Used **tooltip pages** and **conditional formatting** to improve interactivity and readability.  
✅ Enhanced report usability by grouping elements and applying **Reset Filters** and **Toggle Filter Panel** buttons.  

---

## 🏁 Dashboard Preview

📸 **Executive Summary**
![Executive Summary](Images/ExecutiveSummary.png)

📸 **Product Detail Page**
![Product Detail Page](Images/ProductDetail.png)

📸 **Customer Detail Page**
![Customer Detail Page](Images/CustomerDetail.png)

*(Upload your 3 screenshots to an `Images` folder in your repo and keep the same filenames for links to work.)*

---

## 🗂️ Repository Structure

