SELECT
  shop
FROM
  shopitems si
  LEFT OUTER JOIN items i ON si.item = i.item
GROUP BY
  si.shop
HAVING
  COUNT(si.item) = (
    SELECT
      COUNT(item)
    FROM
      items
  )
  AND COUNT(i.item) = (
    SELECT
      COUNT(item)
    FROM
      items
  )
