<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Products with offer rate bigger than 35%</h2>
    <products_can_by>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Product name</th>
        <th>Product code</th>
        <th>Final value</th>
      </tr>
      <xsl:for-each select="Epipla_Diakosmisi_AE/product_list/product">
       <xsl:if test="start_value/offer_rate &gt; 35" data-type="number">
        <tr>
          <td><xsl:value-of select="product-identification/@product_name"/></td>
          <td><xsl:value-of select="product-identification/@product_code"/></td>
          <td><xsl:value-of select="@prod_class_id"/></td>
        </tr>
        </xsl:if>
      </xsl:for-each>
    </table>
    </products_can_by>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>