<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		
		<html>
			<body>
				<h2 style="text-align:center;">Hotel Management System</h2>
				<h3 style="text-align:center;">hotel</h3>
				<table border="2" align="center">
					<tr bgcolor="Green">
						<th>courseNo</th>
						<th>coursename</th>
						<th>sourse</th>
						<th>fare</th>
						<th>noofseats</th>
					
					</tr>
					<xsl:for-each select="Hotel_Management/Hotel">
						<tr>
							<td>
								<xsl:value-of select="courseNo"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="coursename"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="sourse"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="fare"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="noofseats"></xsl:value-of>
							</td>
						</tr>
					</xsl:for-each>
				<h3 style="text-align:center;">rooms</h3>
				<table border = "2" align="center" margin-top="90px">
					<tr bgcolor="orange">
						<th>courseNo</th>
						<th>coursename</th>
						<th>sourse</th>
						<th>fare</th>
					</tr>
					<xsl:for-each select="Hotel_Management/Room">
						<tr>
							<td> <xsl:value-of select="courseNo"/></td>
							<td><xsl:value-of select="coursename"/></td>
							<td><xsl:value-of select="sourse"/></td>
							<td><xsl:value-of select="fare"/></td>
						</tr>
					</xsl:for-each>
				</table>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
		
		
		
	