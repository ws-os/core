<%
/**
 * Copyright (c) 2000-2005 Liferay, LLC. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
%>

<%@ include file="/html/common/init.jsp" %>

<%@ page import="com.dotcms.repackage.counter_ejb.com.liferay.counter.ejb.CounterManagerUtil" %>
<%@ page import="com.liferay.portlet.polls.DuplicateVoteException" %>
<%@ page import="com.liferay.portlet.polls.NoSuchChoiceException" %>
<%@ page import="com.liferay.portlet.polls.NoSuchQuestionException" %>
<%@ page import="com.liferay.portlet.polls.ejb.PollsChoiceManagerUtil" %>
<%@ page import="com.liferay.portlet.polls.ejb.PollsDisplayManagerUtil" %>
<%@ page import="com.liferay.portlet.polls.ejb.PollsQuestionLocalManagerUtil" %>
<%@ page import="com.liferay.portlet.polls.ejb.PollsQuestionManagerUtil" %>
<%@ page import="com.liferay.portlet.polls.ejb.PollsVoteManagerUtil" %>
<%@ page import="com.liferay.portlet.polls.model.PollsChoice" %>
<%@ page import="com.liferay.portlet.polls.model.PollsDisplay" %>
<%@ page import="com.liferay.portlet.polls.model.PollsQuestion" %>

<portlet:defineObjects />

<%
boolean pollsDisplayAdmin = false;
if (PollsDisplayManagerUtil.hasAdmin()) {
	pollsDisplayAdmin = true;
}
%>