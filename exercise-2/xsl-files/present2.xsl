<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Sorted products by their final value.</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Product name</th>
        <th>Product code</th>
        <th>Final value</th>
      </tr>
      <xsl:for-each select="Epipla_Diakosmisi_AE/product_list/product">
       <xsl:sort select="Final_value/text()" order="ascending" data-type="number"/>
        <tr>
          <td><xsl:value-of select="product-identification/@product_name"/></td>
          <td><xsl:value-of select="product-identification/@product_code"/></td>
          <td><xsl:value-of select="Final_value/text()"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>