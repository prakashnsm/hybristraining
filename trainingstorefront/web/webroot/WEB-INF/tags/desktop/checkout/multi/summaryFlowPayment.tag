<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="paymentInfo" required="true" type="de.hybris.platform.commercefacades.order.data.CCPaymentInfoData" %>
<%@ attribute name="requestSecurityCode" required="true" type="java.lang.Boolean" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set value="${not empty paymentInfo and not empty paymentInfo.billingAddress}" var="billingAddressOk"/>
<spring:theme code="checkout.summary.paymentMethod.securityCode.whatIsThis.description" var="securityWhatText"/>
<div class="checkout_summary_flow_c complete" id="checkout_summary_payment_div"  data-security-what-text="${securityWhatText}">
    <div class="item_container_holder">
        <ycommerce:testId code="checkout_paymentDetails_text">
            <div class="title_holder">
                <h2><spring:theme code="checkout.summary.paymentMethod.header" htmlEscape="false"/><span></span></h2>
            </div>

            <div class="item_container">
                <div class="left pad_right">
                    <ul>
                        <li>${fn:escapeXml(paymentInfo.accountHolderName)}</li>
                        <li>${fn:escapeXml(paymentInfo.cardNumber)}</li>
                        <li>${fn:escapeXml(paymentInfo.cardTypeData.name)}</li>
                        <li><spring:theme code="checkout.summary.paymentMethod.paymentDetails.expires" arguments="${paymentInfo.expiryMonth},${paymentInfo.expiryYear}"/></li>
                    </ul>

                    <c:if test="${requestSecurityCode}">
                        <form>
                            <dl>
                                <dt><label for="SecurityCode"><spring:theme code="checkout.summary.paymentMethod.securityCode"/>*</label></dt>
                                <dd>
                                    <input type="text" class="text security" id="SecurityCode"/>
                                    <a href="#" class="security_code_what"><spring:theme code="checkout.summary.paymentMethod.securityCode.whatIsThis"/></a>
                                </dd>
                            </dl>
                        </form>
                    </c:if>

                </div>
                <div class="left">
                    <ul>
                        <c:if test="${billingAddressOk}">
                            <li><spring:theme code="checkout.summary.paymentMethod.billingAddress.header"/></li>
                            <li>
                                <c:if test="${not empty paymentInfo.billingAddress.title}">${fn:escapeXml(paymentInfo.billingAddress.title)}&nbsp;</c:if>
                                    ${fn:escapeXml(paymentInfo.billingAddress.firstName)}&nbsp;${fn:escapeXml(paymentInfo.billingAddress.lastName)}
                            </li>
                            <li>${fn:escapeXml(paymentInfo.billingAddress.line1)}</li>
                            <li>${fn:escapeXml(paymentInfo.billingAddress.line2)}</li>
                            <li>${fn:escapeXml(paymentInfo.billingAddress.region.name)}&nbsp;${fn:escapeXml(paymentInfo.billingAddress.town)}</li>
                            <li>${fn:escapeXml(paymentInfo.billingAddress.postalCode)}</li>
                            <li>${fn:escapeXml(paymentInfo.billingAddress.country.name)}</li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </ycommerce:testId>
    </div>

    <ycommerce:testId code="checkout_changePayment_element">
	    <c:url value="/checkout/multi/add-payment-method" var="addPaymentMethodUrl"/>
        <a href="${addPaymentMethodUrl}" class="edit_complete change_payment_method_button"><spring:theme code="checkout.summary.paymentMethod.editPaymentMethod"/></a>
    </ycommerce:testId>
</div>
