<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>

<script defer src="${commonResourcePath}/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="${commonResourcePath}/js/accmob.carousel.js"></script>

<div class="span-12 last" data-theme="b">
	<div id="homepage_slider" class="flexslider" data-theme="b">
		<ul class="slides">
			<c:forEach items="${banners}" var="banner">
				<c:if test="${ycommerce:evaluateRestrictions(banner)}">
					<c:url value="${banner.urlLink}" var="encodedUrl" />
					<li>
						<a tabindex="-1" href="${encodedUrl}" <c:if test="${banner.external}"> target="_blank"</c:if>> 
							<img src="${banner.media.url}" 
								alt="${not empty banner.headline ? banner.headline : banner.media.altText}"
								title="${not empty banner.headline ? banner.headline : banner.media.altText}" />
						</a>
					</li>
				</c:if>
			</c:forEach>
		</ul>
	</div>
</div>
