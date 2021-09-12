SELECT
  si.shop,
  COUNT(si.item) AS my_item_cnt,
  (
    SELECT
      COUNT(item)
    FROM
      items
  ) - COUNT(si.item) AS diff_cnt
FROM
  shopitems si
  INNER JOIN items i ON si.item = i.item
GROUP BY
  si.shop
