<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.related-product-x">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-related-product-x" ox-mod="related-product-x">
            <div class="scrollx">
            	<xsl:for-each select="data/ecom-products/i">
	            	<a href="{LINK/detail}" class="item">
	            		<img src="//a.oxm1.cc/img/blank.png" style="background-image:url({media/i[type = 'image']/src})"/>
                        <span class="textbox">
                            <span class="title">
                                <xsl:value-of select="title"/>
                            </span>
                            <span class="price">
                                <em><xsl:value-of select="price"/></em>
                                <xsl:if test="orig_price">
                                    <del><xsl:value-of select="orig_price"/></del>
                                </xsl:if>
                            </span>
                        </span>
	            	</a>
	            </xsl:for-each>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
