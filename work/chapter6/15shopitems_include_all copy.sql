SELECT
  si.shop
FROM
  shopitems si
  INNER JOIN items i ON si.item = i.item
GROUP BY
  si.shop
HAVING
  COUNT(si.item) = (
    SELECT
      COUNT(item)
    FROM
      items
  )
