# Write your MySQL query statement below
SELECT P.PRODUCT_ID,COALESCE((SELECT NEW_PRICE FROM PRODUCTS P2
                                    WHERE P2.PRODUCT_ID = P.PRODUCT_ID
                                    AND P2.CHANGE_DATE <= '2019-08-16'
                                    ORDER BY P2.CHANGE_DATE DESC LIMIT 1),10) AS PRICE
                    FROM(SELECT DISTINCT PRODUCT_ID FROM PRODUCTS) P