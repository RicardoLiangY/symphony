<#--

    Symphony - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Copyright (C) 2012-2019, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#include "../macro-head.ftl">
    <!DOCTYPE html>
    <html>
    <head>
        <@head title="Markdown ${tutorialLabel} - ${symphonyLabel}" />
        <link rel="canonical" href="https://hacpai.com/guide/markdown">
        <link rel="stylesheet" href="${staticServePath}/js/lib/highlight/styles/github.css">
    </head>
    <body>
    <#include "../header.ftl">
        <div class="main">
            <div class="wrapper">
                <div class="fn-hr10"></div>
                <h2>Markdown ${tutorialLabel}</h2>
                <div class="fn-hr10"></div>
            </div>
            <div class="guide">
                <div class="fn-flex">
                    <div class="md">
                        <pre>
${md}
                        </pre>
                    </div>
                    <div class="content-reset">
                        ${html}
                    </div>
                </div>
            </div>
            <#include "../footer.ftl">
            <#if !markedAvailable>
                <script src="${staticServePath}/js/lib/highlight/highlight.pack.js"></script>
                <script>
             $('pre code').each(function (i, block) {
                    hljs.highlightBlock(block);
                });
             </#if>
        </script>
    </body>
    </html>