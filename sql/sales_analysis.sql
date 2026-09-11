-- ============================================================
-- E-Commerce Sales & Customer Analysis
-- Database: Oracle SQL
-- Table: SALESORDERS
-- Records: 9,800
-- ============================================================


-- ============================================================
-- 1. CHECK TOTAL NUMBER OF RECORDS
-- ============================================================

SELECT COUNT(*) AS TOTAL_ROWS
FROM SALESORDERS;


-- ============================================================
-- 2. TOTAL SALES
-- ============================================================

SELECT
    ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM SALESORDERS;


-- ============================================================
-- 3. SALES BY CATEGORY
-- ============================================================

SELECT
    CATEGORY,
    SUM(SALES) AS TOTAL_SALES
FROM SALESORDERS
GROUP BY CATEGORY
ORDER BY TOTAL_SALES DESC;


-- ============================================================
-- 4. CATEGORY SALES PERCENTAGE
-- ============================================================

SELECT
    CATEGORY,
    SUM(SALES) AS TOTAL_SALES,
    ROUND(
        SUM(SALES) /
        (SELECT SUM(SALES) FROM SALESORDERS) * 100,
        2
    ) AS SALES_PERCENTAGE
FROM SALESORDERS
GROUP BY CATEGORY
ORDER BY TOTAL_SALES DESC;


-- ============================================================
-- 5. SALES BY REGION
-- ============================================================

SELECT
    REGION,
    ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM SALESORDERS
GROUP BY REGION
ORDER BY TOTAL_SALES DESC;


-- ============================================================
-- 6. TOP 10 CUSTOMERS BY SALES
-- ============================================================

SELECT
    CUSTOMER_NAME,
    ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM SALESORDERS
GROUP BY CUSTOMER_NAME
ORDER BY TOTAL_SALES DESC
FETCH FIRST 10 ROWS ONLY;


-- ============================================================
-- 7. REPEAT CUSTOMERS
-- Customers with more than one order
-- ============================================================

SELECT
    CUSTOMER_NAME,
    COUNT(DISTINCT ORDER_ID) AS NUMBER_OF_ORDERS,
    ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM SALESORDERS
GROUP BY CUSTOMER_NAME
HAVING COUNT(DISTINCT ORDER_ID) > 1
ORDER BY NUMBER_OF_ORDERS DESC;


-- ============================================================
-- 8. TOP CUSTOMERS WITH ORDER COUNT AND AVERAGE ORDER VALUE
-- ============================================================

SELECT
    CUSTOMER_NAME,
    COUNT(DISTINCT ORDER_ID) AS NUMBER_OF_ORDERS,
    ROUND(SUM(SALES), 2) AS TOTAL_SALES,
    ROUND(
        SUM(SALES) / COUNT(DISTINCT ORDER_ID),
        2
    ) AS AVERAGE_ORDER_VALUE
FROM SALESORDERS
GROUP BY CUSTOMER_NAME
ORDER BY TOTAL_SALES DESC
FETCH FIRST 10 ROWS ONLY;


-- ============================================================
-- 9. YEARLY SALES
-- ============================================================

SELECT
    EXTRACT(YEAR FROM ORDER_DATE) AS ORDER_YEAR,
    ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM SALESORDERS
GROUP BY EXTRACT(YEAR FROM ORDER_DATE)
ORDER BY ORDER_YEAR;


-- ============================================================
-- 10. MONTHLY SALES
-- ============================================================

SELECT
    EXTRACT(YEAR FROM ORDER_DATE) AS ORDER_YEAR,
    EXTRACT(MONTH FROM ORDER_DATE) AS ORDER_MONTH,
    ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM SALESORDERS
GROUP BY
    EXTRACT(YEAR FROM ORDER_DATE),
    EXTRACT(MONTH FROM ORDER_DATE)
ORDER BY
    ORDER_YEAR,
    ORDER_MONTH;


-- ============================================================
-- 11. SALES BY SUB-CATEGORY
-- ============================================================

SELECT
    SUB_CATEGORY,
    ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM SALESORDERS
GROUP BY SUB_CATEGORY
ORDER BY TOTAL_SALES DESC;


-- ============================================================
-- 12. CATEGORY AND SUB-CATEGORY ANALYSIS
-- ============================================================

SELECT
    CATEGORY,
    SUB_CATEGORY,
    ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM SALESORDERS
GROUP BY
    CATEGORY,
    SUB_CATEGORY
ORDER BY
    CATEGORY,
    TOTAL_SALES DESC;


-- ============================================================
-- 13. SALES BY SHIPPING MODE
-- ============================================================

SELECT
    SHIP_MODE,
    COUNT(DISTINCT ORDER_ID) AS NUMBER_OF_ORDERS,
    ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM SALESORDERS
GROUP BY SHIP_MODE
ORDER BY TOTAL_SALES DESC;


-- ============================================================
-- 14. SALES BY CUSTOMER SEGMENT
-- ============================================================

SELECT
    SEGMENT,
    COUNT(DISTINCT ORDER_ID) AS NUMBER_OF_ORDERS,
    ROUND(SUM(SALES), 2) AS TOTAL_SALES
FROM SALESORDERS
GROUP BY SEGMENT
ORDER BY TOTAL_SALES DESC;
