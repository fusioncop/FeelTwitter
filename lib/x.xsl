<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="UTF-8"/> 
	<xsl:template match="/">
<html>
<body>
  <h2>Twitter</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>dialog</th>
      <th>feel</th>
    </tr>
    <xsl:for-each select="statuses/status">
    <tr>
      <td><xsl:value-of select="text"/></td>
      <xsl:choose>
      <xsl:when test="text[contains(.,'mockery')]">
         <td bgcolor="#ff00ff">
         <xsl:value-of select="text"/>
         </td>
      </xsl:when>
      <xsl:otherwise>
         <td><xsl:value-of select="geo"/>soso~</td>
      </xsl:otherwise>
      </xsl:choose>
	  </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

