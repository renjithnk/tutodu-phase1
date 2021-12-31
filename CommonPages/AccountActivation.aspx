﻿<%@ page title="" language="C#" masterpagefile="~/MasterPages/CommonMasterNew.master" autoeventwireup="true" inherits="CommonPages_AccountActivation, App_Web_wy5ggddp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css" rel="stylesheet" media="all">
        /* Base ------------------------------ */
        *:not(br):not(tr):not(html) {
            font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            width: 100% !important;
            height: 100%;
            margin: 0;
            line-height: 1.4;
            background-color: #F5F7F9;
            color: #839197;
            -webkit-text-size-adjust: none;
        }

        a {
            color: #414EF9;
        }

        /* Layout ------------------------------ */
        .email-wrapper {
            width: 100%;
            margin: 0;
            padding: 0;
            background-color: #F5F7F9;
        }

        .email-content {
            width: 100%;
            margin: 0;
            padding: 0;
        }

        /* Masthead ----------------------- */
        .email-masthead {
            padding: 25px 0;
            text-align: center;
        }

        .email-masthead_logo {
            max-width: 400px;
            border: 0;
        }

        .email-masthead_name {
            font-size: 16px;
            font-weight: bold;
            color: #839197;
            text-decoration: none;
            text-shadow: 0 1px 0 white;
        }

        /* Body ------------------------------ */
        .email-body {
            width: 100%;
            margin: 0;
            padding: 0;
            border-top: 1px solid #E7EAEC;
            border-bottom: 1px solid #E7EAEC;
            background-color: #FFFFFF;
        }

        .email-body_inner {
            width: 570px;
            margin: 0 auto;
            padding: 0;
        }

        .email-footer {
            width: 570px;
            margin: 0 auto;
            padding: 0;
            text-align: center;
        }

            .email-footer p {
                color: #839197;
            }

        .body-action {
            width: 100%;
            margin: 30px auto;
            padding: 0;
            text-align: center;
        }

        .body-sub {
            margin-top: 25px;
            padding-top: 25px;
            border-top: 1px solid #E7EAEC;
        }

        .content-cell {
            padding: 35px;
        }

        .align-right {
            text-align: right;
        }

        /* Type ------------------------------ */
        h1 {
            margin-top: 0;
            color: #292E31;
            font-size: 19px;
            font-weight: bold;
            text-align: left;
        }

        h2 {
            margin-top: 0;
            color: #292E31;
            font-size: 16px;
            font-weight: bold;
            text-align: left;
        }

        h3 {
            margin-top: 0;
            color: #292E31;
            font-size: 14px;
            font-weight: bold;
            text-align: left;
        }

        p {
            margin-top: 0;
            color: #839197;
            font-size: 16px;
            line-height: 1.5em;
            text-align: left;
        }

            p.sub {
                font-size: 12px;
            }

            p.center {
                text-align: center;
            }

        /* Buttons ------------------------------ */
        .button {
            display: inline-block;
            width: 200px;
            background-color: #414EF9;
            border-radius: 3px;
            color: #ffffff;
            font-size: 15px;
            line-height: 45px;
            text-align: center;
            text-decoration: none;
            -webkit-text-size-adjust: none;
            mso-hide: all;
        }

        .button--green {
            background-color: #28DB67;
        }

        .button--red {
            background-color: #FF3665;
        }

        .button--blue {
            background-color: #414EF9;
        }

        /*Media Queries ------------------------------ */
        @media only screen and (max-width: 600px) {
            .email-body_inner,
            .email-footer {
                width: 100% !important;
            }
        }

        @media only screen and (max-width: 500px) {
            .button {
                width: 100% !important;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section id="academy-intro" class="py-md-5 py-2">
        <div class="container">
            <div class="inner-container">
                <div class="row">                  

                    <table class="email-wrapper" width="100%" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <table class="email-content" width="100%" cellpadding="0" cellspacing="0">
                                    <!-- Logo -->
                                    <tr>
                                        <td class="email-masthead">
                                            <a style="font-size: 30px; color: #059cd9" class="email-masthead_name">Congratulations! </a>
                                        </td>
                                    </tr>
                                    <!-- Email Body -->
                                    <tr>
                                        <td class="email-body" width="100%">
                                            <table class="email-body_inner" align="center" width="570" cellpadding="0" cellspacing="0">
                                                <!-- Body content -->
                                                <tr>
                                                    <td class="content-cell">
                                                        <h1 style="text-align: center;">Your account has been successfully activated!</h1>
                                                        <p style="text-align: center;">You can update your personal information in the Profile section.</p>
                                                        <!-- Action -->
                                                        <table class="body-action" align="center" width="100%" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td align="center">
                                                                    <div>
                                                                  
                                                                        <a href="#" data-toggle="modal" data-target="#login-modal" class="button button--blue">Login</a>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- Sub copy -->
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table class="email-footer" align="center" width="570" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="content-cell">
                                                        <p class="sub center">
                                                            Tutodu Academy.
                      <br>
                                                            6928 Westcott Place, Clarksville, Maryland 21029, U.S
                                                        </p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>
    </section>

</asp:Content>

