<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>
                My XSL
            </title>
        </head>
        <body>
            <table>
                <tr>
                    <th>Product Name</th>
                </tr>
                <xsl:for-each select="./Epipla_Diakosmisi_AE/product_list/product">
                <tr>
                    <td>
                        <xsl:value-of select="./product-identification[@product_name]"/>
                    </td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>