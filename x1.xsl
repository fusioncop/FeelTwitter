<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="x.xsl"/>

<xsl:template match="statuses">
  <div style="border:solid blue">
  <xsl:apply-imports/>
  </div>
</xsl:template>

</xsl:stylesheet> 