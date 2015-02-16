<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/projects">
		<html>
			<head>
				<title></title>
				<style>
					body {
						color: #000;
					}
					tr {
						background-color: #ccc;
					}
				</style>
			</head>
			<body>
				<table>
					<thead>
						<tr>
							<th>Course name</th>
							<th>Project requirements</th>
							<th>Technologies</th>
							<th>Theme</th>
							<th>Description</th>
							<th>Timeline</th>
						</tr>
					</thead>
					<xsl:for-each select="project">
						<tr>
							<td>
								<xsl:value-of select="course/course-name"/>
							</td>
							<td>
								<xsl:value-of select="project-requirements/project-requirement" />
							</td>

							<td>
								<xsl:for-each select="technologies/technology/technology-name">
									<xsl:value-of select="." />
								</xsl:for-each>
							</td>
							<td>
								<xsl:value-of select="theme" />
							</td>
							<td>
								<xsl:value-of select="description" />
							</td>
							<td>
								<xsl:value-of select="timeline/start-date" />
								/
								<xsl:value-of select="timeline/end-date" /> 
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>