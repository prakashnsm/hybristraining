<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/desktop/template" %>
<%@ taglib prefix="cart" tagdir="/WEB-INF/tags/desktop/cart" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/desktop/product" %>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/desktop/nav" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="common" tagdir="/WEB-INF/tags/desktop/common" %>
<%@ taglib prefix="breadcrumb" tagdir="/WEB-INF/tags/desktop/nav/breadcrumb" %>

<template:page pageTitle="${pageTitle}">

	<div id="breadcrumb" class="breadcrumb">
		<breadcrumb:breadcrumb breadcrumbs="${breadcrumbs}"/>
	</div>
		
	<div id="globalMessages">
		<common:globalMessages/>
	</div>
	
	<div class="span-4">
		<nav:facetNavAppliedFilters pageData="${searchPageData}"/>
		<nav:facetNavRefinements pageData="${searchPageData}"/>
	</div>

	<cms:pageSlot position="Section2" var="feature" element="div" class="span-20 last">
		<cms:component component="${feature}" element="div" class="section2 cms_disp-img_slot"/>
	</cms:pageSlot>

	<div class="span-20 last">
		<div class="results">
			<h1><spring:theme code="search.page.searchText" arguments="${searchPageData.freeTextSearch}"/></h1>
		</div>
		
		<div class="span-20">
			<nav:searchSpellingSuggestion spellingSuggestion="${searchPageData.spellingSuggestion}" />
		</div>

		<div class="span-20">
			<nav:pagination top="true"  supportShowPaged="${isShowPageAllowed}" supportShowAll="${isShowAllAllowed}"  searchPageData="${searchPageData}" searchUrl="${searchPageData.currentQuery.url}"  numberPagesShown="${numberPagesShown}"/>
		</div>
		
		<div class="span-20">
			<c:forEach items="${searchPageData.results}" var="product" varStatus="status">
				<div class="span-4${(status.index+1)%5 == 0 ? ' last' : ''}">
					<product:productListerGridItem product="${product}"/>
				</div>
			</c:forEach>
		</div>
		
		<div class="span-20 last">
			<nav:pagination top="false"  supportShowPaged="${isShowPageAllowed}" supportShowAll="${isShowAllAllowed}"  searchPageData="${searchPageData}" searchUrl="${searchPageData.currentQuery.url}"  numberPagesShown="${numberPagesShown}"/>
		</div>
	</div>
	
	
<div id="popup_store_pickup_form" class="pickup_store_search clearfix" style="display:none">
	<div class="item_container_holder clearfix">
		<div class="title_holder">
			<h2><spring:theme code="pickup.product.availability" /></h2>
		</div>
	</div>

	<div class="prod_grid span-4">
		<span class="thumb">
			
		</span>
		<strong class="details"></strong>
		<div class="cart">
			<p><strong></strong></p>
			<c:if test="${not empty product.baseOptions[0].selected.variantOptionQualifiers}">
				<c:forEach var="variant" items="${product.baseOptions[0].selected.variantOptionQualifiers}">
					<c:if test="${not empty variant.value}">
						<p><spring:theme code="basket.pickup.product.variant" arguments="${variant.name},${variant.value}" /></p>
						
					</c:if>
				</c:forEach>
			</c:if>
		</div>
		<div class="quantity pickup_store_search-quantity">
			<label data-for="pickupQty"><spring:theme code="basket.page.quantity" /></label>
			<input type="text" size="1" maxlength="3"  data-id="pickupQty" name="qty" class="qty" />
		</div>
	</div>
	
	<div class="span-17 last">
		<div class="pickup_store_search-form">
			<form name="pickupInStoreForm" action="#" method="post" class="form_field-input">
				<label for="locationForSearch" class="nostyle"><spring:theme code="pickup.search.message" /></label>
				<input type="text" name="locationQuery" data-id="locationForSearch" />
				<input type="hidden" name="cartPage" data-id="atCartPage" value="${cartPage}" />
				<input type="hidden" name="entryNumber" value="${entryNumber}" class="entryNumber" />
				<button type="submit" class="form" data-id="pickupstore_search_button"><spring:theme code="pickup.search.button" /></button>
				<button type="submit" class="form" data-id="find_pickupStoresNearMe_button"><spring:theme code="storeFinder.findStoresNearMe"/></button>
			</form>
		</div>
		<div data-id="pickup_store_results" class="pickup_store_results"></div>
	</div>
</div>

</template:page>