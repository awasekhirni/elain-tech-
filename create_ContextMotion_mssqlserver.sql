/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V10.0.2                    */
/* Target DBMS:           MS SQL Server 2012                              */
/* Project file:          ContextMotion.dez                               */
/* Project name:          ContextMotion                                                */
/* Author:                Awase Khirni Syed  Elain Technologies Canada Inc awase008@gmail.com                                                 */
/* Script type:           Database creation script                        */
/* Created on:            2021-07-21 11:29                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "UserCategory"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [UserCategory] (
    [usercategoryId] INTEGER NOT NULL,
    [usercategoryName] VARCHAR(200) NOT NULL,
    [usercategoryDescription] VARCHAR(250) NOT NULL,
    [usercategory_created] DATETIME NOT NULL,
    [usercategory_updated] DATETIME NOT NULL,
    CONSTRAINT [PK_UserCategory] PRIMARY KEY ([usercategoryId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "User"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [User] (
    [userId] VARCHAR(60) NOT NULL,
    [userSalutation] VARCHAR(10) NOT NULL,
    [userFirstName] VARCHAR(200) NOT NULL,
    [userMiddleName] VARCHAR(200) NOT NULL,
    [userLastName] VARCHAR(200) NOT NULL,
    [userEmail] VARCHAR(500) NOT NULL,
    [userPhone] VARCHAR(40),
    [userMobile] VARCHAR(40) NOT NULL,
    [userDOB] DATETIME NOT NULL,
    [userPOB] VARCHAR(400),
    [userFatherName] VARCHAR(400),
    [userMotherName] VARCHAR(400),
    [userGender] VARCHAR(2),
    CONSTRAINT [PK_User] PRIMARY KEY ([userId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "AddressCategory"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [AddressCategory] (
    [addressCategoryId] INTEGER NOT NULL,
    [addressCategoryName] VARCHAR(100) NOT NULL,
    [addresscategoryDesc] VARCHAR(200) NOT NULL,
    [addresscategory_created] DATETIME NOT NULL,
    [addresscategory_updated] VARCHAR(40),
    CONSTRAINT [PK_AddressCategory] PRIMARY KEY ([addressCategoryId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Address"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Address] (
    [addressId] INTEGER NOT NULL,
    [addressLine1] VARCHAR(400) NOT NULL,
    [addressLine2] VARCHAR(40) NOT NULL,
    [addressLine3] VARCHAR(40) NOT NULL,
    [addressZipcode] VARCHAR(40) NOT NULL,
    [addressCity] VARCHAR(40) NOT NULL,
    [addressState] VARCHAR(40) NOT NULL,
    [addressCountry] VARCHAR(40) NOT NULL,
    [address_created] DATETIME NOT NULL,
    [address_updated] DATETIME NOT NULL,
    [addressCategoryId] INTEGER,
    CONSTRAINT [PK_Address] PRIMARY KEY ([addressId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ArticleCategory"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ArticleCategory] (
    [articleCategoryId] INTEGER NOT NULL,
    [articleCategoryName] VARCHAR(40) NOT NULL,
    [articleCategoryDesc] VARCHAR(40) NOT NULL,
    [articleCategory_created] DATETIME NOT NULL,
    [articleCategory_updated] DATETIME NOT NULL,
    CONSTRAINT [PK_ArticleCategory] PRIMARY KEY ([articleCategoryId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Article"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Article] (
    [articleId] VARCHAR(60) NOT NULL,
    [articleName] VARCHAR(40) NOT NULL,
    [articleDesc] VARCHAR(40) NOT NULL,
    [article_created] DATETIME NOT NULL,
    [article_updated] DATETIME NOT NULL,
    [article_status] VARCHAR(100) NOT NULL,
    [articleCategoryId] INTEGER,
    [article_isPublished] BIT NOT NULL,
    [article_defaultLang] VARCHAR(40),
    [article_langtemplate] VARCHAR(40),
    CONSTRAINT [PK_Article] PRIMARY KEY ([articleId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "UserCategory_User"                                          */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [UserCategory_User] (
    [usercategoryId] INTEGER NOT NULL,
    [userId] VARCHAR(60) NOT NULL,
    CONSTRAINT [PK_UserCategory_User] PRIMARY KEY ([usercategoryId], [userId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "AdCategory"                                                 */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [AdCategory] (
    [adCategoryId] INTEGER NOT NULL,
    [adCategoryName] VARCHAR(100) NOT NULL,
    [adCategoryDesc] VARCHAR(200) NOT NULL,
    [adCategory_created] DATETIME NOT NULL,
    [adCategory_updated] DATETIME NOT NULL,
    CONSTRAINT [PK_AdCategory] PRIMARY KEY ([adCategoryId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Ad"                                                         */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Ad] (
    [adId] VARCHAR(60) NOT NULL,
    [adTitle] VARCHAR(250) NOT NULL,
    [adDesc] VARCHAR(500) NOT NULL,
    [isvideo] BIT NOT NULL,
    [isImage] BIT NOT NULL,
    [isAudio] BIT NOT NULL,
    [adViews] INTEGER NOT NULL,
    [adConversion] INTEGER NOT NULL,
    [adClicks] INTEGER NOT NULL,
    [adDurationinSec] INTEGER NOT NULL,
    [adStartDate] DATETIME NOT NULL,
    [adEndDate] DATETIME NOT NULL,
    [adCoupon] VARCHAR(40) NOT NULL,
    [ad_created] DATETIME NOT NULL,
    [ad_updated] DATETIME NOT NULL,
    [adCategoryId] INTEGER,
    CONSTRAINT [PK_Ad] PRIMARY KEY ([adId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Invoices"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Invoices] (
    [invoiceId] VARCHAR(60) NOT NULL,
    [invoiceTitle] VARCHAR(200) NOT NULL,
    [invoicePrice] INTEGER NOT NULL,
    [invoicePayerName] VARCHAR(400) NOT NULL,
    [invoicePayerEmail] VARCHAR(500) NOT NULL,
    [invoicePayerPhone] VARCHAR(40) NOT NULL,
    [invoiceCurrencyCode] VARCHAR(40) NOT NULL,
    [invoicePaymentStatus] VARCHAR(100) NOT NULL,
    [invoicePaymentDueDate] DATETIME NOT NULL,
    [invoiceShippingAmount] VARCHAR(40) NOT NULL,
    [invoiceHandlingAmount] VARCHAR(40) NOT NULL,
    [invoiceInsuranceAmount] VARCHAR(40) NOT NULL,
    [invoiceTaxAmount] VARCHAR(40) NOT NULL,
    [invoice_thirdpartycomission] VARCHAR(40) NOT NULL,
    [invoice_paymentmode] VARCHAR(40) NOT NULL,
    [invoice_created] DATETIME NOT NULL,
    [invoice_updated] DATETIME NOT NULL,
    CONSTRAINT [PK_Invoices] PRIMARY KEY ([invoiceId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "OrderCategory"                                              */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [OrderCategory] (
    [orderCategoryId] INTEGER NOT NULL,
    [orderCategoryName] VARCHAR(250) NOT NULL,
    [orderCategoryDesc] VARCHAR(500) NOT NULL,
    [orderCategory_created] DATETIME NOT NULL,
    [orderCategory_updated] DATETIME NOT NULL,
    CONSTRAINT [PK_OrderCategory] PRIMARY KEY ([orderCategoryId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Order"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Order] (
    [orderId] VARCHAR(60) NOT NULL,
    [orderName] VARCHAR(500) NOT NULL,
    [orderDesc] VARCHAR(500) NOT NULL,
    [orderTC] VARCHAR(500) NOT NULL,
    [orderStatus] VARCHAR(40) NOT NULL,
    [order_created] DATETIME NOT NULL,
    [order_updated] DATETIME NOT NULL,
    [orderCategoryId] INTEGER,
    CONSTRAINT [PK_Order] PRIMARY KEY ([orderId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "SectionCategory"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [SectionCategory] (
    [sectionCategoryId] INTEGER NOT NULL,
    [sectionCategoryName] VARCHAR(40) NOT NULL,
    [sectionCategoryDesc] VARCHAR(40) NOT NULL,
    [sectionCategoryRemarks] VARCHAR(40) NOT NULL,
    [sectionCategory_created] DATETIME NOT NULL,
    [sectionCategory_updated] DATETIME NOT NULL,
    CONSTRAINT [PK_SectionCategory] PRIMARY KEY ([sectionCategoryId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Section"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Section] (
    [sectionId] VARCHAR(60) NOT NULL,
    [sectionName] VARCHAR(250) NOT NULL,
    [sectionDesc] VARCHAR(500) NOT NULL,
    [sectionContext] TEXT NOT NULL,
    [section_created] VARCHAR(40) NOT NULL,
    [section_updated] VARCHAR(40) NOT NULL,
    [sectionCategoryId] INTEGER,
    [articleId] VARCHAR(60),
    CONSTRAINT [PK_Section] PRIMARY KEY ([sectionId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Figure"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Figure] (
    [figureId] VARCHAR(40) NOT NULL,
    [figureTitle] VARCHAR(40) NOT NULL,
    [figureReference] VARCHAR(40) NOT NULL,
    [figure_created] DATETIME NOT NULL,
    [figure_updated] DATETIME NOT NULL,
    [figure_isreproduced] BIT NOT NULL,
    [sectionId] VARCHAR(60),
    CONSTRAINT [PK_Figure] PRIMARY KEY ([figureId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ContentTable"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ContentTable] (
    [contentTableId] INTEGER NOT NULL,
    [contentTableTitle] VARCHAR(40) NOT NULL,
    [contentTableContext] VARCHAR(40) NOT NULL,
    [contentTable_created] DATETIME NOT NULL,
    [contentTable_updated] DATETIME NOT NULL,
    [sectionId] VARCHAR(60),
    CONSTRAINT [PK_ContentTable] PRIMARY KEY ([contentTableId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "User_Article"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [User_Article] (
    [userId] VARCHAR(60) NOT NULL,
    [articleId] VARCHAR(60) NOT NULL,
    CONSTRAINT [PK_User_Article] PRIMARY KEY ([userId], [articleId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "PayoutCategory"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [PayoutCategory] (
    [payoutCategoryId] INTEGER NOT NULL,
    [payoutCategoryName] VARCHAR(40) NOT NULL,
    [payoutCategoryDesc] VARCHAR(40) NOT NULL,
    [payoutCategoryFactor] NUMERIC(10,2) NOT NULL,
    [payoutCategory_created] DATETIME NOT NULL,
    [payoutCategory_updated] DATETIME NOT NULL,
    CONSTRAINT [PK_PayoutCategory] PRIMARY KEY ([payoutCategoryId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "PayoutSummary"                                              */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [PayoutSummary] (
    [payoutSummaryId] VARCHAR(60) NOT NULL,
    [payoutSummaryTitle] VARCHAR(200) NOT NULL,
    [payoutPeriodStartDate] DATETIME NOT NULL,
    [payoutPeriodEndDate] DATETIME NOT NULL,
    [payoutPeriodTTLEarnings] NUMERIC(10,2) NOT NULL,
    [payoutPeriodTax] NUMERIC(10,2) NOT NULL,
    [payoutPeriod_created] DATETIME,
    [payoutPeriod_updated] VARCHAR(40),
    [payoutCategoryId] INTEGER,
    CONSTRAINT [PK_PayoutSummary] PRIMARY KEY ([payoutSummaryId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "SurveyCategory"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [SurveyCategory] (
    [surveyCategoryId] INTEGER NOT NULL,
    [surveyCategoryName] VARCHAR(250) NOT NULL,
    [surveyCategoryDesc] VARCHAR(500) NOT NULL,
    [surveyCategory_created] DATETIME NOT NULL,
    [surveyCategory_updated] DATETIME NOT NULL,
    CONSTRAINT [PK_SurveyCategory] PRIMARY KEY ([surveyCategoryId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "DataSurvey"                                                 */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [DataSurvey] (
    [datasurveyId] VARCHAR(60) NOT NULL,
    [datasurveyTitle] VARCHAR(500) NOT NULL,
    [datasurveyDesc] VARCHAR(1000) NOT NULL,
    [datasurveyConsent] VARCHAR(1000) NOT NULL,
    [datasurveyStartDate] DATETIME NOT NULL,
    [datasurveyEndDate] DATETIME NOT NULL,
    [datasurveylink] VARCHAR(100) NOT NULL,
    [datasurvey_created] DATETIME NOT NULL,
    [datasurvey_updated] DATETIME NOT NULL,
    [surveyCategoryId] INTEGER,
    [datasurveyType] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_DataSurvey] PRIMARY KEY ([datasurveyId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "User_DataSurvey"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [User_DataSurvey] (
    [userId] VARCHAR(60) NOT NULL,
    [datasurveyId] VARCHAR(60) NOT NULL,
    CONSTRAINT [PK_User_DataSurvey] PRIMARY KEY ([userId], [datasurveyId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "QuestionType"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [QuestionType] (
    [questionTypeId] INTEGER NOT NULL,
    [questionTypeName] VARCHAR(40) NOT NULL,
    [questionTypeHasChoices] INTEGER NOT NULL,
    [questionType_created] DATETIME,
    [questionType_updated] DATETIME,
    CONSTRAINT [PK_QuestionType] PRIMARY KEY ([questionTypeId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Question"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Question] (
    [questionId] VARCHAR(60) NOT NULL,
    [questionText] VARCHAR(500) NOT NULL,
    [questionDesc] VARCHAR(250) NOT NULL,
    [question_created] DATETIME NOT NULL,
    [question_updated] DATETIME NOT NULL,
    [questionTypeId] INTEGER,
    CONSTRAINT [PK_Question] PRIMARY KEY ([questionId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "DataSurvey_Question"                                        */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [DataSurvey_Question] (
    [datasurveyId] VARCHAR(60) NOT NULL,
    [questionId] VARCHAR(60) NOT NULL,
    CONSTRAINT [PK_DataSurvey_Question] PRIMARY KEY ([datasurveyId], [questionId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Choice"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Choice] (
    [choiceId] INTEGER NOT NULL,
    [choiceText] VARCHAR(400) NOT NULL,
    [choiceOrder] INTEGER NOT NULL,
    [choice_created] DATETIME,
    [choice_updated] DATETIME,
    [questionId] VARCHAR(60),
    CONSTRAINT [PK_Choice] PRIMARY KEY ([choiceId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "SurveyResponse"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [SurveyResponse] (
    [surveyResponseId] INTEGER NOT NULL,
    [surveyResponseIpAddress] VARCHAR(100) NOT NULL,
    [surveyResponseStartTime] DATETIME NOT NULL,
    [surveyResponseEndTime] DATETIME NOT NULL,
    [surveyResponse_created] DATETIME NOT NULL,
    [surveyResponse_updated] DATETIME NOT NULL,
    CONSTRAINT [PK_SurveyResponse] PRIMARY KEY ([surveyResponseId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "SurveyAnswer"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [SurveyAnswer] (
    [surveyAnswerId] VARCHAR(40) NOT NULL,
    [surveyAnswerResponseId] VARCHAR(40) NOT NULL,
    [surveyAnswer_value] VARCHAR(40) NOT NULL,
    [questionId] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_SurveyAnswer] PRIMARY KEY ([surveyAnswerId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Language"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Language] (
    [languageId] INTEGER NOT NULL,
    [language_code] VARCHAR(40) NOT NULL,
    [language_name] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_Language] PRIMARY KEY ([languageId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "LanguageTemplate"                                           */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [LanguageTemplate] (
    [languageTemplateId] VARCHAR(60) NOT NULL,
    [languageTemplateName] VARCHAR(250),
    [languageTemplateCode] VARCHAR(40),
    [languageTemplate_created] DATETIME,
    [languageTemplate_updated] DATETIME,
    [languageTemplate_rating] INTEGER,
    [userId] VARCHAR(60) NOT NULL,
    CONSTRAINT [PK_LanguageTemplate] PRIMARY KEY ([languageTemplateId], [userId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "DeviceType"                                                 */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [DeviceType] (
    [deviceTypeId] INTEGER NOT NULL,
    [deviceTypeName] VARCHAR(200) NOT NULL,
    [deviceTypeManufacturer] VARCHAR(500) NOT NULL,
    CONSTRAINT [PK_DeviceType] PRIMARY KEY ([deviceTypeId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "OperatingSystem"                                            */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [OperatingSystem] (
    [operatingsystemId] INTEGER NOT NULL,
    [operatingsystemName] VARCHAR(100),
    [operatingsystemVersion] VARCHAR(40),
    CONSTRAINT [PK_OperatingSystem] PRIMARY KEY ([operatingsystemId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Browser"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Browser] (
    [browserId] INTEGER NOT NULL,
    [browserName] VARCHAR(40) NOT NULL,
    [browserVersion] VARCHAR(40) NOT NULL,
    CONSTRAINT [PK_Browser] PRIMARY KEY ([browserId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Session"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Session] (
    [sessionId] VARCHAR(60) NOT NULL,
    [sessionStart] VARCHAR(40) NOT NULL,
    [sessionEnd] VARCHAR(40) NOT NULL,
    [sessionIP] VARCHAR(40) NOT NULL,
    [sessionISP] VARCHAR(40) NOT NULL,
    [sessionCity] VARCHAR(40) NOT NULL,
    [sessionCountry] VARCHAR(40) NOT NULL,
    [is_firstvisit] BIT NOT NULL,
    CONSTRAINT [PK_Session] PRIMARY KEY ([sessionId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "OrgType"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [OrgType] (
    [orgTypeId] INTEGER NOT NULL,
    [orgTypeName] VARCHAR(500),
    [orgTypeDesc] VARCHAR(1000),
    [orgType_created] DATETIME,
    [orgType_updated] DATETIME,
    CONSTRAINT [PK_OrgType] PRIMARY KEY ([orgTypeId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Organization"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Organization] (
    [organizationId] VARCHAR(60) NOT NULL,
    [organizationName] VARCHAR(500) NOT NULL,
    [organizationDesc] VARCHAR(1000) NOT NULL,
    [organizationUrl] VARCHAR(100) NOT NULL,
    [organizationRank] INTEGER NOT NULL,
    [organizationAddress] VARCHAR(500) NOT NULL,
    [organizationCity] VARCHAR(200) NOT NULL,
    [organizationState] VARCHAR(200) NOT NULL,
    [organizationCountry] VARCHAR(200) NOT NULL,
    [organizationPhone] VARCHAR(40) NOT NULL,
    [organizationEmail] VARCHAR(100) NOT NULL,
    [organizationZip] VARCHAR(40) NOT NULL,
    [organization_isactive] VARCHAR(40) NOT NULL,
    [organization_founded] DATETIME NOT NULL,
    [organization_created] DATETIME NOT NULL,
    [organization_updated] DATETIME NOT NULL,
    [orgTypeId] INTEGER NOT NULL,
    CONSTRAINT [PK_Organization] PRIMARY KEY ([organizationId], [orgTypeId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "DomainStream"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [DomainStream] (
    [domainstreamId] INTEGER NOT NULL,
    [domainstreamTitle] VARCHAR(500) NOT NULL,
    [domainstreamName] VARCHAR(40) NOT NULL,
    [domainstreamDesc] VARCHAR(40) NOT NULL,
    [domainstream_created] DATETIME NOT NULL,
    [domainstream_updated] DATETIME NOT NULL,
    CONSTRAINT [PK_DomainStream] PRIMARY KEY ([domainstreamId])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [Address] ADD CONSTRAINT [AddressCategory_Address] 
    FOREIGN KEY ([addressCategoryId]) REFERENCES [AddressCategory] ([addressCategoryId])
GO


ALTER TABLE [Article] ADD CONSTRAINT [ArticleCategory_Article] 
    FOREIGN KEY ([articleCategoryId]) REFERENCES [ArticleCategory] ([articleCategoryId])
GO


ALTER TABLE [UserCategory_User] ADD CONSTRAINT [UserCategory_UserCategory_User] 
    FOREIGN KEY ([usercategoryId]) REFERENCES [UserCategory] ([usercategoryId])
GO


ALTER TABLE [UserCategory_User] ADD CONSTRAINT [User_UserCategory_User] 
    FOREIGN KEY ([userId]) REFERENCES [User] ([userId])
GO


ALTER TABLE [Ad] ADD CONSTRAINT [AdCategory_Ad] 
    FOREIGN KEY ([adCategoryId]) REFERENCES [AdCategory] ([adCategoryId])
GO


ALTER TABLE [Order] ADD CONSTRAINT [OrderCategory_Order] 
    FOREIGN KEY ([orderCategoryId]) REFERENCES [OrderCategory] ([orderCategoryId])
GO


ALTER TABLE [Section] ADD CONSTRAINT [SectionCategory_Section] 
    FOREIGN KEY ([sectionCategoryId]) REFERENCES [SectionCategory] ([sectionCategoryId])
GO


ALTER TABLE [Section] ADD CONSTRAINT [Article_Section] 
    FOREIGN KEY ([articleId]) REFERENCES [Article] ([articleId])
GO


ALTER TABLE [Figure] ADD CONSTRAINT [Section_Figure] 
    FOREIGN KEY ([sectionId]) REFERENCES [Section] ([sectionId])
GO


ALTER TABLE [ContentTable] ADD CONSTRAINT [Section_ContentTable] 
    FOREIGN KEY ([sectionId]) REFERENCES [Section] ([sectionId])
GO


ALTER TABLE [User_Article] ADD CONSTRAINT [User_User_Article] 
    FOREIGN KEY ([userId]) REFERENCES [User] ([userId])
GO


ALTER TABLE [User_Article] ADD CONSTRAINT [Article_User_Article] 
    FOREIGN KEY ([articleId]) REFERENCES [Article] ([articleId])
GO


ALTER TABLE [PayoutSummary] ADD CONSTRAINT [PayoutCategory_PayoutSummary] 
    FOREIGN KEY ([payoutCategoryId]) REFERENCES [PayoutCategory] ([payoutCategoryId])
GO


ALTER TABLE [DataSurvey] ADD CONSTRAINT [SurveyCategory_DataSurvey] 
    FOREIGN KEY ([surveyCategoryId]) REFERENCES [SurveyCategory] ([surveyCategoryId])
GO


ALTER TABLE [User_DataSurvey] ADD CONSTRAINT [User_User_DataSurvey] 
    FOREIGN KEY ([userId]) REFERENCES [User] ([userId])
GO


ALTER TABLE [User_DataSurvey] ADD CONSTRAINT [DataSurvey_User_DataSurvey] 
    FOREIGN KEY ([datasurveyId]) REFERENCES [DataSurvey] ([datasurveyId])
GO


ALTER TABLE [Question] ADD CONSTRAINT [QuestionType_Question] 
    FOREIGN KEY ([questionTypeId]) REFERENCES [QuestionType] ([questionTypeId])
GO


ALTER TABLE [DataSurvey_Question] ADD CONSTRAINT [DataSurvey_DataSurvey_Question] 
    FOREIGN KEY ([datasurveyId]) REFERENCES [DataSurvey] ([datasurveyId])
GO


ALTER TABLE [DataSurvey_Question] ADD CONSTRAINT [Question_DataSurvey_Question] 
    FOREIGN KEY ([questionId]) REFERENCES [Question] ([questionId])
GO


ALTER TABLE [Choice] ADD CONSTRAINT [Question_Choice] 
    FOREIGN KEY ([questionId]) REFERENCES [Question] ([questionId])
GO


ALTER TABLE [LanguageTemplate] ADD CONSTRAINT [User_LanguageTemplate] 
    FOREIGN KEY ([userId]) REFERENCES [User] ([userId])
GO


ALTER TABLE [Organization] ADD CONSTRAINT [OrgType_Organization] 
    FOREIGN KEY ([orgTypeId]) REFERENCES [OrgType] ([orgTypeId])
GO

