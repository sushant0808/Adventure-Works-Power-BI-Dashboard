
# Adventure Works Power BI Dashboard

## 📖 Project Overview
This Power BI project analyzes **Adventure Works' global sales performance** to uncover insights into revenue growth, customer behavior, and product profitability.  
The dashboard was designed as a **portfolio project** to demonstrate strong data storytelling, DAX, and data modeling skills used in real-world business analytics.

---

## 🎯 Objective
To help company leadership track **sales performance**, **customer engagement**, and **product profitability** through a single interactive report, supporting data-driven decision-making across regions and product lines.

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

## ⚙️ Data Preparation
Data cleaning and transformation were performed in **SQL Server** before loading into Power BI.  

**Key Steps:**
- Replaced missing categorical values with `'NA'`
- Created a **dynamic Calendar Table** in Power BI (based on `MAX(Sales[OrderDate])`)
- Added flags for missing product pricing data
- Joined tables using a **Star Schema** data model (Sales as fact, others as dimension)
- Built DAX measures for core KPIs like Total Revenue, Profit, Orders, and YoY%

---

## 💡 Business Questions Answered

### 🏢 Executive Summary Page
📊 *Purpose:* Gives leadership a snapshot of business performance.  

**KPIs:**
- Total Revenue  
- Total Profit  
- Total Orders  
- Profit Margin %  
- YoY Growth % for each metric  

**Visuals:**
- Monthly Revenue Trend  
- Top 10 Products by Revenue & Profit  
- Total Revenue by Region  

**Insight Example:**  
> Revenue grew **112.45% YoY**, driven by top-selling “Sport-100 Helmet” products across all regions.

---

### 📦 Product Detail Page (Drill-through Page)
📊 *Purpose:* Allows deeper exploration of a single product's performance.  

**KPIs:**
- Total Revenue, Profit, Quantity, Regions, Customers  
- YoY Revenue, Profit, and Quantity Growth  

**Visuals:**
- YoY Revenue and Order Trends  
- Total Orders by Region (Map)  
- Top 5 Customers by Revenue  

**Feature:**  
Built as a **drill-through page** from the “Top 10 Products” table in the Executive Summary.  

**Insight Example:**  
> The “Adjustable Race” product achieved **114% YoY Profit Growth**, with steady expansion across **10 regions**.

---

### 👥 Customer Detail Page
📊 *Purpose:* Analyzes customer-level performance and demographics.  

**KPIs:**
- Total Unique Customers  
- Revenue per Customer  
- Average Orders per Month  
- Last Purchase Date  

**Visuals:**
- Top 100 Customers by Revenue & Orders  
- Orders by Gender, Occupation, and Income Level  
- Revenue per Customer Trend (YoY)  

**Insight Example:**  
> The “Professional” segment contributed **43% of total orders**, while **High-income customers** had the highest average spend.

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

## 📊 Key Insights & Learnings

✅ Developed **dynamic measures** with parameters for Year, Month, and Quarter selection.  
✅ Built **drill-through navigation** for product-level deep dives.  
✅ Used **conditional formatting** for highlighting YoY growth and profit changes.  
✅ Implemented **tooltip pages** for interactive user experience.  
✅ Designed with **executive-friendly layout** for clear decision-making.

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

