<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Products and their certifications</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Product name</th>
        <th>Product code</th>
        <th>Manufacturer country</th>
        <th>Certified</th>
      </tr>
      <xsl:for-each select="Epipla_Diakosmisi_AE/product_list/product">
        <tr>
          <td><xsl:value-of select="product-identification/@product_name"/></td>
          <td><xsl:value-of select="product-identification/@product_code"/></td>
          <td><xsl:value-of select="product_characteristics/manufacturer_country"/></td>
          <td><xsl:value-of select="product_characteristics/certified/@certificate"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>