-- Seed file for Lakewood Fencing
-- Generated: January 03, 2025
-- Based on SCHEMA_2025_01_03.md specification

-- Get the category_id for Fencing
WITH trade_category AS (
    SELECT id FROM categories WHERE slug = 'fencing'
),
-- Get the subregion_id for Lakewood
target_subregion AS (
    SELECT id FROM subregions WHERE slug = 'lakewood'
)
INSERT INTO contractors (
    category_id,
    subregion_id,
    contractor_name,
    address,
    phone,
    website,
    reviews_avg,
    reviews_count,
    slug
) VALUES
(
    (SELECT id FROM trade_category),
    (SELECT id FROM target_subregion),
    'Lakewood Fencing',
    '1700 Broadway, Denver, CO 80214',
    '(303) 555-1001',
    'https://lakewood-fencing.com',
    4.9,
    295,
    'lakewood-fencing'
),
(
    (SELECT id FROM trade_category),
    (SELECT id FROM target_subregion),
    'Fence Experts of Lakewood',
    '1601 Blake Street, Denver, CO 80214',
    '(303) 555-1002',
    'https://fence-experts-of-lakewood.com',
    4.6,
    250,
    'fence-experts-of-lakewood'
),
(
    (SELECT id FROM trade_category),
    (SELECT id FROM target_subregion),
    'Professional Fence Lakewood',
    '1747 Wynkoop St, Denver, CO 80214',
    '(303) 555-1003',
    'https://professional-fence-lakewood.com',
    4.6,
    313,
    'professional-fence-lakewood'
),
(
    (SELECT id FROM trade_category),
    (SELECT id FROM target_subregion),
    'Lakewood Fence Company 3',
    '1430 Larimer St, Denver, CO 80214',
    '(303) 555-1004',
    'https://lakewood-fence-company-3.com',
    4.7,
    155,
    'lakewood-fence-company-3'
),
(
    (SELECT id FROM trade_category),
    (SELECT id FROM target_subregion),
    'Lakewood Fence Company 4',
    '1144 15th St, Denver, CO 80214',
    '(303) 555-1005',
    'https://lakewood-fence-company-4.com',
    4.6,
    284,
    'lakewood-fence-company-4'
),
(
    (SELECT id FROM trade_category),
    (SELECT id FROM target_subregion),
    'Lakewood Fence Company 5',
    '1001 16th Street Mall, Denver, CO 80214',
    '(303) 555-1006',
    'https://lakewood-fence-company-5.com',
    4.8,
    175,
    'lakewood-fence-company-5'
),
(
    (SELECT id FROM trade_category),
    (SELECT id FROM target_subregion),
    'Lakewood Fence Company 6',
    '1437 Bannock St, Denver, CO 80214',
    '(303) 555-1007',
    'https://lakewood-fence-company-6.com',
    4.8,
    314,
    'lakewood-fence-company-6'
),
(
    (SELECT id FROM trade_category),
    (SELECT id FROM target_subregion),
    'Lakewood Fence Company 7',
    '200 E Colfax Ave, Denver, CO 80214',
    '(303) 555-1008',
    'https://lakewood-fence-company-7.com',
    4.6,
    300,
    'lakewood-fence-company-7'
),
(
    (SELECT id FROM trade_category),
    (SELECT id FROM target_subregion),
    'Lakewood Fence Company 8',
    '1701 Champa St, Denver, CO 80214',
    '(303) 555-1009',
    'https://lakewood-fence-company-8.com',
    4.7,
    173,
    'lakewood-fence-company-8'
),
(
    (SELECT id FROM trade_category),
    (SELECT id FROM target_subregion),
    'Lakewood Fence Company 9',
    '1801 California St, Denver, CO 80214',
    '(303) 555-1010',
    'https://lakewood-fence-company-9.com',
    4.7,
    297,
    'lakewood-fence-company-9'
);

-- Verify insertion
SELECT 
    c.contractor_name,
    s.subregion_name,
    cat.category_name,
    c.address,
    c.phone,
    c.reviews_avg,
    c.reviews_count
FROM contractors c
JOIN categories cat ON c.category_id = cat.id
JOIN subregions s ON c.subregion_id = s.id
WHERE 
    cat.slug = 'fencing' 
    AND s.slug = 'lakewood'
ORDER BY c.contractor_name;
