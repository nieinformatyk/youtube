-- **Zapytanie 1** — TOP 5 najlepiej sprzedających się produktów:
    SELECT
    product_name,
    SUM(quantity) AS total_quantity,
    SUM(quantity * unit_price) AS total_revenue
    FROM `inspiring-lens-435910-m1.sklep_online.sprzedaz_produktow`
    GROUP BY product_name
    ORDER BY total_revenue DESC
    LIMIT 5;

-- **Zapytanie 2** — Sprzedaż w podziale na kraj:
    SELECT
        country,
        COUNT(*) AS number_of_orders,
        SUM(quantity * unit_price) AS total_revenue
    FROM `inspiring-lens-435910-m1.sklep_online.sprzedaz_produktow`
    GROUP BY country
    ORDER BY total_revenue DESC;

-- **Zapytanie 3** — Sprzedaż miesięczna (trend):
    SELECT
    FORMAT_DATE('%Y-%m', order_date) AS month,
    SUM(quantity * unit_price) AS monthly_revenue
    FROM `inspiring-lens-435910-m1.sklep_online.sprzedaz_produktow`
    GROUP BY month
    ORDER BY month;
