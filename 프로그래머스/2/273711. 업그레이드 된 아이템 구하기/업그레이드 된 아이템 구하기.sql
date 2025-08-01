-- 코드를 작성해주세요
SELECT 
    t.ITEM_ID, 
    i.ITEM_NAME, 
    i.RARITY
FROM 
    ITEM_TREE t
JOIN 
    ITEM_INFO i ON t.ITEM_ID = i.ITEM_ID
WHERE 
    t.PARENT_ITEM_ID IN (
        SELECT ITEM_ID 
        FROM ITEM_INFO 
        WHERE RARITY = 'RARE'
    )
ORDER BY 
    t.ITEM_ID DESC;