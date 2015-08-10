<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="actionNameKey" required="true" type="java.lang.String" %>
<%@ attribute name="action" required="true" type="java.lang.String" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="formElement" tagdir="/WEB-INF/tags/desktop/formElement" %>
<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>

<div class="item_container_holder">
	<div class="title_holder">
		<h2>
			<spring:theme code="register.new.customer"/>
		</h2>
	</div>

	<div class="item_container">
		<p>
			<spring:theme code="register.description"/>
		</p>
		<p class="required">
			<spring:theme code="form.required"/>
		</p>
		<form:form method="post" commandName="registerForm" action="${action}">
			<div class="form_field-elements">
				<formElement:formSelectBox idKey="register.title" labelKey="register.title" path="titleCode" mandatory="true" skipBlank="false" skipBlankMessageKey="form.select.empty" items="${titles}"/>
				<formElement:formInputBox idKey="register.firstName" labelKey="register.firstName" path="firstName" inputCSS="text" mandatory="true"/>
				<formElement:formInputBox idKey="register.lastName" labelKey="register.lastName" path="lastName" inputCSS="text" mandatory="true"/>
				<formElement:formInputBox idKey="register.email" labelKey="register.email" path="email" inputCSS="text" mandatory="true"/>
				<formElement:formPasswordBox idKey="password" labelKey="register.pwd" path="pwd" inputCSS="text password strength" mandatory="true"/>
				<formElement:formPasswordBox idKey="register.checkPwd" labelKey="register.checkPwd" path="checkPwd" inputCSS="text password" mandatory="true"/>
				<formElement:formInputBox idKey="register.maritalStatus" labelKey="register.maritalStatus" path="maritalStatus" inputCSS="text" mandatory="false"/>
			</div>
			<%--for captchaaddon--%>
			<div id="recaptcha_widget" style="display:none" data-recaptcha-public-key="${requestScope.recaptchaPublicKey}">
				<c:if test="${requestScope.recaptchaChallangeAnswered == false}">
					<div class="form_field_error">
				</c:if>

				<div id="recaptcha_image" class="left"></div>
				<div class="left">
					<a href="javascript:Recaptcha.reload()" class="cicon reload"></a>

					<div class="recaptcha_only_if_image"><a href="javascript:Recaptcha.switch_type('audio')" class="cicon audio"></a></div>
					<div class="recaptcha_only_if_audio"><a href="javascript:Recaptcha.switch_type('image')" class="cicon image"></a></div>
				</div>

				<div class="recaptcha_only_if_incorrect_sol" style="color:red">Incorrect please try again</div>

				<div class="form_field-label">
					<span class="recaptcha_only_if_image">Enter the words above:</span>
					<span class="recaptcha_only_if_audio">Enter the numbers you hear:</span>
				</div>
				<div class="form_field-input  clearfix">
					<input type="text" id="recaptcha_response_field" name="recaptcha_response_field" class="left"/>
					<a href="javascript:Recaptcha.showhelp()" class="cicon help left"></a>
				</div>

				<c:if test="${requestScope.recaptchaChallangeAnswered == false}">
			</div>
			</c:if>
	</div>
	<div class="form-field-button">
		<ycommerce:testId code="register_Register_button">
			<button class="form">
				<spring:theme code='${actionNameKey}'/>
			</button>
		</ycommerce:testId>
	</div>

	</form:form>
</div>
</div>
