<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Products under 150 euros that can be paid with doses.</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Product name</th>
        <th>Product code</th>
        <th>Number of doses</th>
        <th>Amount of each dose</th>
        <th>Final value</th>
      </tr>
      <xsl:for-each select="Epipla_Diakosmisi_AE/product_list/product">
       <xsl:sort select="Final_value/text()" order="ascending" data-type="number"/>
       <xsl:if test="Final_value/text() &gt; 150">
        <tr>
          <td><xsl:value-of select="product-identification/@product_name"/></td>
          <td><xsl:value-of select="product-identification/@product_code"/></td>
          <td><xsl:value-of select="Final_value/accept_doses/num_doses"/></td>
          <td><xsl:value-of select="Final_value/accept_doses/ammount_doses"/></td>
          <td><xsl:value-of select="Final_value/text()"/></td>
        </tr>
        </xsl:if>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>