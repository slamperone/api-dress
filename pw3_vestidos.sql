/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : pw3_vestidos

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2021-06-01 22:06:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `appapi_apikeys`
-- ----------------------------
DROP TABLE IF EXISTS `appapi_apikeys`;
CREATE TABLE `appapi_apikeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_user_id` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `description` text,
  `accessable_until` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of appapi_apikeys
-- ----------------------------
INSERT INTO `appapi_apikeys` VALUES ('2', '1', '2021-05-26 10:37:02', '41', '2021-05-26 10:37:02', '41', 'DWe1uCOpIllGxEwFridl9', '1.0.0', '', '1969-12-31 18:00:00');

-- ----------------------------
-- Table structure for `appapi_applications`
-- ----------------------------
DROP TABLE IF EXISTS `appapi_applications`;
CREATE TABLE `appapi_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text,
  `authtype` int(11) NOT NULL,
  `token_secret` varchar(100) NOT NULL,
  `expires_in` int(11) NOT NULL,
  `accesstoken_secret` varchar(100) NOT NULL,
  `default_application` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of appapi_applications
-- ----------------------------
INSERT INTO `appapi_applications` VALUES ('1', '2021-05-26 10:11:42', '41', '2021-05-26 10:44:20', '41', 'Vestidos', '', '0', 'A4sxBilviEU2R4H9V1UBCPk5AEPKkywA9pI2EH+k4ZJPvgCwj6D2OzUg', '2592000', 'HXJADi4HCCz3M5p4Pfjo3IU0Om3WDxGFByJKIG5b', '1');

-- ----------------------------
-- Table structure for `appapi_apptokens`
-- ----------------------------
DROP TABLE IF EXISTS `appapi_apptokens`;
CREATE TABLE `appapi_apptokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_user_id` int(11) NOT NULL,
  `token_id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `expiration_time` datetime DEFAULT NULL,
  `not_before_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of appapi_apptokens
-- ----------------------------

-- ----------------------------
-- Table structure for `caches`
-- ----------------------------
DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caches
-- ----------------------------
INSERT INTO `caches` VALUES ('Modules.wire/modules/', 'AdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nAdminTheme/AdminThemeUikit/AdminThemeUikit.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeFile.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeImage.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeRepeater/FieldtypeFieldsetPage.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypeToggle.module\nFieldtype/FieldtypeURL.module\nFileCompilerTags.module\nImage/ImageSizerEngineAnimatedGif/ImageSizerEngineAnimatedGif.module\nImage/ImageSizerEngineIMagick/ImageSizerEngineIMagick.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldCheckbox.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldName.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldText.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldToggle/InputfieldToggle.module\nInputfield/InputfieldURL.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/LanguageSupportFields.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLazyCron.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupRSS.module\nPage/PageFrontEdit/PageFrontEdit.module\nPagePathHistory.module\nPagePaths.module\nPagePermissions.module\nPageRender.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessForgotPassword.module\nProcess/ProcessHome.module\nProcess/ProcessList.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessPageClone.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessPagesExportImport/ProcessPagesExportImport.module\nProcess/ProcessPageSort.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessPageView.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessUser/ProcessUser.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemNotifications/SystemNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterStripTags.module', '2010-04-08 03:10:01');
INSERT INTO `caches` VALUES ('ModulesVerbose.info', '{\"148\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"160\":{\"summary\":\"Uikit v3 admin theme\",\"core\":true,\"versionStr\":\"0.3.1\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.5\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.1\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.6\"},\"89\":{\"summary\":\"Field that stores a floating point (decimal) number\",\"core\":true,\"versionStr\":\"1.0.6\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.2\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.2\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"173\":{\"summary\":\"Field that stores single and multi select options.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.5\"},\"175\":{\"summary\":\"A fieldtype containing a group of editable pages.\",\"core\":true,\"versionStr\":\"0.0.8\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"171\":{\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"181\":{\"summary\":\"Fieldset with fields isolated to separate namespace (page), enabling re-use of fields.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"172\":{\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.1\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.7\"},\"170\":{\"summary\":\"Configurable yes\\/no, on\\/off toggle alternative to a checkbox, plus optional \\u201cother\\u201d option.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"2.0.2\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.6\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.7\"},\"155\":{\"summary\":\"CKEditor textarea rich text editor.\",\"core\":true,\"versionStr\":\"1.6.3\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.7\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.1\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.6\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.4\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"40\":{\"summary\":\"Hidden value in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"162\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.2\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.3\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.5\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.7\"},\"174\":{\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"core\":true,\"versionStr\":\"1.1.2\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.2\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"176\":{\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"core\":true,\"versionStr\":\"0.1.3\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"122\":{\"summary\":\"Password input with confirmation field that doesn&#039;t ever echo the input back.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.5\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.2\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"149\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.8\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.2\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"169\":{\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"http:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.8.3\"},\"151\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"http:\\/\\/dimsemenov.com\\/plugins\\/magnific-popup\\/\",\"core\":true,\"versionStr\":\"0.0.1\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"http:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.2.1\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"http:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.9.6\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.1.0\"},\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.7\"},\"156\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"4.9.5\"},\"113\":{\"summary\":\"Adds renderPager() method to all PaginatedArray types, for easy pagination output. Plus a render() method to PageArray instances.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.5\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.3\",\"searchable\":\"fields\"},\"183\":{\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"161\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.8\"},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.1.9\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.8\"},\"164\":{\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.\",\"core\":true,\"versionStr\":\"1.0.4\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.0.9\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.0\"},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.0.8\"},\"12\":{\"summary\":\"List pages in a hierarchical tree structure\",\"core\":true,\"versionStr\":\"1.2.2\"},\"150\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.6\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.0\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.3\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.4\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.4\"},\"159\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.4\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"templates\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\",\"searchable\":\"users\"},\"125\":{\"summary\":\"Throttles login attempts to help prevent dictionary attacks.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"139\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.1.8\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"167\":{\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"168\":{\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"166\":{\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"165\":{\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"core\":true,\"versionStr\":\"1.0.0\"},\"189\":{\"summary\":\"Module to create a REST API with ProcessWire\",\"author\":\"Sebastian Schendel\",\"href\":\"https:\\/\\/modules.processwire.com\\/modules\\/app-api\\/\",\"versionStr\":\"1.1.5\",\"permissions\":{\"appapi_manage_applications\":\"Manage AppApi settings\"},\"page\":{\"name\":\"appapi\",\"parent\":\"setup\",\"title\":\"AppApi\",\"icon\":\"terminal\"}},\"177\":{\"summary\":\"Quick batch creation (titles only or CSV import for other fields), editing, sorting, deletion, and CSV export of all children under a given page.\",\"author\":\"Adrian Jones\",\"href\":\"http:\\/\\/modules.processwire.com\\/modules\\/batch-child-editor\\/\",\"versionStr\":\"1.8.24\",\"permissions\":{\"batch-child-editor\":\"Batch Child Editor\"}},\"178\":{\"summary\":\"Helper module for BatchChildEditor for creating CSV to export\",\"href\":\"http:\\/\\/modules.processwire.com\\/modules\\/batch-child-editor\\/\",\"versionStr\":\"1.8.24\",\"page\":{\"name\":\"children-csv-export\",\"parent\":\"setup\",\"title\":\"Children CSV Export\",\"status\":\"hidden\"}},\"163\":{\"summary\":\"Vestidos Dashboard\",\"versionStr\":\"0.0.1\",\"permissions\":{\"admin-dashboard\":\"Ver Dashboard\"},\"page\":{\"name\":\"dashboard\",\"parent\":\"\\/admin\\/\"}},\"186\":{\"summary\":\"Field that stores a color value as 32bit integer reflecting a RGBA value. Many options for Input (HTML5 Inputfield Color, Textfield with changing background, various jQuery\\/JS ColorPickers, custom jQuery\\/JS\\/CSS) and Output (RGB, RGBA, HSL, HSLA, HEX, Array).\",\"href\":\"https:\\/\\/processwire.com\\/talk\\/topic\\/16679-fieldtypecolor\\/\",\"versionStr\":\"1.1.5\"},\"182\":{\"summary\":\"Field that stores colors as single and multi select options.\",\"versionStr\":\"1.0.1\"},\"185\":{\"summary\":\"Inputfield for colors\",\"href\":\"https:\\/\\/processwire.com\\/talk\\/topic\\/16679-fieldtypecolor\\/\",\"versionStr\":\"1.1.4\"},\"187\":{\"summary\":\"Fieldtype that stores a HEX color or the value transp. Color can be picked using a jQuery ColorPicker Plugin by http:\\/\\/www.eyecon.ro\\/colorpicker\\/ or from a configurable color swatch.\",\"href\":\"http:\\/\\/processwire.com\\/talk\\/topic\\/865-module-colorpicker\\/page__gopid__7340#entry7340\",\"versionStr\":\"2.0.3\"},\"188\":{\"summary\":\"Choose your colors the easy way.\",\"href\":\"http:\\/\\/processwire.com\\/talk\\/topic\\/865-module-colorpicker\\/page__gopid__7340#entry7340\",\"versionStr\":\"2.0.3\"},\"184\":{\"summary\":\"Quickly set the widths of inputfields in a template.\",\"author\":\"Robin Sallis\",\"versionStr\":\"0.1.10\"},\"180\":{\"summary\":\"Enables autocomplete configured text inputs.\",\"author\":\"Macrura\",\"href\":\"https:\\/\\/github.com\\/outflux3\\/TextInputAwesomplete\",\"versionStr\":\"0.0.7\"},\"190\":{\"summary\":\"Import CSV files to create ProcessWire pages.\",\"author\":\"Ryan Cramer\",\"versionStr\":\"1.0.8\",\"page\":{\"name\":\"import-pages-csv\",\"parent\":\"setup\",\"title\":\"Import Pages CSV\"}}}', '2010-04-08 03:10:01');
INSERT INTO `caches` VALUES ('ModulesUninstalled.info', '{\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"versionStr\":\"0.1.7\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1598035122,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":200,\"versionStr\":\"2.0.0\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1598035122,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":108,\"versionStr\":\"1.0.8\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1598035122,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineAnimatedGif\":{\"name\":\"ImageSizerEngineAnimatedGif\",\"title\":\"Animated GIF Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations for animated GIFs.\",\"created\":1598035122,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1598035122,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTitleLanguage\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeTextareaLanguage\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeTextLanguage\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a single line of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupport\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"ProcessWire multi-language support.\",\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1598035122,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"addFlag\":32},\"LanguageSupportFields\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language fields.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupportPageNames\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":10,\"versionStr\":\"0.1.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language page names.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1598035122,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageTabs\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":114,\"versionStr\":\"1.1.4\",\"author\":\"adamspruijt, ryan\",\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1598035122,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessLanguage\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage system languages\",\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"},\"created\":1598035122,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"useNavJSON\":true},\"ProcessLanguageTranslator\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/lazy-cron\\/\",\"autoload\":true,\"singular\":true,\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"autoload\":true,\"singular\":true,\"created\":1598035122,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"permanent\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":103,\"versionStr\":\"1.0.3\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"created\":1598035122,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1598035122,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"license\":\"MPL 2.0\"},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permament) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1598035122,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site). Currently supports only single languages sites.\",\"autoload\":true,\"singular\":true,\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":10,\"versionStr\":\"0.1.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1598035122,\"installed\":false,\"searchable\":\"comments\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessPagesExportImport\":{\"name\":\"ProcessPagesExportImport\",\"title\":\"Pages Export\\/Import\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables exporting and importing of pages. Development version, not yet recommended for production use.\",\"icon\":\"paper-plane-o\",\"permission\":\"page-edit-export\",\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"export-import\",\"parent\":\"page\",\"title\":\"Export\\/Import\"}},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"sessions-db\",\"parent\":\"access\",\"title\":\"Sessions\"}},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1598035122,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1598035122,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1598035122,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterMarkdownExtra\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":130,\"versionStr\":\"1.3.0\",\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"created\":1598035122,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1598035122,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"ConnectPageFields\":{\"name\":\"ConnectPageFields\",\"title\":\"Connect Page Fields\",\"version\":\"0.3.2\",\"versionStr\":\"0.3.2\",\"author\":\"Robin Sallis\",\"summary\":\"Allows the connecting of two related Page Reference fields so that changing one updates the other.\",\"href\":\"https:\\/\\/github.com\\/Toutouwai\\/ConnectPageFields\",\"icon\":\"arrows-h\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.166\"],\"PHP\":[\">=\",\"5.4.0\"]},\"autoload\":true,\"created\":1621900049,\"installed\":false,\"configurable\":4},\"Maridajes\":{\"name\":\"Maridajes\",\"title\":\"Maridajes\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Gestionar Maridajes\",\"requiresVersions\":{\"WineDashboard\":[\">=\",0]},\"permission\":\"admin-dashboard\",\"permissions\":{\"admin-vino-view\":\"Ver Maridaje\",\"admin-vino-edit\":\"Editar Maridaje\",\"admin-vino-delete\":\"Eliminar Maridaje\"},\"created\":1621892009,\"installed\":false,\"namespace\":\"\\\\\",\"page\":{\"name\":\"maridajes\",\"parent\":\"\\/engine\\/vinos\\/\"}},\"Paises\":{\"name\":\"Paises\",\"title\":\"Paises\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Gestionar Paises\",\"requiresVersions\":{\"WineDashboard\":[\">=\",0]},\"permission\":\"admin-dashboard\",\"permissions\":{\"admin-vino-view\":\"Ver Trivia\",\"admin-vino-edit\":\"Editar Trivia\",\"admin-vino-delete\":\"Eliminar Trivia\"},\"created\":1621892009,\"installed\":false,\"namespace\":\"\\\\\",\"page\":{\"name\":\"paises\",\"parent\":\"\\/engine\\/vinos\\/\"}},\"TipoDeVinos\":{\"name\":\"TipoDeVinos\",\"title\":\"Tipo de Vinos\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Gestionar Tipo de Vinos\",\"requiresVersions\":{\"WineDashboard\":[\">=\",0]},\"permission\":\"admin-dashboard\",\"permissions\":{\"admin-tipo-vino-view\":\"Ver Tipo de Vino\",\"admin-tipo-vino-edit\":\"Editar Tipo de Vino\",\"admin-tipo-vino-delete\":\"Eliminar Tipo de Vino\"},\"created\":1621892009,\"installed\":false,\"namespace\":\"\\\\\",\"page\":{\"name\":\"tipo_vinos\",\"parent\":\"\\/engine\\/vinos\\/\"}},\"Uvas\":{\"name\":\"Uvas\",\"title\":\"Uvas\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Gestionar Uvas\",\"requiresVersions\":{\"WineDashboard\":[\">=\",0]},\"permission\":\"admin-dashboard\",\"permissions\":{\"admin-vino-view\":\"Ver Uva\",\"admin-vino-edit\":\"Editar Uva\",\"admin-vino-delete\":\"Eliminar Uva\"},\"created\":1621892009,\"installed\":false,\"namespace\":\"\\\\\",\"page\":{\"name\":\"uvas\",\"parent\":\"\\/engine\\/vinos\\/\"}},\"Vinos\":{\"name\":\"Vinos\",\"title\":\"Vinos\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Gestionar Vinos\",\"requiresVersions\":{\"WineDashboard\":[\">=\",0]},\"permission\":\"admin-dashboard\",\"permissions\":{\"admin-vino-view\":\"Ver Trivia\",\"admin-vino-edit\":\"Editar Trivia\",\"admin-vino-delete\":\"Eliminar Trivia\"},\"created\":1621892009,\"installed\":false,\"namespace\":\"\\\\\",\"page\":{\"name\":\"vinos\",\"parent\":\"\\/engine\\/\"}},\"VinosImport\":{\"name\":\"VinosImport\",\"title\":\"Importar Vinos\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Importar Vinos\",\"requiresVersions\":{\"WineVinos\":[\">=\",0]},\"created\":1621892009,\"installed\":false,\"namespace\":\"\\\\\",\"page\":{\"name\":\"import-vinos\",\"parent\":\"\\/engine\\/vinos\\/\"}},\"FieldtypeSelectExtOption\":{\"name\":\"FieldtypeSelectExtOption\",\"title\":\"Select External Option\",\"version\":210,\"versionStr\":\"2.1.0\",\"author\":\"kixe\",\"summary\":\"Fieldtype which generates the options for a Select Inputfield from *any* table in *any* database hosted *anywhere*. Define database, source table, columns (to pull value &amp; label) and the preferred Inputfieldtype in field settings.\",\"href\":\"http:\\/\\/modules.processwire.com\\/modules\\/fieldtype-select-ext-option\\/\",\"icon\":\"database\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.148\"]},\"created\":1621899994,\"installed\":false,\"license\":\"GNU-GPLv3\",\"hreflicense\":\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-3.0.html\"},\"FieldtypeTextUnique\":{\"name\":\"FieldtypeTextUnique\",\"title\":\"Text Unique\",\"version\":301,\"versionStr\":\"3.0.1\",\"summary\":\"Same as the Text fieldtype, but enforces that values stored are unique, site-wide.\",\"href\":\"https:\\/\\/github.com\\/ryancramerdesign\\/FieldtypeTextUnique\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.150\"]},\"created\":1621900015,\"installed\":false},\"Helloworld\":{\"name\":\"Helloworld\",\"title\":\"Hello World\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"An example module used for demonstration purposes.\",\"href\":\"https:\\/\\/processwire.com\",\"icon\":\"smile-o\",\"autoload\":true,\"singular\":true,\"created\":1621889729,\"installed\":false},\"FieldtypeMystique\":{\"name\":\"FieldtypeMystique\",\"title\":\"Mystique\",\"version\":\"0.0.16\",\"versionStr\":\"0.0.16\",\"author\":\"\\u0130skender TOTO\\u011eLU | @ukyo(community), @trk (Github), https:\\/\\/www.altivebir.com\",\"summary\":\"Mystique fields data for ProcessWire CMS\\/CMF by ALTI VE BIR.\",\"href\":\"https:\\/\\/www.altivebir.com\",\"icon\":\"cogs\",\"requiresVersions\":{\"PHP\":[\">=\",\"7.0.0\"],\"ProcessWire\":[\">=\",\"3.0.0\"],\"Mystique\":[\">=\",0]},\"created\":1621900423,\"installed\":false},\"InputfieldMystique\":{\"name\":\"InputfieldMystique\",\"title\":\"Mystique\",\"version\":\"0.0.16\",\"versionStr\":\"0.0.16\",\"author\":\"\\u0130skender TOTO\\u011eLU | @ukyo(community), @trk (Github), https:\\/\\/www.altivebir.com\",\"summary\":\"Provides builder input for ProcessWire CMS\\/CMF by ALTI VE BIR.\",\"href\":\"https:\\/\\/www.altivebir.com\",\"icon\":\"cogs\",\"requiresVersions\":{\"PHP\":[\">=\",\"7.0.0\"],\"ProcessWire\":[\">=\",\"3.0.0\"],\"FieldtypeMystique\":[\">=\",0]},\"created\":1621900423,\"installed\":false},\"Mystique\":{\"name\":\"Mystique\",\"title\":\"Mystique\",\"version\":\"0.0.16\",\"versionStr\":\"0.0.16\",\"author\":\"\\u0130skender TOTO\\u011eLU | @ukyo(community), @trk (Github), https:\\/\\/www.altivebir.com\",\"summary\":\"Mystique is a config file based field creation module for ProcessWire CMS\\/CMF by ALTI VE BIR.\",\"href\":\"https:\\/\\/www.altivebir.com\",\"icon\":\"cogs\",\"requiresVersions\":{\"PHP\":[\">=\",\"7.0.0\"],\"ProcessWire\":[\">=\",\"3.0.0\"]},\"installs\":[\"FieldtypeMystique\",\"InputfieldMystique\"],\"autoload\":true,\"singular\":true,\"created\":1621900423,\"installed\":false,\"configurable\":3}}', '2010-04-08 03:10:01');
INSERT INTO `caches` VALUES ('Modules.site/modules/', 'AppApi-master/AppApi.module.php\nBatchChildEditor-master/BatchChildEditor.module.php\nBatchChildEditor-master/ProcessChildrenCsvExport.module.php\nConnectPageFields-master/ConnectPageFields.module\nDresses/DressesDashboard.module\nDresses/Vinos/Maridajes.module\nDresses/Vinos/Paises.module\nDresses/Vinos/TipoDeVinos.module\nDresses/Vinos/Uvas.module\nDresses/Vinos/Vinos.module\nDresses/Vinos/VinosImport.module\nFieldtypeColor-master/FieldtypeColor.module\nFieldtypeColor-master/FieldtypeOptionsColor.module\nFieldtypeColor-master/InputfieldColor.module\nFieldtypeSelectExtOption-master/FieldtypeSelectExtOption.module\nFieldtypeTextUnique-master/FieldtypeTextUnique.module\nHelloworld/Helloworld.module\nMystique-master/FieldtypeMystique.module.php\nMystique-master/InputfieldMystique.module.php\nMystique-master/Mystique.module.php\nryancramerdesign-ImportPagesCSV-93fa3f1/ImportPagesCSV.module\nsomatonic-ColorPicker-e12ae99/FieldtypeColorPicker.module\nsomatonic-ColorPicker-e12ae99/InputfieldColorPicker.module\nTemplateFieldWidths-master/TemplateFieldWidths.module\nTextInputAwesomplete-master/TextInputAwesomplete.module', '2010-04-08 03:10:01');
INSERT INTO `caches` VALUES ('FileCompiler__1c636da79a598e2b5191fc3ecbd1e1cd', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/templates\\/home.php\",\"hash\":\"ffbc589d53b92516b9a888dfa7c8c940\",\"size\":875,\"time\":1622057236,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"6222621c412d0bd84914dead86397de3\",\"size\":888,\"time\":1622057236}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__793d59b31e02dd9f064893f8293a89e8', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/templates\\/basic-page.php\",\"hash\":\"db5828c7dd5a5123c7963c0fb016f7a7\",\"size\":419,\"time\":1598035122,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/basic-page.php\",\"hash\":\"db5828c7dd5a5123c7963c0fb016f7a7\",\"size\":419,\"time\":1598035122}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__efcaad496a3f4087f8e9e310a08623d0', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1598035122,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1598035122}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__37235731da444100dbf79aa5a71a6378', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/Dresses\\/DressesDashboard.module\",\"hash\":\"0b558dade07d3fae736d4e3626b6c030\",\"size\":1008,\"time\":1621892096,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/Dresses\\/DressesDashboard.module\",\"hash\":\"ac2123b2d2231da9cd83f451139aae92\",\"size\":1021,\"time\":1621892096}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__4b424beab7b3d312402407449bfbb4b4', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/Dresses\\/Vinos\\/Maridajes.module\",\"hash\":\"58c7883f9769c253a1cedbbba63b212f\",\"size\":4912,\"time\":1606873740,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/Dresses\\/Vinos\\/Maridajes.module\",\"hash\":\"a2dd99749df9262227ee84c4dced8dc1\",\"size\":5165,\"time\":1606873740}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__ea07dfee7f6b6de391bfc4c60a761d19', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/Dresses\\/Vinos\\/Paises.module\",\"hash\":\"5d111e4476ba30e81c1fd8bf867a901d\",\"size\":4919,\"time\":1606872941,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/Dresses\\/Vinos\\/Paises.module\",\"hash\":\"27e98b5e120e9043affe216378e39e58\",\"size\":5169,\"time\":1606872941}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__2162b2fd6a850ecd1c14aba9263d16b1', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/Dresses\\/Vinos\\/TipoDeVinos.module\",\"hash\":\"0170a46c8c121458bb78036ecc39db35\",\"size\":4961,\"time\":1606875102,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/Dresses\\/Vinos\\/TipoDeVinos.module\",\"hash\":\"5bd130433ef1d192a999a1122151fa8d\",\"size\":5216,\"time\":1606875102}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__ac15f5840c84ac382463b68a1ab7d7df', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/Dresses\\/Vinos\\/Uvas.module\",\"hash\":\"3f181d1045de7c722b184a05fe62be6e\",\"size\":4862,\"time\":1606873707,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/Dresses\\/Vinos\\/Uvas.module\",\"hash\":\"c0db779485bafe1ea3777cbd924af6fe\",\"size\":5110,\"time\":1606873707}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__ebb01890694419459d37c7c7fd402853', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/Dresses\\/Vinos\\/Vinos.module\",\"hash\":\"2ad748fe7e64debb938b378aa107fdda\",\"size\":8189,\"time\":1600200383,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/Dresses\\/Vinos\\/Vinos.module\",\"hash\":\"cf72d852392b52e23466943220b1145b\",\"size\":8542,\"time\":1600200383}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__3bbbef78bfefe5edaf510ad4ada47258', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/Dresses\\/Vinos\\/VinosImport.module\",\"hash\":\"7194273cf54feca0aa55b65ad85c8855\",\"size\":2827,\"time\":1601491189,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/Dresses\\/Vinos\\/VinosImport.module\",\"hash\":\"6ee3db3b1e7efed16957b33c30a39f5c\",\"size\":2866,\"time\":1601491189}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__f6a9f0afd9713be930a68e9d6741ea50', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/BatchChildEditor-master\\/BatchChildEditor.module.php\",\"hash\":\"2500c4270868db9482fc35cc428783cd\",\"size\":156329,\"time\":1614534394,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/BatchChildEditor-master\\/BatchChildEditor.module.php\",\"hash\":\"8e2b2a34bd9119cd42c4a7bbadc4a5ae\",\"size\":161567,\"time\":1614534394}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__9e128834846f98b150ee5427190d8171', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/BatchChildEditor-master\\/ProcessChildrenCsvExport.module.php\",\"hash\":\"f9bf39c7b934997d3710321320d9afeb\",\"size\":13346,\"time\":1614534394,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/BatchChildEditor-master\\/ProcessChildrenCsvExport.module.php\",\"hash\":\"30a51ce4121ea6a42c36cf25a8f5206f\",\"size\":14204,\"time\":1614534394}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__25a94c50a40417d01784162f859ed3db', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/TextInputAwesomplete-master\\/TextInputAwesomplete.module\",\"hash\":\"8281fee6929dda0b794641f67cc9f559\",\"size\":11286,\"time\":1584487322,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TextInputAwesomplete-master\\/TextInputAwesomplete.module\",\"hash\":\"79a0c9fb7b5835c45dcd50acbbc56fb1\",\"size\":12017,\"time\":1584487322}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__fed1c75014aac534ce3ab8b3f08235a1', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/somatonic-ColorPicker-e12ae99\\/FieldtypeColorPicker.module\",\"hash\":\"a5662dad93c52208b2bb67ee927704a9\",\"size\":4310,\"time\":1535639495,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/somatonic-ColorPicker-e12ae99\\/FieldtypeColorPicker.module\",\"hash\":\"075fa213e401de3a823507bd005ec87f\",\"size\":4479,\"time\":1535639495}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__e687cef4d0f3fd5a1c1eac6894ed2f33', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/somatonic-ColorPicker-e12ae99\\/InputfieldColorPicker.module\",\"hash\":\"61be546def986999e0fdff5833779d84\",\"size\":3009,\"time\":1535639495,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/somatonic-ColorPicker-e12ae99\\/InputfieldColorPicker.module\",\"hash\":\"e164f2881909deb7457cf4eef67a4701\",\"size\":3022,\"time\":1535639495}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__bb4c836951c12d7c5add793af4bcb304', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/modules\\/AppApi-master\\/AppApi.config.php\",\"hash\":\"972f494e0fa4dc63b328a13e186c10ab\",\"size\":914,\"time\":1615629278,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/AppApi-master\\/AppApi.config.php\",\"hash\":\"972f494e0fa4dc63b328a13e186c10ab\",\"size\":914,\"time\":1615629278}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('Modules.info', '{\"148\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1621889729,\"configurable\":19,\"namespace\":\"ProcessWire\\\\\"},\"160\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":31,\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.100\"]},\"autoload\":\"template=admin\",\"created\":1621889771,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\"},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":1,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":105,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\"},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":101,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\"},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":1,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":101,\"singular\":1,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":1,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":106,\"created\":1621889728,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":106,\"singular\":1,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":102,\"created\":1621889729,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":102,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":101,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"173\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":1,\"singular\":1,\"created\":1621967449,\"namespace\":\"ProcessWire\\\\\"},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":105,\"created\":1621889728,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"175\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"singular\":true,\"created\":1621967506,\"namespace\":\"ProcessWire\\\\\"},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":true,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"171\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":106,\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"singular\":true,\"created\":1621902049,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"181\":{\"name\":\"FieldtypeFieldsetPage\",\"title\":\"Fieldset (Page)\",\"version\":1,\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1621972784,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"172\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":106,\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1621902049,\"namespace\":\"ProcessWire\\\\\"},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":101,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":107,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"170\":{\"name\":\"FieldtypeToggle\",\"title\":\"Toggle (Yes\\/No)\",\"version\":1,\"requiresVersions\":{\"InputfieldToggle\":[\">=\",0]},\"singular\":true,\"created\":1621902038,\"namespace\":\"ProcessWire\\\\\"},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":true,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":202,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":106,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":107,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"155\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":163,\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\"},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":107,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":101,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\"},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":126,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":104,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"162\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":2,\"created\":1621889792,\"namespace\":\"ProcessWire\\\\\"},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":123,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":105,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":107,\"created\":1621889729,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"174\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":112,\"created\":1621967503,\"namespace\":\"ProcessWire\\\\\"},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":102,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1621889729,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"176\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":13,\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1621967506,\"namespace\":\"ProcessWire\\\\\"},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":102,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":105,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":102,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"149\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":28,\"autoload\":\"template=admin\",\"created\":1621889729,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"addFlag\":32},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":102,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"169\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"created\":1621902038,\"namespace\":\"ProcessWire\\\\\"},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":102,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\"},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":183,\"singular\":true,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"151\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":1,\"singular\":1,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\"},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":221,\"singular\":1,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\"},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":196,\"singular\":true,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":110,\"created\":1621889728,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":107,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"156\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":495,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\"},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1621889727,\"namespace\":\"ProcessWire\\\\\"},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":105,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\"},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1621889728,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":113,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1621889728,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"183\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":103,\"permission\":\"page-view\",\"singular\":1,\"created\":1621972859,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\"},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"161\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1621889792,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":108,\"permission\":\"page-view\",\"created\":1621889728,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":119,\"permission\":\"module-admin\",\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?new#tab_new_modules\",\"label\":\"New\",\"icon\":\"plus\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":108,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1621889728,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"164\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":104,\"permission\":\"page-clone\",\"autoload\":\"template=admin\",\"singular\":true,\"created\":1621901963,\"namespace\":\"ProcessWire\\\\\"},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":109,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1621889728,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":120,\"permission\":\"page-edit\",\"singular\":1,\"created\":1621889729,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":108,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1621889728,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":122,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1621889728,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"150\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":26,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1621889729,\"configurable\":true,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":106,\"permission\":\"page-edit\",\"singular\":1,\"created\":1621889729,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":100,\"permission\":\"page-edit\",\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":103,\"singular\":1,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1621889729,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":104,\"permission\":\"page-view\",\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1621889729,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":104,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1621889729,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"159\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1621889771,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":104,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1621889729,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1621889728,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1621889729,\"configurable\":\"ProcessUserConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":103,\"autoload\":\"function\",\"singular\":true,\"created\":1621889728,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"139\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":18,\"singular\":true,\"created\":1621889729,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1621889729,\"namespace\":\"ProcessWire\\\\\"},\"167\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"singular\":1,\"created\":1621902002,\"namespace\":\"ProcessWire\\\\\"},\"168\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"singular\":1,\"created\":1621902018,\"namespace\":\"ProcessWire\\\\\"},\"166\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"singular\":1,\"created\":1621901990,\"namespace\":\"ProcessWire\\\\\"},\"165\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"singular\":1,\"created\":1621901976,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"189\":{\"name\":\"AppApi\",\"title\":\"AppApi\",\"version\":\"1.1.5\",\"icon\":\"terminal\",\"requiresVersions\":{\"PHP\":[\">=\",\"7.2.0\"],\"ProcessWire\":[\">=\",\"3.0.98\"]},\"autoload\":true,\"singular\":true,\"created\":1622041850,\"configurable\":\"AppApi.config.php\"},\"177\":{\"name\":\"BatchChildEditor\",\"title\":\"Batch child editor\",\"version\":\"1.8.24\",\"icon\":\"child\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"2.5.24\"]},\"installs\":[\"ProcessChildrenCsvExport\"],\"autoload\":\"template=admin\",\"created\":1621967536,\"configurable\":3,\"namespace\":\"\\\\\"},\"178\":{\"name\":\"ProcessChildrenCsvExport\",\"title\":\"Process Children CSV Export\",\"version\":\"1.8.24\",\"requiresVersions\":{\"BatchChildEditor\":[\">=\",0]},\"permission\":\"batch-child-editor\",\"singular\":true,\"created\":1621967536,\"namespace\":\"\\\\\"},\"163\":{\"name\":\"DressesDashboard\",\"title\":\"Dashboard\",\"version\":1,\"permission\":\"admin-dashboard\",\"singular\":1,\"created\":1621892080,\"namespace\":\"\\\\\"},\"186\":{\"name\":\"FieldtypeColor\",\"title\":\"Color\",\"version\":115,\"installs\":[\"InputfieldColor\"],\"singular\":true,\"created\":1621990269},\"182\":{\"name\":\"FieldtypeOptionsColor\",\"title\":\"Select Color Options\",\"version\":101,\"requiresVersions\":{\"FieldtypeOptions\":[\">=\",0]},\"installs\":[\"FieldtypeOptions\"],\"singular\":1,\"created\":1621972805},\"185\":{\"name\":\"InputfieldColor\",\"title\":\"Color\",\"version\":114,\"created\":1621990158},\"187\":{\"name\":\"FieldtypeColorPicker\",\"title\":\"ColorPicker\",\"version\":203,\"installs\":[\"InputfieldColorPicker\"],\"singular\":1,\"created\":1621990286,\"namespace\":\"\\\\\"},\"188\":{\"name\":\"InputfieldColorPicker\",\"title\":\"ColorPicker\",\"version\":203,\"requiresVersions\":{\"FieldtypeColorPicker\":[\">=\",0]},\"created\":1621990286,\"namespace\":\"\\\\\"},\"184\":{\"name\":\"TemplateFieldWidths\",\"title\":\"Template Field Widths\",\"version\":\"0.1.10\",\"icon\":\"arrows-h\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.0\"]},\"autoload\":\"template=admin\",\"created\":1621972897,\"configurable\":4},\"180\":{\"name\":\"TextInputAwesomplete\",\"title\":\"Text Input Awesomplete\",\"version\":\"007\",\"icon\":\"mouse-pointer\",\"autoload\":\"template=admin\",\"singular\":true,\"created\":1621972289,\"namespace\":\"\\\\\"},\"190\":{\"name\":\"ImportPagesCSV\",\"title\":\"Import Pages from CSV\",\"version\":108,\"icon\":\"table\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.123\"]},\"singular\":true}}', '2010-04-08 03:10:01');
INSERT INTO `caches` VALUES ('Permissions.names', '{\"admin-dashboard\":1035,\"appapi_manage_applications\":1120,\"batch-child-editor\":1050,\"logs-edit\":1014,\"logs-view\":1013,\"page-clone\":1040,\"page-clone-tree\":1041,\"page-delete\":34,\"page-edit\":32,\"page-edit-recent\":1011,\"page-lister\":1006,\"page-lock\":54,\"page-move\":35,\"page-sort\":50,\"page-template\":51,\"page-view\":36,\"profile-edit\":53,\"user-admin\":52}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__a79c146aba7758cbc0a1b22edb3328a2', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/templates\\/productos.php\",\"hash\":\"04a2d5aea9dc77318a7719710167ce9f\",\"size\":1466,\"time\":1622585881,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/productos.php\",\"hash\":\"e49ed956bf831b81cefc65ee51ca8cc3\",\"size\":1479,\"time\":1622585881}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__4b9ca6df6c585d0d62ca9f80d18c19b7', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/templates\\/producto_vestido.php\",\"hash\":\"c6f79886cc71eca202c655d04fa5c16d\",\"size\":2494,\"time\":1622599076,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/producto_vestido.php\",\"hash\":\"c6f79886cc71eca202c655d04fa5c16d\",\"size\":2494,\"time\":1622599076}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__50fe0bc48906af566ded624a13ca9486', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/ready.php\",\"hash\":\"2d0efdf34a9ce3d81ba031ecb13c7f8c\",\"size\":602,\"time\":1622591478,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/ready.php\",\"hash\":\"c7c31522005a01213ad11295ff5a3a54\",\"size\":641,\"time\":1622591478}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__c88c68e27c3ea1e74022cb2b1e7aed0e', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/templates\\/coleccion.php\",\"hash\":\"ed9240b636dede00a0bcbe682370ab10\",\"size\":1513,\"time\":1622599360,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/coleccion.php\",\"hash\":\"7cad9903ab6f5b73b32f41af3268dff2\",\"size\":1526,\"time\":1622599360}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__936163bc98cb14c93778f9bf6157fdb0', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/templates\\/store.php\",\"hash\":\"a3e1d567605dcb804817498b2751ab7a\",\"size\":3168,\"time\":1622601510,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/store.php\",\"hash\":\"a3e1d567605dcb804817498b2751ab7a\",\"size\":3168,\"time\":1622601510}}', '2010-04-08 03:10:10');
INSERT INTO `caches` VALUES ('FileCompiler__762932589eca3fb3fa933a540fc007a0', '{\"source\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/templates\\/distribuidores.php\",\"hash\":\"0a69cb169954f8211a841ac63de74edb\",\"size\":818,\"time\":1622601442,\"ns\":\"\\\\\"},\"target\":{\"file\":\"S:\\/www\\/orpot\\/vestidos\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/distribuidores.php\",\"hash\":\"0a69cb169954f8211a841ac63de74edb\",\"size\":818,\"time\":1622601442}}', '2010-04-08 03:10:10');

-- ----------------------------
-- Table structure for `fieldgroups`
-- ----------------------------
DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fieldgroups
-- ----------------------------
INSERT INTO `fieldgroups` VALUES ('2', 'admin');
INSERT INTO `fieldgroups` VALUES ('3', 'user');
INSERT INTO `fieldgroups` VALUES ('4', 'role');
INSERT INTO `fieldgroups` VALUES ('5', 'permission');
INSERT INTO `fieldgroups` VALUES ('1', 'home');
INSERT INTO `fieldgroups` VALUES ('83', 'basic-page');
INSERT INTO `fieldgroups` VALUES ('97', 'producto_vestido');
INSERT INTO `fieldgroups` VALUES ('125', 'opts_mangas');
INSERT INTO `fieldgroups` VALUES ('100', 'categories');
INSERT INTO `fieldgroups` VALUES ('101', 'category');
INSERT INTO `fieldgroups` VALUES ('102', 'features');
INSERT INTO `fieldgroups` VALUES ('103', 'productos');
INSERT INTO `fieldgroups` VALUES ('105', 'op_corte');
INSERT INTO `fieldgroups` VALUES ('106', 'op_material');
INSERT INTO `fieldgroups` VALUES ('107', 'op_color');
INSERT INTO `fieldgroups` VALUES ('108', 'op_talla');
INSERT INTO `fieldgroups` VALUES ('109', 'opts_colores');
INSERT INTO `fieldgroups` VALUES ('110', 'opts_cortes');
INSERT INTO `fieldgroups` VALUES ('111', 'opts_caracteristicas');
INSERT INTO `fieldgroups` VALUES ('112', 'opts_tallas');
INSERT INTO `fieldgroups` VALUES ('113', 'opts_material');
INSERT INTO `fieldgroups` VALUES ('114', 'op_caracteristica');
INSERT INTO `fieldgroups` VALUES ('115', 'repeater_opts_caracteristicas');
INSERT INTO `fieldgroups` VALUES ('116', 'opts_colecciones');
INSERT INTO `fieldgroups` VALUES ('117', 'op_coleccion');
INSERT INTO `fieldgroups` VALUES ('118', 'store');
INSERT INTO `fieldgroups` VALUES ('119', 'stores');
INSERT INTO `fieldgroups` VALUES ('120', 'opts_escotes');
INSERT INTO `fieldgroups` VALUES ('121', 'op_escote');
INSERT INTO `fieldgroups` VALUES ('123', 'opts_vestidos');
INSERT INTO `fieldgroups` VALUES ('124', 'op_vestido');
INSERT INTO `fieldgroups` VALUES ('126', 'op_manga');
INSERT INTO `fieldgroups` VALUES ('127', 'opts_caida');
INSERT INTO `fieldgroups` VALUES ('128', 'op_caida');
INSERT INTO `fieldgroups` VALUES ('129', 'opts_extras');
INSERT INTO `fieldgroups` VALUES ('130', 'op_extra');
INSERT INTO `fieldgroups` VALUES ('131', 'coleccion');
INSERT INTO `fieldgroups` VALUES ('132', 'colecciones');
INSERT INTO `fieldgroups` VALUES ('133', 'store_config');
INSERT INTO `fieldgroups` VALUES ('134', 'distribuidores');
INSERT INTO `fieldgroups` VALUES ('135', 'distribuidor');

-- ----------------------------
-- Table structure for `fieldgroups_fields`
-- ----------------------------
DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fieldgroups_fields
-- ----------------------------
INSERT INTO `fieldgroups_fields` VALUES ('2', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('4', '5', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('5', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('83', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('1', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('3', '97', '3', null);
INSERT INTO `fieldgroups_fields` VALUES ('125', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('126', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('100', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('124', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('102', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('2', '2', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('97', '121', '11', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '122', '12', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '120', '13', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '108', '14', '{\"collapsed\":\"9\",\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` VALUES ('103', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('101', '1', '0', '{\"label\":\"Nombre\"}');
INSERT INTO `fieldgroups_fields` VALUES ('105', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('97', '112', '10', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` VALUES ('109', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('110', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('111', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('112', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('113', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('114', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('118', '129', '6', null);
INSERT INTO `fieldgroups_fields` VALUES ('97', '109', '15', '{\"collapsed\":\"9\",\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '110', '16', '{\"collapsed\":\"9\"}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '106', '8', '{\"collapsed\":\"9\",\"columnWidth\":60}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '99', '1', '{\"collapsed\":\"9\",\"columnWidth\":20,\"usePages\":1}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '114', '2', '{\"columnWidth\":41}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '98', '3', '{\"collapsed\":\"9\",\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '115', '4', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '107', '5', '{\"collapsed\":\"9\",\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '105', '6', '{\"collapsed\":\"9\",\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` VALUES ('116', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('117', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('119', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('3', '3', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('3', '92', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('3', '4', '2', null);
INSERT INTO `fieldgroups_fields` VALUES ('101', '100', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('3', '111', '4', null);
INSERT INTO `fieldgroups_fields` VALUES ('120', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('123', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('127', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('105', '100', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('106', '100', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('106', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('118', '124', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` VALUES ('118', '125', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` VALUES ('118', '126', '4', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` VALUES ('118', '127', '5', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` VALUES ('107', '118', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` VALUES ('128', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('135', '1', '1', '{\"columnWidth\":40,\"label\":\"Nombre\",\"usePages\":1}');
INSERT INTO `fieldgroups_fields` VALUES ('118', '128', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('129', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('130', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('117', '100', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('131', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('117', '123', '2', null);
INSERT INTO `fieldgroups_fields` VALUES ('132', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('133', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('108', '1', '0', '{\"label\":\"Titulo\",\"usePages\":1}');
INSERT INTO `fieldgroups_fields` VALUES ('107', '1', '0', '{\"columnWidth\":50,\"label\":\"Nombre\",\"usePages\":1}');
INSERT INTO `fieldgroups_fields` VALUES ('121', '1', '0', '{\"label\":\"Nombre\",\"usePages\":1}');
INSERT INTO `fieldgroups_fields` VALUES ('118', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('134', '1', '0', '{\"label\":\"Nombre\",\"usePages\":1}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '138', '11', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '139', '2', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '130', '3', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '131', '4', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '132', '5', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '133', '6', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '134', '7', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '135', '8', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '136', '9', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '137', '10', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` VALUES ('121', '100', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('97', '113', '9', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '103', '7', '{\"collapsed\":\"9\",\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` VALUES ('97', '1', '0', '{\"columnWidth\":39,\"label\":\"Nombre del Vestido\",\"notes\":\"Por favor escriba el nombre del vestido\",\"usePages\":1}');
INSERT INTO `fieldgroups_fields` VALUES ('135', '140', '0', '{\"columnWidth\":20}');

-- ----------------------------
-- Table structure for `fields`
-- ----------------------------
DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `name` varchar(250) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fields
-- ----------------------------
INSERT INTO `fields` VALUES ('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` VALUES ('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` VALUES ('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` VALUES ('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` VALUES ('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` VALUES ('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` VALUES ('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` VALUES ('98', 'FieldtypePage', 'producto_corte', '0', 'Corte', '{\"derefAsPage\":2,\"inputfield\":\"InputfieldSelect\",\"parent_id\":1043,\"labelFieldName\":\"title\",\"collapsed\":0,\"template_id\":51,\"findPagesSelect\":\"template=51\",\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('99', 'FieldtypeText', 'producto_sku', '0', 'SKU', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"tags\":\"Producto\",\"usePages\":1}');
INSERT INTO `fields` VALUES ('100', 'FieldtypeImage', 'option_image', '0', 'Imagen', '{\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png svg\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":0,\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0}');
INSERT INTO `fields` VALUES ('101', 'FieldtypeRepeater', 'opts_caracteristicas', '0', 'Características', '{\"template_id\":61,\"parent_id\":1048,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}');
INSERT INTO `fields` VALUES ('102', 'FieldtypeText', 'op_caracteristica', '0', 'Característica', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` VALUES ('103', 'FieldtypePage', 'producto_materiales', '0', 'Material', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldCheckboxes\",\"parent_id\":1044,\"template_id\":52,\"labelFieldName\":\"title\",\"collapsed\":0,\"addable\":1,\"optionColumns\":2,\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('105', 'FieldtypePage', 'producto_color', '0', 'Color', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldCheckboxes\",\"parent_id\":1045,\"labelFieldName\":\"title\",\"collapsed\":0,\"size\":10,\"optionColumns\":2,\"addable\":1,\"template_id\":53,\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('106', 'FieldtypePage', 'producto_caracteristica', '0', 'Caracteristica', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldCheckboxes\",\"parent_id\":1047,\"labelFieldName\":\"title\",\"collapsed\":0,\"operator\":\"%=\",\"searchFields\":\"title\",\"addable\":1,\"template_id\":60,\"optionColumns\":2,\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('107', 'FieldtypePage', 'producto_talla', '0', 'Talla', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldCheckboxes\",\"parent_id\":1046,\"labelFieldName\":\"title\",\"collapsed\":0,\"addable\":1,\"operator\":\"~*=\",\"searchFields\":\"title\",\"template_id\":54,\"optionColumns\":2,\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('108', 'FieldtypeImage', 'producto_img_frente', '0', 'Imagen Frente', '{\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"tags\":\"Producto\",\"collapsed\":0}');
INSERT INTO `fields` VALUES ('109', 'FieldtypeImage', 'producto_img_atras', '0', 'Imagen Trasera', '{\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"tags\":\"Producto\",\"collapsed\":0}');
INSERT INTO `fields` VALUES ('110', 'FieldtypeImage', 'producto_imagenes', '0', 'Imagenes', '{\"fileSchema\":270,\"textformatters\":[\"TextformatterEntities\"],\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":10,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":0,\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('111', 'FieldtypePage', 'user_store', '0', 'Asignar Tienda', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldSelect\",\"parent_id\":0,\"template_id\":64,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` VALUES ('112', 'FieldtypeToggle', 'producto_activo', '0', 'Activo', '{\"formatType\":0,\"labelType\":100,\"inputfieldClass\":0,\"useVertical\":0,\"yesLabel\":\"\\u2713 Si\",\"noLabel\":\"\\u2717 No\",\"otherLabel\":\"?\",\"defaultOption\":\"yes\",\"collapsed\":0,\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('113', 'FieldtypeToggle', 'producto_home', '0', 'Mostrar en Inicio', '{\"formatType\":0,\"labelType\":100,\"inputfieldClass\":0,\"useVertical\":0,\"yesLabel\":\"\\u2713 Si\",\"noLabel\":\"\\u2717No\",\"otherLabel\":\"?\",\"defaultOption\":\"yes\",\"collapsed\":0,\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('114', 'FieldtypePage', 'producto_coleccion', '0', 'Colección', '{\"derefAsPage\":2,\"inputfield\":\"InputfieldSelect\",\"parent_id\":1070,\"template_id\":63,\"labelFieldName\":\".\",\"collapsed\":0,\"addable\":1,\"labelFieldFormat\":\"{title}  ({option_store})\",\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('115', 'FieldtypePage', 'producto_escote', '0', 'Escote', '{\"derefAsPage\":2,\"inputfield\":\"InputfieldSelect\",\"parent_id\":1075,\"template_id\":67,\"labelFieldName\":\"title\",\"collapsed\":0,\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('118', 'FieldtypeColor', 'option_color_hex', '0', 'Color', '{\"outputFormat\":0,\"defaultValue\":\"#000000\",\"collapsed\":0,\"inputType\":0,\"alpha\":0}');
INSERT INTO `fields` VALUES ('119', 'FieldtypePageTable', 'producto_colores', '0', 'Colores', '{\"template_id\":[53],\"parent_id\":1045,\"trashOnDelete\":0,\"unpubOnTrash\":0,\"unpubOnUnpub\":0,\"collapsed\":0,\"noclose\":0,\"columns\":\"title\\ncolor_hex\",\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('120', 'FieldtypePage', 'producto_mangas', '0', 'Tipo de Manga', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldCheckboxes\",\"parent_id\":1154,\"labelFieldName\":\"title\",\"collapsed\":0,\"optionColumns\":2,\"template_id\":72,\"addable\":1,\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('121', 'FieldtypePage', 'producto_caida', '0', 'Tipo de Caida', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldCheckboxes\",\"parent_id\":1157,\"template_id\":74,\"labelFieldName\":\"title\",\"addable\":1,\"collapsed\":0,\"optionColumns\":0}');
INSERT INTO `fields` VALUES ('122', 'FieldtypePage', 'producto_extras', '0', 'Extras', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldCheckboxes\",\"parent_id\":1160,\"labelFieldName\":\"title\",\"collapsed\":0,\"optionColumns\":2,\"template_id\":76,\"addable\":1,\"tags\":\"Producto\"}');
INSERT INTO `fields` VALUES ('123', 'FieldtypePage', 'option_store', '0', 'Asignar a tienda', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldCheckboxes\",\"parent_id\":0,\"template_id\":64,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` VALUES ('124', 'FieldtypeURL', 'store_facebook', '0', 'Facebook', '{\"tags\":\"Tienda\",\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"usePages\":1,\"textformatters\":[\"TextformatterEntities\"]}');
INSERT INTO `fields` VALUES ('125', 'FieldtypeURL', 'store_url', '0', 'Url', '{\"textformatters\":[\"TextformatterEntities\"],\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"usePages\":1}');
INSERT INTO `fields` VALUES ('126', 'FieldtypeURL', 'store_twitter', '0', 'Twitter', '{\"textformatters\":[\"TextformatterEntities\"],\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"usePages\":1,\"tags\":\"Tienda\"}');
INSERT INTO `fields` VALUES ('127', 'FieldtypeURL', 'store_instagram', '0', 'Instagram', '{\"textformatters\":[\"TextformatterEntities\"],\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"usePages\":1,\"tags\":\"Tienda\"}');
INSERT INTO `fields` VALUES ('128', 'FieldtypeTextarea', 'store_desc', '0', 'Descripción', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"tags\":\"Tienda\"}');
INSERT INTO `fields` VALUES ('129', 'FieldtypeTextarea', 'store_metatags', '0', 'Metatags', '{\"tags\":\"Tienda\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` VALUES ('130', 'FieldtypeEmail', 'dist_email', '0', 'E-Mail', '{\"tags\":\"Distribuidor\",\"collapsed\":0,\"minlength\":0,\"maxlength\":250,\"showCount\":0,\"size\":0,\"usePages\":1}');
INSERT INTO `fields` VALUES ('131', 'FieldtypeText', 'dist_phone', '0', 'Telefono', '{\"tags\":\"Distribuidor\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"usePages\":1}');
INSERT INTO `fields` VALUES ('132', 'FieldtypeText', 'dist_phone_1', '0', 'Teléfono 1', '{\"tags\":\"Distribuidor\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"usePages\":1}');
INSERT INTO `fields` VALUES ('133', 'FieldtypeText', 'dist_contacto', '0', 'Contacto', '{\"tags\":\"Distribuidor\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"usePages\":1}');
INSERT INTO `fields` VALUES ('134', 'FieldtypeText', 'dist_sucursal', '0', 'Sucursal', '{\"tags\":\"Distribuidor\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"usePages\":1}');
INSERT INTO `fields` VALUES ('135', 'FieldtypeText', 'dist_whatsapp', '0', 'Whats app', '{\"tags\":\"Distribuidor\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"usePages\":1}');
INSERT INTO `fields` VALUES ('136', 'FieldtypeText', 'dist_estado', '0', 'Estado', '{\"tags\":\"Distribuidor\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"usePages\":1}');
INSERT INTO `fields` VALUES ('137', 'FieldtypeText', 'dist_ciudad', '0', 'Ciudad', '{\"tags\":\"Distribuidor\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"usePages\":1}');
INSERT INTO `fields` VALUES ('138', 'FieldtypeText', 'dist_clasificacion', '0', 'Clasificación', '{\"tags\":\"Distribuidor\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"usePages\":1}');
INSERT INTO `fields` VALUES ('139', 'FieldtypePage', 'dist_store', '0', 'Tienda', '{\"tags\":\"Distribuidor\",\"derefAsPage\":0,\"inputfield\":\"InputfieldSelect\",\"parent_id\":0,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` VALUES ('140', 'FieldtypeText', 'dist_id', '0', 'ID Cliente', '{\"tags\":\"Distribuidor\",\"textformatters\":[\"TextformatterStripTags\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"usePages\":1}');

-- ----------------------------
-- Table structure for `fieldtype_options`
-- ----------------------------
DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fieldtype_options
-- ----------------------------

-- ----------------------------
-- Table structure for `field_admin_theme`
-- ----------------------------
DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_admin_theme
-- ----------------------------

-- ----------------------------
-- Table structure for `field_dist_ciudad`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_ciudad`;
CREATE TABLE `field_dist_ciudad` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_ciudad
-- ----------------------------
INSERT INTO `field_dist_ciudad` VALUES ('1175', 'MINATITLAN');
INSERT INTO `field_dist_ciudad` VALUES ('1176', 'TAMPICO');
INSERT INTO `field_dist_ciudad` VALUES ('1177', 'LOS MOCHIS');
INSERT INTO `field_dist_ciudad` VALUES ('1178', 'TEZIUTLAN');
INSERT INTO `field_dist_ciudad` VALUES ('1179', 'CHILPANCINGO');
INSERT INTO `field_dist_ciudad` VALUES ('1180', 'MORELIA');
INSERT INTO `field_dist_ciudad` VALUES ('1181', 'CIUDAD VICTORIA');
INSERT INTO `field_dist_ciudad` VALUES ('1182', 'RIO BRAVO');
INSERT INTO `field_dist_ciudad` VALUES ('1183', 'MAC ALLEN ');
INSERT INTO `field_dist_ciudad` VALUES ('1184', 'JEREZ');
INSERT INTO `field_dist_ciudad` VALUES ('1185', 'PUERTO VALLARTA');
INSERT INTO `field_dist_ciudad` VALUES ('1186', 'SAN LUIS POTOSI');

-- ----------------------------
-- Table structure for `field_dist_clasificacion`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_clasificacion`;
CREATE TABLE `field_dist_clasificacion` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_clasificacion
-- ----------------------------
INSERT INTO `field_dist_clasificacion` VALUES ('1175', '0');
INSERT INTO `field_dist_clasificacion` VALUES ('1176', '0');
INSERT INTO `field_dist_clasificacion` VALUES ('1177', '0');
INSERT INTO `field_dist_clasificacion` VALUES ('1178', '0');
INSERT INTO `field_dist_clasificacion` VALUES ('1179', '0');
INSERT INTO `field_dist_clasificacion` VALUES ('1180', '0');
INSERT INTO `field_dist_clasificacion` VALUES ('1181', '0');
INSERT INTO `field_dist_clasificacion` VALUES ('1182', '0');
INSERT INTO `field_dist_clasificacion` VALUES ('1183', '0');
INSERT INTO `field_dist_clasificacion` VALUES ('1184', '0');
INSERT INTO `field_dist_clasificacion` VALUES ('1185', '3');
INSERT INTO `field_dist_clasificacion` VALUES ('1186', '0');

-- ----------------------------
-- Table structure for `field_dist_contacto`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_contacto`;
CREATE TABLE `field_dist_contacto` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_contacto
-- ----------------------------
INSERT INTO `field_dist_contacto` VALUES ('1175', 'MISMA');
INSERT INTO `field_dist_contacto` VALUES ('1176', 'MARTHA MORALES CASTILLO');
INSERT INTO `field_dist_contacto` VALUES ('1179', 'SRA.MARIBEL');
INSERT INTO `field_dist_contacto` VALUES ('1180', 'SRA  ELVIRA, CONSUELO');
INSERT INTO `field_dist_contacto` VALUES ('1182', 'MARTHA E. VILLAREAL O SRITA. LUPITA');
INSERT INTO `field_dist_contacto` VALUES ('1183', 'MISMA');
INSERT INTO `field_dist_contacto` VALUES ('1184', 'HIJA SUSANA CORTEZ ');
INSERT INTO `field_dist_contacto` VALUES ('1185', 'MISMA Y/ O JORGE RAMOS (HIJO)');
INSERT INTO `field_dist_contacto` VALUES ('1186', 'SRTA.  MARYCARMEN Y/O SRITA.GELA (PEDIDOS)   (NOHEMI MENDOZA)');

-- ----------------------------
-- Table structure for `field_dist_email`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_email`;
CREATE TABLE `field_dist_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_email
-- ----------------------------
INSERT INTO `field_dist_email` VALUES ('1175', 'jiuseth.olvera@gmail.com');
INSERT INTO `field_dist_email` VALUES ('1176', 'artenupcialsadecv@hotmail.com');
INSERT INTO `field_dist_email` VALUES ('1177', 'rosa_edith@hotmail.com');
INSERT INTO `field_dist_email` VALUES ('1178', 'alberto_mm@live.com.mx');
INSERT INTO `field_dist_email` VALUES ('1180', 'silvestrestone1@hotmail.com');
INSERT INTO `field_dist_email` VALUES ('1181', 'novissima_novias@hotmail.com');
INSERT INTO `field_dist_email` VALUES ('1182', 'martha.elvira.52@hotmail.com');
INSERT INTO `field_dist_email` VALUES ('1184', 'noviaskristal@hotmail.com');
INSERT INTO `field_dist_email` VALUES ('1185', 'casademodasdeadelajimenez@hotmail.com');
INSERT INTO `field_dist_email` VALUES ('1186', 'alana.bodega@hotmail.com');

-- ----------------------------
-- Table structure for `field_dist_estado`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_estado`;
CREATE TABLE `field_dist_estado` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_estado
-- ----------------------------
INSERT INTO `field_dist_estado` VALUES ('1175', 'VERACRUZ');
INSERT INTO `field_dist_estado` VALUES ('1176', 'TAMAULIPAS');
INSERT INTO `field_dist_estado` VALUES ('1177', 'SINALOA');
INSERT INTO `field_dist_estado` VALUES ('1178', 'PUEBLA');
INSERT INTO `field_dist_estado` VALUES ('1179', 'GUERRERO');
INSERT INTO `field_dist_estado` VALUES ('1180', 'MICHOACAN');
INSERT INTO `field_dist_estado` VALUES ('1181', 'TAMAULIPAS');
INSERT INTO `field_dist_estado` VALUES ('1182', 'TAMAULIPAS');
INSERT INTO `field_dist_estado` VALUES ('1183', 'TEXAS');
INSERT INTO `field_dist_estado` VALUES ('1184', 'ZACATECAS');
INSERT INTO `field_dist_estado` VALUES ('1185', 'JALISCO');
INSERT INTO `field_dist_estado` VALUES ('1186', 'SAN LUIS POTOSI');

-- ----------------------------
-- Table structure for `field_dist_id`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_id`;
CREATE TABLE `field_dist_id` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_id
-- ----------------------------
INSERT INTO `field_dist_id` VALUES ('1175', '133');
INSERT INTO `field_dist_id` VALUES ('1176', '1098');
INSERT INTO `field_dist_id` VALUES ('1177', '940');
INSERT INTO `field_dist_id` VALUES ('1178', '805');
INSERT INTO `field_dist_id` VALUES ('1179', '711');
INSERT INTO `field_dist_id` VALUES ('1180', '123');
INSERT INTO `field_dist_id` VALUES ('1181', '42');
INSERT INTO `field_dist_id` VALUES ('1182', '75');
INSERT INTO `field_dist_id` VALUES ('1183', '897');
INSERT INTO `field_dist_id` VALUES ('1184', '318');
INSERT INTO `field_dist_id` VALUES ('1185', '540');
INSERT INTO `field_dist_id` VALUES ('1186', '107');

-- ----------------------------
-- Table structure for `field_dist_phone`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_phone`;
CREATE TABLE `field_dist_phone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_phone
-- ----------------------------
INSERT INTO `field_dist_phone` VALUES ('1175', '922 223 4025 TDA');
INSERT INTO `field_dist_phone` VALUES ('1176', '833 212 12 16');
INSERT INTO `field_dist_phone` VALUES ('1177', '668 812 56 80');
INSERT INTO `field_dist_phone` VALUES ('1178', '232 373 58 61');
INSERT INTO `field_dist_phone` VALUES ('1179', '747 472 40 90 **');
INSERT INTO `field_dist_phone` VALUES ('1180', '443 313 8939');
INSERT INTO `field_dist_phone` VALUES ('1181', '834 312 7085 TDA');
INSERT INTO `field_dist_phone` VALUES ('1182', '(899)934-02-54**');
INSERT INTO `field_dist_phone` VALUES ('1183', '19566300820');
INSERT INTO `field_dist_phone` VALUES ('1184', '492)9222089');
INSERT INTO `field_dist_phone` VALUES ('1185', '322 222 1546 TDA');
INSERT INTO `field_dist_phone` VALUES ('1186', '(444)812-26-36BOD');

-- ----------------------------
-- Table structure for `field_dist_phone_1`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_phone_1`;
CREATE TABLE `field_dist_phone_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_phone_1
-- ----------------------------
INSERT INTO `field_dist_phone_1` VALUES ('1175', '(922)222-50-00CAS');
INSERT INTO `field_dist_phone_1` VALUES ('1178', '452311088498');
INSERT INTO `field_dist_phone_1` VALUES ('1179', '045 747 1122 886');
INSERT INTO `field_dist_phone_1` VALUES ('1180', '443 312 2970');
INSERT INTO `field_dist_phone_1` VALUES ('1183', '8183170206 MONTER');
INSERT INTO `field_dist_phone_1` VALUES ('1184', '494)9454642 (R)');
INSERT INTO `field_dist_phone_1` VALUES ('1185', '322 429 38 86 ESM');
INSERT INTO `field_dist_phone_1` VALUES ('1186', '(444)814-82-31');

-- ----------------------------
-- Table structure for `field_dist_store`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_store`;
CREATE TABLE `field_dist_store` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_store
-- ----------------------------

-- ----------------------------
-- Table structure for `field_dist_sucursal`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_sucursal`;
CREATE TABLE `field_dist_sucursal` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_sucursal
-- ----------------------------
INSERT INTO `field_dist_sucursal` VALUES ('1175', 'EL PALACIO DE LA NOVIA');
INSERT INTO `field_dist_sucursal` VALUES ('1177', 'LA SILUETA');
INSERT INTO `field_dist_sucursal` VALUES ('1178', 'MARTINEZ DE LA TORRE   SUC. 2');
INSERT INTO `field_dist_sucursal` VALUES ('1180', '**CASA BARCHELI**');
INSERT INTO `field_dist_sucursal` VALUES ('1181', ')');
INSERT INTO `field_dist_sucursal` VALUES ('1183', 'MARVEL');
INSERT INTO `field_dist_sucursal` VALUES ('1184', 'ZACATECAS');
INSERT INTO `field_dist_sucursal` VALUES ('1185', 'NOVIAS KOKE');

-- ----------------------------
-- Table structure for `field_dist_whatsapp`
-- ----------------------------
DROP TABLE IF EXISTS `field_dist_whatsapp`;
CREATE TABLE `field_dist_whatsapp` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_dist_whatsapp
-- ----------------------------
INSERT INTO `field_dist_whatsapp` VALUES ('1175', '(921)212-67-25COA');
INSERT INTO `field_dist_whatsapp` VALUES ('1180', '313 89 39CONSUELO');
INSERT INTO `field_dist_whatsapp` VALUES ('1186', '(444)812-80-49COB');

-- ----------------------------
-- Table structure for `field_email`
-- ----------------------------
DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_email
-- ----------------------------
INSERT INTO `field_email` VALUES ('41', 'daniel@orpot.com');
INSERT INTO `field_email` VALUES ('1036', 'editor@gmail.com');

-- ----------------------------
-- Table structure for `field_option_color_hex`
-- ----------------------------
DROP TABLE IF EXISTS `field_option_color_hex`;
CREATE TABLE `field_option_color_hex` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_option_color_hex
-- ----------------------------
INSERT INTO `field_option_color_hex` VALUES ('1061', '4294566369');
INSERT INTO `field_option_color_hex` VALUES ('1062', '4294967295');
INSERT INTO `field_option_color_hex` VALUES ('1063', '4294954188');
INSERT INTO `field_option_color_hex` VALUES ('1082', '4292796126');
INSERT INTO `field_option_color_hex` VALUES ('1128', '4293980415');
INSERT INTO `field_option_color_hex` VALUES ('1145', '4294790734');

-- ----------------------------
-- Table structure for `field_option_image`
-- ----------------------------
DROP TABLE IF EXISTS `field_option_image`;
CREATE TABLE `field_option_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_option_image
-- ----------------------------
INSERT INTO `field_option_image` VALUES ('1076', 'barco.png', '0', '', '2021-05-26 12:49:33', '2021-05-26 12:49:33', '', '83117', '41', '41', '692', '800', '0.87');
INSERT INTO `field_option_image` VALUES ('1079', 'corazon.png', '0', '', '2021-05-26 12:56:33', '2021-05-26 12:56:33', '', '79510', '41', '41', '692', '800', '0.87');

-- ----------------------------
-- Table structure for `field_option_store`
-- ----------------------------
DROP TABLE IF EXISTS `field_option_store`;
CREATE TABLE `field_option_store` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_option_store
-- ----------------------------
INSERT INTO `field_option_store` VALUES ('1088', '1015', '0');
INSERT INTO `field_option_store` VALUES ('1089', '1015', '0');
INSERT INTO `field_option_store` VALUES ('1090', '1015', '0');
INSERT INTO `field_option_store` VALUES ('1091', '1015', '0');
INSERT INTO `field_option_store` VALUES ('1095', '1015', '0');
INSERT INTO `field_option_store` VALUES ('1092', '1016', '0');
INSERT INTO `field_option_store` VALUES ('1136', '1016', '0');
INSERT INTO `field_option_store` VALUES ('1137', '1016', '0');
INSERT INTO `field_option_store` VALUES ('1139', '1016', '0');

-- ----------------------------
-- Table structure for `field_opts_caracteristicas`
-- ----------------------------
DROP TABLE IF EXISTS `field_opts_caracteristicas`;
CREATE TABLE `field_opts_caracteristicas` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_opts_caracteristicas
-- ----------------------------

-- ----------------------------
-- Table structure for `field_op_caracteristica`
-- ----------------------------
DROP TABLE IF EXISTS `field_op_caracteristica`;
CREATE TABLE `field_op_caracteristica` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_op_caracteristica
-- ----------------------------

-- ----------------------------
-- Table structure for `field_pass`
-- ----------------------------
DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

-- ----------------------------
-- Records of field_pass
-- ----------------------------
INSERT INTO `field_pass` VALUES ('41', '6AWWhJ7W9HafRiSo4hTsHp.YJkV8HZK', '$2y$11$ETsTVNQ.GvoHGN8AzvisYO');
INSERT INTO `field_pass` VALUES ('40', '', '');
INSERT INTO `field_pass` VALUES ('1036', 'aucP7VprehAlImW3.zUUY7lqE9WS1ea', '$2y$11$gYpEzAVoOzg5pmr4YsiJVu');

-- ----------------------------
-- Table structure for `field_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_permissions
-- ----------------------------
INSERT INTO `field_permissions` VALUES ('38', '32', '1');
INSERT INTO `field_permissions` VALUES ('38', '34', '2');
INSERT INTO `field_permissions` VALUES ('38', '35', '3');
INSERT INTO `field_permissions` VALUES ('37', '36', '0');
INSERT INTO `field_permissions` VALUES ('38', '36', '0');
INSERT INTO `field_permissions` VALUES ('1033', '36', '0');
INSERT INTO `field_permissions` VALUES ('1074', '36', '0');
INSERT INTO `field_permissions` VALUES ('38', '50', '4');
INSERT INTO `field_permissions` VALUES ('38', '51', '5');
INSERT INTO `field_permissions` VALUES ('38', '52', '7');
INSERT INTO `field_permissions` VALUES ('38', '53', '8');
INSERT INTO `field_permissions` VALUES ('1074', '53', '1');
INSERT INTO `field_permissions` VALUES ('38', '54', '6');
INSERT INTO `field_permissions` VALUES ('1033', '1035', '1');

-- ----------------------------
-- Table structure for `field_process`
-- ----------------------------
DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_process
-- ----------------------------
INSERT INTO `field_process` VALUES ('6', '17');
INSERT INTO `field_process` VALUES ('3', '12');
INSERT INTO `field_process` VALUES ('8', '12');
INSERT INTO `field_process` VALUES ('9', '14');
INSERT INTO `field_process` VALUES ('10', '7');
INSERT INTO `field_process` VALUES ('11', '47');
INSERT INTO `field_process` VALUES ('16', '48');
INSERT INTO `field_process` VALUES ('300', '104');
INSERT INTO `field_process` VALUES ('21', '50');
INSERT INTO `field_process` VALUES ('29', '66');
INSERT INTO `field_process` VALUES ('23', '10');
INSERT INTO `field_process` VALUES ('304', '138');
INSERT INTO `field_process` VALUES ('31', '136');
INSERT INTO `field_process` VALUES ('22', '76');
INSERT INTO `field_process` VALUES ('30', '68');
INSERT INTO `field_process` VALUES ('303', '129');
INSERT INTO `field_process` VALUES ('2', '87');
INSERT INTO `field_process` VALUES ('302', '121');
INSERT INTO `field_process` VALUES ('301', '109');
INSERT INTO `field_process` VALUES ('28', '76');
INSERT INTO `field_process` VALUES ('1007', '150');
INSERT INTO `field_process` VALUES ('1010', '159');
INSERT INTO `field_process` VALUES ('1012', '161');
INSERT INTO `field_process` VALUES ('1034', '163');
INSERT INTO `field_process` VALUES ('1039', '164');
INSERT INTO `field_process` VALUES ('1051', '178');
INSERT INTO `field_process` VALUES ('1119', '189');
INSERT INTO `field_process` VALUES ('1174', '190');

-- ----------------------------
-- Table structure for `field_producto_activo`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_activo`;
CREATE TABLE `field_producto_activo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_activo
-- ----------------------------
INSERT INTO `field_producto_activo` VALUES ('1018', '1');
INSERT INTO `field_producto_activo` VALUES ('1019', '1');
INSERT INTO `field_producto_activo` VALUES ('1017', '1');
INSERT INTO `field_producto_activo` VALUES ('1083', '1');
INSERT INTO `field_producto_activo` VALUES ('1087', '1');
INSERT INTO `field_producto_activo` VALUES ('1096', '1');
INSERT INTO `field_producto_activo` VALUES ('1098', '1');
INSERT INTO `field_producto_activo` VALUES ('1099', '1');
INSERT INTO `field_producto_activo` VALUES ('1100', '1');
INSERT INTO `field_producto_activo` VALUES ('1101', '1');
INSERT INTO `field_producto_activo` VALUES ('1102', '1');
INSERT INTO `field_producto_activo` VALUES ('1103', '1');
INSERT INTO `field_producto_activo` VALUES ('1104', '1');
INSERT INTO `field_producto_activo` VALUES ('1105', '1');
INSERT INTO `field_producto_activo` VALUES ('1106', '1');
INSERT INTO `field_producto_activo` VALUES ('1107', '1');
INSERT INTO `field_producto_activo` VALUES ('1108', '1');
INSERT INTO `field_producto_activo` VALUES ('1109', '1');
INSERT INTO `field_producto_activo` VALUES ('1110', '1');
INSERT INTO `field_producto_activo` VALUES ('1111', '1');
INSERT INTO `field_producto_activo` VALUES ('1112', '1');
INSERT INTO `field_producto_activo` VALUES ('1123', '1');
INSERT INTO `field_producto_activo` VALUES ('1124', '1');
INSERT INTO `field_producto_activo` VALUES ('1126', '1');
INSERT INTO `field_producto_activo` VALUES ('1127', '1');
INSERT INTO `field_producto_activo` VALUES ('1149', '1');
INSERT INTO `field_producto_activo` VALUES ('1151', '1');
INSERT INTO `field_producto_activo` VALUES ('1152', '1');
INSERT INTO `field_producto_activo` VALUES ('1187', '1');

-- ----------------------------
-- Table structure for `field_producto_caida`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_caida`;
CREATE TABLE `field_producto_caida` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_caida
-- ----------------------------
INSERT INTO `field_producto_caida` VALUES ('1018', '1158', '0');
INSERT INTO `field_producto_caida` VALUES ('1019', '1158', '0');
INSERT INTO `field_producto_caida` VALUES ('1123', '1158', '0');
INSERT INTO `field_producto_caida` VALUES ('1187', '1158', '0');
INSERT INTO `field_producto_caida` VALUES ('1018', '1159', '1');
INSERT INTO `field_producto_caida` VALUES ('1019', '1159', '1');
INSERT INTO `field_producto_caida` VALUES ('1123', '1159', '1');
INSERT INTO `field_producto_caida` VALUES ('1187', '1159', '1');

-- ----------------------------
-- Table structure for `field_producto_caracteristica`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_caracteristica`;
CREATE TABLE `field_producto_caracteristica` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_caracteristica
-- ----------------------------
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1019', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1083', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1087', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1096', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1098', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1099', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1100', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1101', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1102', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1103', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1104', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1105', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1106', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1107', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1108', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1109', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1110', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1111', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1112', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1123', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1124', '1067', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1019', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1083', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1087', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1100', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1101', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1106', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1109', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1110', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1111', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1123', '1068', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1069', '2');
INSERT INTO `field_producto_caracteristica` VALUES ('1019', '1069', '2');
INSERT INTO `field_producto_caracteristica` VALUES ('1107', '1069', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1112', '1069', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1081', '3');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1097', '4');
INSERT INTO `field_producto_caracteristica` VALUES ('1096', '1097', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1098', '1097', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1099', '1097', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1102', '1097', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1103', '1097', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1104', '1097', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1105', '1097', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1107', '1097', '2');
INSERT INTO `field_producto_caracteristica` VALUES ('1108', '1097', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1112', '1097', '2');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1134', '5');
INSERT INTO `field_producto_caracteristica` VALUES ('1019', '1134', '3');
INSERT INTO `field_producto_caracteristica` VALUES ('1123', '1134', '2');
INSERT INTO `field_producto_caracteristica` VALUES ('1124', '1134', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1135', '6');
INSERT INTO `field_producto_caracteristica` VALUES ('1123', '1135', '3');
INSERT INTO `field_producto_caracteristica` VALUES ('1126', '1135', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1151', '1135', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1152', '1135', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1142', '7');
INSERT INTO `field_producto_caracteristica` VALUES ('1019', '1142', '4');
INSERT INTO `field_producto_caracteristica` VALUES ('1126', '1142', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1127', '1142', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1149', '1142', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1151', '1142', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1152', '1142', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1187', '1142', '0');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1143', '8');
INSERT INTO `field_producto_caracteristica` VALUES ('1126', '1143', '2');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1144', '9');
INSERT INTO `field_producto_caracteristica` VALUES ('1126', '1144', '3');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1148', '10');
INSERT INTO `field_producto_caracteristica` VALUES ('1127', '1148', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1187', '1148', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1150', '11');
INSERT INTO `field_producto_caracteristica` VALUES ('1149', '1150', '1');
INSERT INTO `field_producto_caracteristica` VALUES ('1018', '1153', '12');
INSERT INTO `field_producto_caracteristica` VALUES ('1152', '1153', '2');
INSERT INTO `field_producto_caracteristica` VALUES ('1187', '1188', '2');

-- ----------------------------
-- Table structure for `field_producto_coleccion`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_coleccion`;
CREATE TABLE `field_producto_coleccion` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_coleccion
-- ----------------------------
INSERT INTO `field_producto_coleccion` VALUES ('1018', '1088', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1099', '1088', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1019', '1089', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1100', '1089', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1107', '1089', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1083', '1090', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1109', '1090', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1017', '1091', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1101', '1091', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1108', '1091', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1087', '1092', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1103', '1092', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1110', '1092', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1152', '1092', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1102', '1093', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1104', '1093', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1111', '1093', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1098', '1094', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1105', '1094', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1112', '1094', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1127', '1094', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1123', '1136', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1151', '1136', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1187', '1136', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1124', '1137', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1149', '1137', '0');
INSERT INTO `field_producto_coleccion` VALUES ('1126', '1139', '0');

-- ----------------------------
-- Table structure for `field_producto_color`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_color`;
CREATE TABLE `field_producto_color` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_color
-- ----------------------------
INSERT INTO `field_producto_color` VALUES ('1018', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1019', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1083', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1087', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1096', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1098', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1099', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1100', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1101', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1102', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1103', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1104', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1105', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1106', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1107', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1108', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1109', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1110', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1111', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1112', '1061', '0');
INSERT INTO `field_producto_color` VALUES ('1018', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1019', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1083', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1087', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1096', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1098', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1099', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1100', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1101', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1102', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1103', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1104', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1105', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1106', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1107', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1108', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1109', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1110', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1111', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1112', '1062', '1');
INSERT INTO `field_producto_color` VALUES ('1017', '1063', '0');
INSERT INTO `field_producto_color` VALUES ('1018', '1063', '2');
INSERT INTO `field_producto_color` VALUES ('1017', '1082', '1');
INSERT INTO `field_producto_color` VALUES ('1018', '1082', '3');
INSERT INTO `field_producto_color` VALUES ('1019', '1082', '2');
INSERT INTO `field_producto_color` VALUES ('1123', '1128', '0');
INSERT INTO `field_producto_color` VALUES ('1018', '1129', '4');
INSERT INTO `field_producto_color` VALUES ('1019', '1129', '3');
INSERT INTO `field_producto_color` VALUES ('1123', '1129', '1');
INSERT INTO `field_producto_color` VALUES ('1126', '1129', '0');
INSERT INTO `field_producto_color` VALUES ('1149', '1129', '0');
INSERT INTO `field_producto_color` VALUES ('1151', '1129', '0');
INSERT INTO `field_producto_color` VALUES ('1152', '1129', '0');
INSERT INTO `field_producto_color` VALUES ('1123', '1130', '2');
INSERT INTO `field_producto_color` VALUES ('1123', '1131', '3');
INSERT INTO `field_producto_color` VALUES ('1124', '1131', '1');
INSERT INTO `field_producto_color` VALUES ('1123', '1132', '4');
INSERT INTO `field_producto_color` VALUES ('1123', '1133', '5');
INSERT INTO `field_producto_color` VALUES ('1124', '1133', '2');
INSERT INTO `field_producto_color` VALUES ('1151', '1133', '1');
INSERT INTO `field_producto_color` VALUES ('1124', '1138', '0');
INSERT INTO `field_producto_color` VALUES ('1126', '1140', '1');
INSERT INTO `field_producto_color` VALUES ('1149', '1140', '1');
INSERT INTO `field_producto_color` VALUES ('1152', '1140', '1');
INSERT INTO `field_producto_color` VALUES ('1126', '1141', '2');
INSERT INTO `field_producto_color` VALUES ('1149', '1141', '2');
INSERT INTO `field_producto_color` VALUES ('1152', '1141', '2');
INSERT INTO `field_producto_color` VALUES ('1127', '1145', '0');
INSERT INTO `field_producto_color` VALUES ('1187', '1145', '0');
INSERT INTO `field_producto_color` VALUES ('1127', '1146', '1');
INSERT INTO `field_producto_color` VALUES ('1187', '1146', '1');
INSERT INTO `field_producto_color` VALUES ('1127', '1147', '2');
INSERT INTO `field_producto_color` VALUES ('1187', '1147', '2');

-- ----------------------------
-- Table structure for `field_producto_colores`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_colores`;
CREATE TABLE `field_producto_colores` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_colores
-- ----------------------------

-- ----------------------------
-- Table structure for `field_producto_corte`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_corte`;
CREATE TABLE `field_producto_corte` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_corte
-- ----------------------------
INSERT INTO `field_producto_corte` VALUES ('1126', '1052', '0');
INSERT INTO `field_producto_corte` VALUES ('1017', '1053', '0');
INSERT INTO `field_producto_corte` VALUES ('1019', '1053', '0');
INSERT INTO `field_producto_corte` VALUES ('1103', '1053', '0');
INSERT INTO `field_producto_corte` VALUES ('1108', '1053', '0');
INSERT INTO `field_producto_corte` VALUES ('1112', '1053', '0');
INSERT INTO `field_producto_corte` VALUES ('1083', '1054', '0');
INSERT INTO `field_producto_corte` VALUES ('1087', '1054', '0');
INSERT INTO `field_producto_corte` VALUES ('1099', '1054', '0');
INSERT INTO `field_producto_corte` VALUES ('1105', '1054', '0');
INSERT INTO `field_producto_corte` VALUES ('1107', '1054', '0');
INSERT INTO `field_producto_corte` VALUES ('1110', '1054', '0');
INSERT INTO `field_producto_corte` VALUES ('1111', '1054', '0');
INSERT INTO `field_producto_corte` VALUES ('1018', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1096', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1098', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1101', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1102', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1104', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1106', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1109', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1123', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1127', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1149', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1151', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1152', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1187', '1055', '0');
INSERT INTO `field_producto_corte` VALUES ('1100', '1056', '0');

-- ----------------------------
-- Table structure for `field_producto_escote`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_escote`;
CREATE TABLE `field_producto_escote` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_escote
-- ----------------------------
INSERT INTO `field_producto_escote` VALUES ('1017', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1083', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1087', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1096', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1098', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1100', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1101', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1102', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1103', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1105', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1106', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1107', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1108', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1110', '1076', '0');
INSERT INTO `field_producto_escote` VALUES ('1019', '1077', '0');
INSERT INTO `field_producto_escote` VALUES ('1099', '1077', '0');
INSERT INTO `field_producto_escote` VALUES ('1104', '1077', '0');
INSERT INTO `field_producto_escote` VALUES ('1109', '1077', '0');
INSERT INTO `field_producto_escote` VALUES ('1111', '1077', '0');
INSERT INTO `field_producto_escote` VALUES ('1112', '1077', '0');
INSERT INTO `field_producto_escote` VALUES ('1123', '1077', '0');
INSERT INTO `field_producto_escote` VALUES ('1127', '1077', '0');
INSERT INTO `field_producto_escote` VALUES ('1151', '1077', '0');
INSERT INTO `field_producto_escote` VALUES ('1018', '1079', '0');
INSERT INTO `field_producto_escote` VALUES ('1126', '1079', '0');
INSERT INTO `field_producto_escote` VALUES ('1152', '1079', '0');
INSERT INTO `field_producto_escote` VALUES ('1187', '1079', '0');

-- ----------------------------
-- Table structure for `field_producto_extras`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_extras`;
CREATE TABLE `field_producto_extras` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_extras
-- ----------------------------
INSERT INTO `field_producto_extras` VALUES ('1018', '1161', '0');
INSERT INTO `field_producto_extras` VALUES ('1019', '1161', '0');
INSERT INTO `field_producto_extras` VALUES ('1123', '1161', '0');
INSERT INTO `field_producto_extras` VALUES ('1152', '1161', '0');
INSERT INTO `field_producto_extras` VALUES ('1187', '1161', '0');
INSERT INTO `field_producto_extras` VALUES ('1018', '1162', '1');
INSERT INTO `field_producto_extras` VALUES ('1123', '1162', '1');
INSERT INTO `field_producto_extras` VALUES ('1152', '1162', '1');
INSERT INTO `field_producto_extras` VALUES ('1018', '1163', '2');
INSERT INTO `field_producto_extras` VALUES ('1019', '1163', '1');
INSERT INTO `field_producto_extras` VALUES ('1123', '1163', '2');
INSERT INTO `field_producto_extras` VALUES ('1152', '1163', '2');
INSERT INTO `field_producto_extras` VALUES ('1187', '1163', '1');

-- ----------------------------
-- Table structure for `field_producto_home`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_home`;
CREATE TABLE `field_producto_home` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_home
-- ----------------------------
INSERT INTO `field_producto_home` VALUES ('1018', '1');
INSERT INTO `field_producto_home` VALUES ('1019', '1');
INSERT INTO `field_producto_home` VALUES ('1017', '1');
INSERT INTO `field_producto_home` VALUES ('1083', '1');
INSERT INTO `field_producto_home` VALUES ('1087', '1');
INSERT INTO `field_producto_home` VALUES ('1096', '1');
INSERT INTO `field_producto_home` VALUES ('1098', '1');
INSERT INTO `field_producto_home` VALUES ('1099', '1');
INSERT INTO `field_producto_home` VALUES ('1100', '1');
INSERT INTO `field_producto_home` VALUES ('1101', '1');
INSERT INTO `field_producto_home` VALUES ('1102', '1');
INSERT INTO `field_producto_home` VALUES ('1103', '1');
INSERT INTO `field_producto_home` VALUES ('1104', '1');
INSERT INTO `field_producto_home` VALUES ('1105', '1');
INSERT INTO `field_producto_home` VALUES ('1106', '1');
INSERT INTO `field_producto_home` VALUES ('1107', '1');
INSERT INTO `field_producto_home` VALUES ('1108', '1');
INSERT INTO `field_producto_home` VALUES ('1109', '1');
INSERT INTO `field_producto_home` VALUES ('1110', '1');
INSERT INTO `field_producto_home` VALUES ('1111', '1');
INSERT INTO `field_producto_home` VALUES ('1112', '1');
INSERT INTO `field_producto_home` VALUES ('1123', '1');
INSERT INTO `field_producto_home` VALUES ('1124', '1');
INSERT INTO `field_producto_home` VALUES ('1126', '1');
INSERT INTO `field_producto_home` VALUES ('1127', '1');
INSERT INTO `field_producto_home` VALUES ('1149', '1');
INSERT INTO `field_producto_home` VALUES ('1151', '1');
INSERT INTO `field_producto_home` VALUES ('1152', '1');
INSERT INTO `field_producto_home` VALUES ('1187', '1');

-- ----------------------------
-- Table structure for `field_producto_imagenes`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_imagenes`;
CREATE TABLE `field_producto_imagenes` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_imagenes
-- ----------------------------

-- ----------------------------
-- Table structure for `field_producto_img_atras`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_img_atras`;
CREATE TABLE `field_producto_img_atras` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_img_atras
-- ----------------------------
INSERT INTO `field_producto_img_atras` VALUES ('1018', '515e2723-9b71-41fa-a7c8-ce02161204ef.jpg', '0', 'yy3iuy12iu3y21iu', '2021-05-26 18:33:02', '2021-05-26 18:27:52', '', '636970', '41', '41', '2048', '1365', '1.50');
INSERT INTO `field_producto_img_atras` VALUES ('1123', '56e83d53-95f7-41c2-bd0e-ed345d55d13b.jpg', '0', '', '2021-06-01 21:50:28', '2021-06-01 21:50:28', '', '298339', '41', '41', '2048', '1365', '1.50');

-- ----------------------------
-- Table structure for `field_producto_img_frente`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_img_frente`;
CREATE TABLE `field_producto_img_frente` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_img_frente
-- ----------------------------
INSERT INTO `field_producto_img_frente` VALUES ('1018', '2d3d934a-b86c-4e72-b9d5-34107197e573.jpg', '0', 'dhaskjhdksajhdkj', '2021-05-26 18:33:02', '2021-05-26 18:27:52', '', '656664', '41', '41', '2048', '1365', '1.50');
INSERT INTO `field_producto_img_frente` VALUES ('1187', 'aee522d7-98b2-47d5-a7b8-4202bbe3d46e.jpg', '0', '', '2021-06-01 21:49:26', '2021-06-01 21:49:26', '', '381769', '41', '41', '2048', '1365', '1.50');
INSERT INTO `field_producto_img_frente` VALUES ('1123', 'e9a2f6a7-19ff-4841-a4d1-46e2d9a748d6.jpg', '0', '', '2021-06-01 21:50:10', '2021-06-01 21:50:10', '', '318071', '41', '41', '2048', '1365', '1.50');

-- ----------------------------
-- Table structure for `field_producto_mangas`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_mangas`;
CREATE TABLE `field_producto_mangas` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_mangas
-- ----------------------------
INSERT INTO `field_producto_mangas` VALUES ('1018', '1155', '0');
INSERT INTO `field_producto_mangas` VALUES ('1019', '1155', '0');
INSERT INTO `field_producto_mangas` VALUES ('1123', '1155', '0');
INSERT INTO `field_producto_mangas` VALUES ('1152', '1155', '0');
INSERT INTO `field_producto_mangas` VALUES ('1187', '1155', '0');
INSERT INTO `field_producto_mangas` VALUES ('1018', '1156', '1');
INSERT INTO `field_producto_mangas` VALUES ('1019', '1156', '1');
INSERT INTO `field_producto_mangas` VALUES ('1123', '1156', '1');
INSERT INTO `field_producto_mangas` VALUES ('1152', '1156', '1');
INSERT INTO `field_producto_mangas` VALUES ('1187', '1156', '1');

-- ----------------------------
-- Table structure for `field_producto_materiales`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_materiales`;
CREATE TABLE `field_producto_materiales` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_materiales
-- ----------------------------
INSERT INTO `field_producto_materiales` VALUES ('1017', '1057', '0');
INSERT INTO `field_producto_materiales` VALUES ('1018', '1057', '0');
INSERT INTO `field_producto_materiales` VALUES ('1019', '1057', '0');
INSERT INTO `field_producto_materiales` VALUES ('1083', '1057', '0');
INSERT INTO `field_producto_materiales` VALUES ('1087', '1057', '0');
INSERT INTO `field_producto_materiales` VALUES ('1112', '1057', '0');
INSERT INTO `field_producto_materiales` VALUES ('1123', '1057', '0');
INSERT INTO `field_producto_materiales` VALUES ('1018', '1058', '1');
INSERT INTO `field_producto_materiales` VALUES ('1018', '1059', '2');
INSERT INTO `field_producto_materiales` VALUES ('1099', '1059', '0');
INSERT INTO `field_producto_materiales` VALUES ('1123', '1059', '1');

-- ----------------------------
-- Table structure for `field_producto_sku`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_sku`;
CREATE TABLE `field_producto_sku` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_sku
-- ----------------------------
INSERT INTO `field_producto_sku` VALUES ('1018', '2061');
INSERT INTO `field_producto_sku` VALUES ('1019', '2110');
INSERT INTO `field_producto_sku` VALUES ('1017', '2111');
INSERT INTO `field_producto_sku` VALUES ('1083', '2114');
INSERT INTO `field_producto_sku` VALUES ('1087', '2117');
INSERT INTO `field_producto_sku` VALUES ('1096', '2118');
INSERT INTO `field_producto_sku` VALUES ('1098', '2120');
INSERT INTO `field_producto_sku` VALUES ('1099', '2121');
INSERT INTO `field_producto_sku` VALUES ('1100', '2122');
INSERT INTO `field_producto_sku` VALUES ('1101', '2123');
INSERT INTO `field_producto_sku` VALUES ('1102', '2125');
INSERT INTO `field_producto_sku` VALUES ('1103', '2126');
INSERT INTO `field_producto_sku` VALUES ('1104', '2129');
INSERT INTO `field_producto_sku` VALUES ('1105', '2130');
INSERT INTO `field_producto_sku` VALUES ('1106', '2131');
INSERT INTO `field_producto_sku` VALUES ('1108', '2133');
INSERT INTO `field_producto_sku` VALUES ('1109', '2134');
INSERT INTO `field_producto_sku` VALUES ('1110', '2135');
INSERT INTO `field_producto_sku` VALUES ('1111', '3135');
INSERT INTO `field_producto_sku` VALUES ('1112', '2137');
INSERT INTO `field_producto_sku` VALUES ('1123', '4095');
INSERT INTO `field_producto_sku` VALUES ('1124', '4130');
INSERT INTO `field_producto_sku` VALUES ('1126', '4148');
INSERT INTO `field_producto_sku` VALUES ('1127', '4149');
INSERT INTO `field_producto_sku` VALUES ('1149', '4151');
INSERT INTO `field_producto_sku` VALUES ('1151', '4150');
INSERT INTO `field_producto_sku` VALUES ('1152', '4152');
INSERT INTO `field_producto_sku` VALUES ('1187', '4150');

-- ----------------------------
-- Table structure for `field_producto_talla`
-- ----------------------------
DROP TABLE IF EXISTS `field_producto_talla`;
CREATE TABLE `field_producto_talla` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_producto_talla
-- ----------------------------
INSERT INTO `field_producto_talla` VALUES ('1018', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1019', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1083', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1087', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1096', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1098', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1099', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1100', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1101', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1102', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1103', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1104', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1105', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1106', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1107', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1108', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1109', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1110', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1111', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1112', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1123', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1187', '1064', '0');
INSERT INTO `field_producto_talla` VALUES ('1018', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1083', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1087', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1096', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1098', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1099', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1100', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1101', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1102', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1103', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1104', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1105', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1106', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1107', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1108', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1109', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1110', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1111', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1112', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1123', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1187', '1065', '1');
INSERT INTO `field_producto_talla` VALUES ('1018', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1019', '1066', '1');
INSERT INTO `field_producto_talla` VALUES ('1083', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1087', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1096', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1098', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1099', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1100', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1101', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1102', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1103', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1104', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1105', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1106', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1107', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1108', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1109', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1110', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1111', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1112', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1123', '1066', '2');
INSERT INTO `field_producto_talla` VALUES ('1187', '1066', '2');

-- ----------------------------
-- Table structure for `field_roles`
-- ----------------------------
DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_roles
-- ----------------------------
INSERT INTO `field_roles` VALUES ('40', '37', '0');
INSERT INTO `field_roles` VALUES ('41', '37', '0');
INSERT INTO `field_roles` VALUES ('1036', '37', '0');
INSERT INTO `field_roles` VALUES ('41', '38', '2');
INSERT INTO `field_roles` VALUES ('1036', '1033', '1');

-- ----------------------------
-- Table structure for `field_store_desc`
-- ----------------------------
DROP TABLE IF EXISTS `field_store_desc`;
CREATE TABLE `field_store_desc` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_store_desc
-- ----------------------------
INSERT INTO `field_store_desc` VALUES ('1016', 'localshosdkasjhdkasjdhjkas');

-- ----------------------------
-- Table structure for `field_store_facebook`
-- ----------------------------
DROP TABLE IF EXISTS `field_store_facebook`;
CREATE TABLE `field_store_facebook` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_store_facebook
-- ----------------------------
INSERT INTO `field_store_facebook` VALUES ('1016', 'https://facebook.com/Nina Resens');

-- ----------------------------
-- Table structure for `field_store_instagram`
-- ----------------------------
DROP TABLE IF EXISTS `field_store_instagram`;
CREATE TABLE `field_store_instagram` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_store_instagram
-- ----------------------------
INSERT INTO `field_store_instagram` VALUES ('1016', 'https://www.instagram.com/NinaResens');

-- ----------------------------
-- Table structure for `field_store_metatags`
-- ----------------------------
DROP TABLE IF EXISTS `field_store_metatags`;
CREATE TABLE `field_store_metatags` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_store_metatags
-- ----------------------------
INSERT INTO `field_store_metatags` VALUES ('1016', '<!-- Primary Meta Tags -->\n<title>Nina Sans</title>\n<meta name=\"title\" content=\"Nina Sans\">\n<meta name=\"description\" content=\"Somos una empresa orgullosamente mexicana que nace en 1985 dedicada a la confección y diseño de vestidos de novia y XV años. Nuestra experiencia va mas allá del diseño ya que utilizamos materiales de altísima calidad y tecnología de punta para ofrecer “alta costura en serie”.\">\n\n<!-- Open Graph / Facebook -->\n<meta property=\"og:type\" content=\"website\">\n<meta property=\"og:url\" content=\"https://metatags.io/\">\n<meta property=\"og:title\" content=\"Nina Sans\">\n<meta property=\"og:description\" content=\"Somos una empresa orgullosamente mexicana que nace en 1985 dedicada a la confección y diseño de vestidos de novia y XV años. Nuestra experiencia va mas allá del diseño ya que utilizamos materiales de altísima calidad y tecnología de punta para ofrecer “alta costura en serie”.\">\n<meta property=\"og:image\" content=\"https://metatags.io/assets/meta-tags-16a33a6a8531e519cc0936fbba0ad904e52d35f34a46c97a2c9f6f7dd7d336f2.png\">\n\n<!-- Twitter -->\n<meta property=\"twitter:card\" content=\"summary_large_image\">\n<meta property=\"twitter:url\" content=\"https://metatags.io/\">\n<meta property=\"twitter:title\" content=\"Nina Sans\">\n<meta property=\"twitter:description\" content=\"Somos una empresa orgullosamente mexicana que nace en 1985 dedicada a la confección y diseño de vestidos de novia y XV años. Nuestra experiencia va mas allá del diseño ya que utilizamos materiales de altísima calidad y tecnología de punta para ofrecer “alta costura en serie”.\">\n<meta property=\"twitter:image\" content=\"https://metatags.io/assets/meta-tags-16a33a6a8531e519cc0936fbba0ad904e52d35f34a46c97a2c9f6f7dd7d336f2.png\">');

-- ----------------------------
-- Table structure for `field_store_twitter`
-- ----------------------------
DROP TABLE IF EXISTS `field_store_twitter`;
CREATE TABLE `field_store_twitter` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_store_twitter
-- ----------------------------
INSERT INTO `field_store_twitter` VALUES ('1016', 'https://www.twitter.com/NinaResens');

-- ----------------------------
-- Table structure for `field_store_url`
-- ----------------------------
DROP TABLE IF EXISTS `field_store_url`;
CREATE TABLE `field_store_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_store_url
-- ----------------------------
INSERT INTO `field_store_url` VALUES ('1016', 'https://www.ninaresens.com/');

-- ----------------------------
-- Table structure for `field_title`
-- ----------------------------
DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_title
-- ----------------------------
INSERT INTO `field_title` VALUES ('11', 'Templates');
INSERT INTO `field_title` VALUES ('16', 'Fields');
INSERT INTO `field_title` VALUES ('22', 'Setup');
INSERT INTO `field_title` VALUES ('3', 'Pages');
INSERT INTO `field_title` VALUES ('6', 'Add Page');
INSERT INTO `field_title` VALUES ('8', 'Tree');
INSERT INTO `field_title` VALUES ('9', 'Save Sort');
INSERT INTO `field_title` VALUES ('10', 'Edit');
INSERT INTO `field_title` VALUES ('21', 'Modules');
INSERT INTO `field_title` VALUES ('29', 'Users');
INSERT INTO `field_title` VALUES ('30', 'Roles');
INSERT INTO `field_title` VALUES ('2', 'Admin');
INSERT INTO `field_title` VALUES ('7', 'Trash');
INSERT INTO `field_title` VALUES ('27', '404 Not Found');
INSERT INTO `field_title` VALUES ('302', 'Insert Link');
INSERT INTO `field_title` VALUES ('23', 'Login');
INSERT INTO `field_title` VALUES ('304', 'Profile');
INSERT INTO `field_title` VALUES ('301', 'Empty Trash');
INSERT INTO `field_title` VALUES ('300', 'Search');
INSERT INTO `field_title` VALUES ('303', 'Insert Image');
INSERT INTO `field_title` VALUES ('28', 'Access');
INSERT INTO `field_title` VALUES ('31', 'Permissions');
INSERT INTO `field_title` VALUES ('32', 'Edit pages');
INSERT INTO `field_title` VALUES ('34', 'Delete pages');
INSERT INTO `field_title` VALUES ('35', 'Move pages (change parent)');
INSERT INTO `field_title` VALUES ('36', 'View pages');
INSERT INTO `field_title` VALUES ('50', 'Sort child pages');
INSERT INTO `field_title` VALUES ('51', 'Change templates on pages');
INSERT INTO `field_title` VALUES ('52', 'Administer users');
INSERT INTO `field_title` VALUES ('53', 'User can update profile/password');
INSERT INTO `field_title` VALUES ('54', 'Lock or unlock a page');
INSERT INTO `field_title` VALUES ('1', 'Home');
INSERT INTO `field_title` VALUES ('1006', 'Use Page Lister');
INSERT INTO `field_title` VALUES ('1007', 'Find');
INSERT INTO `field_title` VALUES ('1010', 'Recent');
INSERT INTO `field_title` VALUES ('1011', 'Can see recently edited pages');
INSERT INTO `field_title` VALUES ('1012', 'Logs');
INSERT INTO `field_title` VALUES ('1013', 'Can view system logs');
INSERT INTO `field_title` VALUES ('1014', 'Can manage system logs');
INSERT INTO `field_title` VALUES ('1015', 'Diana Di Giorno');
INSERT INTO `field_title` VALUES ('1016', 'Nina Resens');
INSERT INTO `field_title` VALUES ('1017', 'Samia');
INSERT INTO `field_title` VALUES ('1018', 'Dorotea');
INSERT INTO `field_title` VALUES ('1019', 'Freya');
INSERT INTO `field_title` VALUES ('1021', 'Opciones');
INSERT INTO `field_title` VALUES ('1044', 'Tipo de Material');
INSERT INTO `field_title` VALUES ('1050', 'Batch Child Editor');
INSERT INTO `field_title` VALUES ('1077', 'En V');
INSERT INTO `field_title` VALUES ('1048', 'caracteristica');
INSERT INTO `field_title` VALUES ('1043', 'Tipo de Corte');
INSERT INTO `field_title` VALUES ('1047', 'Caracteristicas');
INSERT INTO `field_title` VALUES ('1046', 'Tallas');
INSERT INTO `field_title` VALUES ('1045', 'Colores');
INSERT INTO `field_title` VALUES ('1034', 'Dashboard');
INSERT INTO `field_title` VALUES ('1035', 'Ver Dashboard');
INSERT INTO `field_title` VALUES ('1037', 'Productos');
INSERT INTO `field_title` VALUES ('1039', 'Clone');
INSERT INTO `field_title` VALUES ('1040', 'Clone a page');
INSERT INTO `field_title` VALUES ('1041', 'Clone a tree of pages');
INSERT INTO `field_title` VALUES ('1042', 'Repeaters');
INSERT INTO `field_title` VALUES ('1051', 'Children CSV Export');
INSERT INTO `field_title` VALUES ('1052', 'Princesa');
INSERT INTO `field_title` VALUES ('1053', 'Sirena');
INSERT INTO `field_title` VALUES ('1054', 'Princesa (semi-amplio)');
INSERT INTO `field_title` VALUES ('1055', 'Princesa (amplio)');
INSERT INTO `field_title` VALUES ('1056', 'Linea A');
INSERT INTO `field_title` VALUES ('1057', 'Tul y aplicación de importación');
INSERT INTO `field_title` VALUES ('1058', 'Tul Escama Importado');
INSERT INTO `field_title` VALUES ('1059', 'Aplicación Importada');
INSERT INTO `field_title` VALUES ('1060', 'Tul con aplicaciones de importanción');
INSERT INTO `field_title` VALUES ('1061', 'Ivory');
INSERT INTO `field_title` VALUES ('1062', 'Blanco');
INSERT INTO `field_title` VALUES ('1063', 'Nude');
INSERT INTO `field_title` VALUES ('1064', '30');
INSERT INTO `field_title` VALUES ('1065', '34');
INSERT INTO `field_title` VALUES ('1066', '40');
INSERT INTO `field_title` VALUES ('1067', '1 Pieza');
INSERT INTO `field_title` VALUES ('1068', 'Cauda Desmontable');
INSERT INTO `field_title` VALUES ('1069', 'Strapless con transparencia');
INSERT INTO `field_title` VALUES ('1070', 'Colecciones');
INSERT INTO `field_title` VALUES ('1075', 'Escotes');
INSERT INTO `field_title` VALUES ('1076', 'Barco');
INSERT INTO `field_title` VALUES ('1078', 'Halter');
INSERT INTO `field_title` VALUES ('1079', 'Corazón');
INSERT INTO `field_title` VALUES ('1080', 'Palabra de Honor');
INSERT INTO `field_title` VALUES ('1081', 'Arrastre Pequeño');
INSERT INTO `field_title` VALUES ('1082', 'Gris');
INSERT INTO `field_title` VALUES ('1083', 'Zazil');
INSERT INTO `field_title` VALUES ('1087', 'Heras');
INSERT INTO `field_title` VALUES ('1088', 'Clásica');
INSERT INTO `field_title` VALUES ('1089', 'Elegance');
INSERT INTO `field_title` VALUES ('1090', 'Glamour');
INSERT INTO `field_title` VALUES ('1091', 'España');
INSERT INTO `field_title` VALUES ('1092', 'Moderna');
INSERT INTO `field_title` VALUES ('1093', 'Tradición');
INSERT INTO `field_title` VALUES ('1094', 'Vanguardia');
INSERT INTO `field_title` VALUES ('1095', 'Golden line');
INSERT INTO `field_title` VALUES ('1096', 'Fania');
INSERT INTO `field_title` VALUES ('1097', 'Cauda Integrada');
INSERT INTO `field_title` VALUES ('1098', 'MAGGIE');
INSERT INTO `field_title` VALUES ('1099', 'KRISTIN');
INSERT INTO `field_title` VALUES ('1100', 'Martina');
INSERT INTO `field_title` VALUES ('1101', 'Amina');
INSERT INTO `field_title` VALUES ('1102', 'Amy');
INSERT INTO `field_title` VALUES ('1103', 'Iria');
INSERT INTO `field_title` VALUES ('1104', 'Noor');
INSERT INTO `field_title` VALUES ('1105', 'Hanna');
INSERT INTO `field_title` VALUES ('1106', 'Mara');
INSERT INTO `field_title` VALUES ('1107', 'Zoe');
INSERT INTO `field_title` VALUES ('1108', 'Candela');
INSERT INTO `field_title` VALUES ('1109', 'Gala');
INSERT INTO `field_title` VALUES ('1110', 'Talia');
INSERT INTO `field_title` VALUES ('1111', 'Danna');
INSERT INTO `field_title` VALUES ('1112', 'Alba');
INSERT INTO `field_title` VALUES ('1113', 'Tipo de Vestido');
INSERT INTO `field_title` VALUES ('1114', 'Barco');
INSERT INTO `field_title` VALUES ('1115', 'En V');
INSERT INTO `field_title` VALUES ('1116', 'Halter');
INSERT INTO `field_title` VALUES ('1117', 'Corazón');
INSERT INTO `field_title` VALUES ('1118', 'Palabra de honor');
INSERT INTO `field_title` VALUES ('1119', 'AppApi');
INSERT INTO `field_title` VALUES ('1120', 'Manage AppApi settings');
INSERT INTO `field_title` VALUES ('1121', 'Tiendas');
INSERT INTO `field_title` VALUES ('1122', 'Productos');
INSERT INTO `field_title` VALUES ('1123', 'Agnes');
INSERT INTO `field_title` VALUES ('1124', 'Iva');
INSERT INTO `field_title` VALUES ('1125', 'Jane');
INSERT INTO `field_title` VALUES ('1126', 'Kiera');
INSERT INTO `field_title` VALUES ('1127', 'Romy');
INSERT INTO `field_title` VALUES ('1128', 'Azul Cielo');
INSERT INTO `field_title` VALUES ('1129', 'Azul rey');
INSERT INTO `field_title` VALUES ('1130', 'Blush');
INSERT INTO `field_title` VALUES ('1131', 'Palo de Rosa');
INSERT INTO `field_title` VALUES ('1132', 'Verde Jade');
INSERT INTO `field_title` VALUES ('1133', 'Vino');
INSERT INTO `field_title` VALUES ('1134', 'Escote Strapless');
INSERT INTO `field_title` VALUES ('1135', 'Hombro Caido');
INSERT INTO `field_title` VALUES ('1136', 'Chic');
INSERT INTO `field_title` VALUES ('1137', 'Fashionable');
INSERT INTO `field_title` VALUES ('1138', 'Oro');
INSERT INTO `field_title` VALUES ('1139', 'Stylish');
INSERT INTO `field_title` VALUES ('1140', 'Champagne');
INSERT INTO `field_title` VALUES ('1141', 'Rojo');
INSERT INTO `field_title` VALUES ('1142', '2 Piezas');
INSERT INTO `field_title` VALUES ('1143', 'Escote Corazón con tirantes');
INSERT INTO `field_title` VALUES ('1144', 'Transparencias');
INSERT INTO `field_title` VALUES ('1145', 'Champagne/Vino');
INSERT INTO `field_title` VALUES ('1146', 'Champagne/Azul Rey');
INSERT INTO `field_title` VALUES ('1147', 'Champagne/Palo de Rosa');
INSERT INTO `field_title` VALUES ('1148', 'Escote Strapless Corazón');
INSERT INTO `field_title` VALUES ('1149', 'Sun');
INSERT INTO `field_title` VALUES ('1150', 'Escote Cuello Princesa');
INSERT INTO `field_title` VALUES ('1151', 'Harley');
INSERT INTO `field_title` VALUES ('1152', 'Tanit');
INSERT INTO `field_title` VALUES ('1153', 'Escote corazón con tirante');
INSERT INTO `field_title` VALUES ('1154', 'Tipo de manga');
INSERT INTO `field_title` VALUES ('1155', 'Manga Corta');
INSERT INTO `field_title` VALUES ('1156', 'Manga Larga');
INSERT INTO `field_title` VALUES ('1157', 'Tipos de Caida');
INSERT INTO `field_title` VALUES ('1158', 'Caida Hombro');
INSERT INTO `field_title` VALUES ('1159', 'Caida 2');
INSERT INTO `field_title` VALUES ('1160', 'Extras');
INSERT INTO `field_title` VALUES ('1161', 'Extra 1');
INSERT INTO `field_title` VALUES ('1162', 'Extra 2');
INSERT INTO `field_title` VALUES ('1163', 'Extra 3');
INSERT INTO `field_title` VALUES ('1164', 'Opciones (copy)');
INSERT INTO `field_title` VALUES ('1165', 'Chic');
INSERT INTO `field_title` VALUES ('1166', 'Fashionable');
INSERT INTO `field_title` VALUES ('1167', 'Moderna');
INSERT INTO `field_title` VALUES ('1168', 'Chic');
INSERT INTO `field_title` VALUES ('1169', 'Fashionable');
INSERT INTO `field_title` VALUES ('1170', 'Moderna');
INSERT INTO `field_title` VALUES ('1171', 'Stylish');
INSERT INTO `field_title` VALUES ('1172', 'Vanguardia');
INSERT INTO `field_title` VALUES ('1173', 'Distribuidores');
INSERT INTO `field_title` VALUES ('1174', 'Import Pages CSV');
INSERT INTO `field_title` VALUES ('1175', '  MARIA EUGENIA GARCIA OVANDO.');
INSERT INTO `field_title` VALUES ('1176', ' (NO) MARTHA MORALES CASTILLO');
INSERT INTO `field_title` VALUES ('1177', '(NO) VICTOR MANUEL CARRANZA ARAGON');
INSERT INTO `field_title` VALUES ('1178', '(NO)ALBERTO MORALES MURCIA');
INSERT INTO `field_title` VALUES ('1179', '(NO)ANA MARIA GONZALEZ LOPEZ');
INSERT INTO `field_title` VALUES ('1180', '(NO)ELIA MARIA VARGAS FIGUEROA.');
INSERT INTO `field_title` VALUES ('1181', '(NO)ELISA HUERTA DE LA GARZA');
INSERT INTO `field_title` VALUES ('1182', '(NO)MARTHA ELVIRA VILLAREAL TREVIÑO');
INSERT INTO `field_title` VALUES ('1183', '(NO)MARTHA VILLAREAL RENDON ');
INSERT INTO `field_title` VALUES ('1184', '(NO)RUBEN CORTEZ MAGALLANES');
INSERT INTO `field_title` VALUES ('1185', 'ADELA JIMENEZ JIMENEZ ');
INSERT INTO `field_title` VALUES ('1186', 'ALANA S.A. DE C.V.');
INSERT INTO `field_title` VALUES ('1187', 'HARLEY');
INSERT INTO `field_title` VALUES ('1188', 'Accesorio de Brazo');

-- ----------------------------
-- Table structure for `field_user_store`
-- ----------------------------
DROP TABLE IF EXISTS `field_user_store`;
CREATE TABLE `field_user_store` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_user_store
-- ----------------------------

-- ----------------------------
-- Table structure for `modules`
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES ('1', 'FieldtypeTextarea', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('2', 'FieldtypeNumber', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('3', 'FieldtypeText', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('4', 'FieldtypePage', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('30', 'InputfieldForm', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('6', 'FieldtypeFile', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('7', 'ProcessPageEdit', '1', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('10', 'ProcessLogin', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('121', 'ProcessPageEditLink', '1', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('14', 'ProcessPageSort', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('15', 'InputfieldPageListSelect', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('117', 'JqueryUI', '1', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('17', 'ProcessPageAdd', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('125', 'SessionLoginThrottle', '11', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('122', 'InputfieldPassword', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('25', 'InputfieldAsmSelect', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('116', 'JqueryCore', '1', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('27', 'FieldtypeModule', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('28', 'FieldtypeDatetime', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('29', 'FieldtypeEmail', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('108', 'InputfieldURL', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('32', 'InputfieldSubmit', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('33', 'InputfieldWrapper', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('34', 'InputfieldText', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('35', 'InputfieldTextarea', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('36', 'InputfieldSelect', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('37', 'InputfieldCheckbox', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('38', 'InputfieldCheckboxes', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('39', 'InputfieldRadios', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('40', 'InputfieldHidden', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('41', 'InputfieldName', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('43', 'InputfieldSelectMultiple', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('45', 'JqueryWireTabs', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('46', 'ProcessPage', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('47', 'ProcessTemplate', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('48', 'ProcessField', '32', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('50', 'ProcessModule', '0', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('114', 'PagePermissions', '3', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('97', 'FieldtypeCheckbox', '1', '', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('115', 'PageRender', '3', '{\"clearCache\":1}', '2021-05-24 15:55:28');
INSERT INTO `modules` VALUES ('55', 'InputfieldFile', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('56', 'InputfieldImage', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('57', 'FieldtypeImage', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('61', 'TextformatterEntities', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('67', 'MarkupAdminDataTable', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('76', 'ProcessList', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('78', 'InputfieldFieldset', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('79', 'InputfieldMarkup', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('80', 'InputfieldEmail', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('89', 'FieldtypeFloat', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('83', 'ProcessPageView', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('84', 'FieldtypeInteger', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('85', 'InputfieldInteger', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('86', 'InputfieldPageName', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('87', 'ProcessHome', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('90', 'InputfieldFloat', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('94', 'InputfieldDatetime', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('98', 'MarkupPagerNav', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('129', 'ProcessPageEditImageSelect', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('103', 'JqueryTableSorter', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('105', 'FieldtypeFieldsetOpen', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('106', 'FieldtypeFieldsetClose', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('107', 'FieldtypeFieldsetTabOpen', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('109', 'ProcessPageTrash', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('111', 'FieldtypePageTitle', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('112', 'InputfieldPageTitle', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('113', 'MarkupPageArray', '3', '', '2021-05-24 15:55:27');
INSERT INTO `modules` VALUES ('131', 'InputfieldButton', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('133', 'FieldtypePassword', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('135', 'FieldtypeURL', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('137', 'InputfieldPageListSelectMultiple', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('138', 'ProcessProfile', '1', '{\"profileFields\":[\"email\",\"pass\"]}', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('139', 'SystemUpdater', '1', '{\"systemVersion\":18,\"coreVersion\":\"3.0.165\"}', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('149', 'InputfieldSelector', '42', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('150', 'ProcessPageLister', '32', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('151', 'JqueryMagnific', '1', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('155', 'InputfieldCKEditor', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('156', 'MarkupHTMLPurifier', '0', '', '2021-05-24 15:55:29');
INSERT INTO `modules` VALUES ('159', 'ProcessRecentPages', '1', '', '2021-05-24 15:56:11');
INSERT INTO `modules` VALUES ('160', 'AdminThemeUikit', '10', '', '2021-05-24 15:56:11');
INSERT INTO `modules` VALUES ('161', 'ProcessLogger', '1', '', '2021-05-24 15:56:32');
INSERT INTO `modules` VALUES ('162', 'InputfieldIcon', '0', '', '2021-05-24 15:56:32');
INSERT INTO `modules` VALUES ('163', 'DressesDashboard', '1', '', '2021-05-24 16:34:40');
INSERT INTO `modules` VALUES ('164', 'ProcessPageClone', '11', '', '2021-05-24 19:19:23');
INSERT INTO `modules` VALUES ('165', 'TextformatterStripTags', '1', '', '2021-05-24 19:19:36');
INSERT INTO `modules` VALUES ('166', 'TextformatterPstripper', '1', '', '2021-05-24 19:19:50');
INSERT INTO `modules` VALUES ('167', 'TextformatterNewlineBR', '1', '', '2021-05-24 19:20:02');
INSERT INTO `modules` VALUES ('168', 'TextformatterNewlineUL', '1', '', '2021-05-24 19:20:18');
INSERT INTO `modules` VALUES ('169', 'InputfieldToggle', '0', '', '2021-05-24 19:20:38');
INSERT INTO `modules` VALUES ('170', 'FieldtypeToggle', '1', '', '2021-05-24 19:20:38');
INSERT INTO `modules` VALUES ('171', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1042}', '2021-05-24 19:20:49');
INSERT INTO `modules` VALUES ('172', 'InputfieldRepeater', '0', '', '2021-05-24 19:20:49');
INSERT INTO `modules` VALUES ('173', 'FieldtypeOptions', '1', '', '2021-05-25 13:30:49');
INSERT INTO `modules` VALUES ('174', 'InputfieldPageAutocomplete', '0', '', '2021-05-25 13:31:43');
INSERT INTO `modules` VALUES ('175', 'FieldtypePageTable', '3', '', '2021-05-25 13:31:46');
INSERT INTO `modules` VALUES ('176', 'InputfieldPageTable', '0', '', '2021-05-25 13:31:46');
INSERT INTO `modules` VALUES ('177', 'BatchChildEditor', '10', '', '2021-05-25 13:32:16');
INSERT INTO `modules` VALUES ('178', 'ProcessChildrenCsvExport', '1', '', '2021-05-25 13:32:16');
INSERT INTO `modules` VALUES ('185', 'InputfieldColor', '0', '', '2021-05-25 19:49:18');
INSERT INTO `modules` VALUES ('180', 'TextInputAwesomplete', '11', '', '2021-05-25 14:51:29');
INSERT INTO `modules` VALUES ('181', 'FieldtypeFieldsetPage', '35', '{\"repeatersRootPageID\":1042}', '2021-05-25 14:59:44');
INSERT INTO `modules` VALUES ('182', 'FieldtypeOptionsColor', '1', '', '2021-05-25 15:00:05');
INSERT INTO `modules` VALUES ('183', 'ProcessForgotPassword', '1', '{\"emailFrom\":\"\",\"askEmail\":\"\",\"maxPerIP\":3,\"useLog\":1,\"confirmFields\":[\"email:92\"],\"allowRoles\":[],\"blockRoles\":[],\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2021-05-25 15:00:59');
INSERT INTO `modules` VALUES ('184', 'TemplateFieldWidths', '10', '{\"tfw_collapsed\":\"1\",\"field_identifier\":\"name\",\"show_original_width\":1,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2021-05-25 15:01:37');
INSERT INTO `modules` VALUES ('186', 'FieldtypeColor', '1', '', '2021-05-25 19:51:09');
INSERT INTO `modules` VALUES ('187', 'FieldtypeColorPicker', '1', '', '2021-05-25 19:51:26');
INSERT INTO `modules` VALUES ('188', 'InputfieldColorPicker', '0', '', '2021-05-25 19:51:26');
INSERT INTO `modules` VALUES ('189', 'AppApi', '3', '', '2021-05-26 10:10:50');
INSERT INTO `modules` VALUES ('190', 'ImportPagesCSV', '1', '', '2021-06-01 21:22:23');

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1189 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', '0', '1', 'home', '9', '2021-05-26 13:19:55', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '0');
INSERT INTO `pages` VALUES ('2', '1', '2', 'admin', '1035', '2021-05-24 15:56:12', '40', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '9');
INSERT INTO `pages` VALUES ('3', '2', '2', 'page', '21', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '0');
INSERT INTO `pages` VALUES ('6', '3', '2', 'add', '21', '2021-05-24 15:59:47', '40', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '1');
INSERT INTO `pages` VALUES ('7', '1', '2', 'trash', '1039', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '10');
INSERT INTO `pages` VALUES ('8', '3', '2', 'list', '21', '2021-05-24 16:00:20', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '0');
INSERT INTO `pages` VALUES ('9', '3', '2', 'sort', '1047', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '3');
INSERT INTO `pages` VALUES ('10', '3', '2', 'edit', '1045', '2021-05-24 16:00:17', '40', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '4');
INSERT INTO `pages` VALUES ('11', '22', '2', 'template', '21', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '0');
INSERT INTO `pages` VALUES ('16', '22', '2', 'field', '21', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '2');
INSERT INTO `pages` VALUES ('21', '2', '2', 'module', '21', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '2');
INSERT INTO `pages` VALUES ('22', '2', '2', 'setup', '21', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '1');
INSERT INTO `pages` VALUES ('23', '2', '2', 'login', '1035', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '4');
INSERT INTO `pages` VALUES ('27', '1', '29', 'http404', '1035', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '3', '2021-05-24 15:55:29', '8');
INSERT INTO `pages` VALUES ('28', '2', '2', 'access', '13', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '3');
INSERT INTO `pages` VALUES ('29', '28', '2', 'users', '29', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '0');
INSERT INTO `pages` VALUES ('30', '28', '2', 'roles', '29', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '1');
INSERT INTO `pages` VALUES ('31', '28', '2', 'permissions', '29', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '2');
INSERT INTO `pages` VALUES ('32', '31', '5', 'page-edit', '25', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '2');
INSERT INTO `pages` VALUES ('34', '31', '5', 'page-delete', '25', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '3');
INSERT INTO `pages` VALUES ('35', '31', '5', 'page-move', '25', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '4');
INSERT INTO `pages` VALUES ('36', '31', '5', 'page-view', '25', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '0');
INSERT INTO `pages` VALUES ('37', '30', '4', 'guest', '25', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '0');
INSERT INTO `pages` VALUES ('38', '30', '4', 'superuser', '25', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '1');
INSERT INTO `pages` VALUES ('41', '29', '3', 'admin', '1', '2021-05-25 12:58:44', '40', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '0');
INSERT INTO `pages` VALUES ('40', '29', '3', 'guest', '25', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '1');
INSERT INTO `pages` VALUES ('50', '31', '5', 'page-sort', '25', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '5');
INSERT INTO `pages` VALUES ('51', '31', '5', 'page-template', '25', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '6');
INSERT INTO `pages` VALUES ('52', '31', '5', 'user-admin', '25', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '10');
INSERT INTO `pages` VALUES ('53', '31', '5', 'profile-edit', '1', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '13');
INSERT INTO `pages` VALUES ('54', '31', '5', 'page-lock', '1', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '8');
INSERT INTO `pages` VALUES ('300', '3', '2', 'search', '1045', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '6');
INSERT INTO `pages` VALUES ('301', '3', '2', 'trash', '1047', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '6');
INSERT INTO `pages` VALUES ('302', '3', '2', 'link', '1041', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '7');
INSERT INTO `pages` VALUES ('303', '3', '2', 'image', '1041', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '2', '2021-05-24 15:55:29', '8');
INSERT INTO `pages` VALUES ('304', '2', '2', 'profile', '1025', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '41', '2021-05-24 15:55:29', '5');
INSERT INTO `pages` VALUES ('1006', '31', '5', 'page-lister', '1', '2021-05-24 15:55:29', '40', '2021-05-24 15:55:29', '40', '2021-05-24 15:55:29', '9');
INSERT INTO `pages` VALUES ('1007', '3', '2', 'lister', '1', '2021-05-24 15:55:29', '40', '2021-05-24 15:55:29', '40', '2021-05-24 15:55:29', '9');
INSERT INTO `pages` VALUES ('1010', '3', '2', 'recent-pages', '1', '2021-05-24 15:56:11', '40', '2021-05-24 15:56:11', '40', '2021-05-24 15:56:11', '10');
INSERT INTO `pages` VALUES ('1011', '31', '5', 'page-edit-recent', '1', '2021-05-24 15:56:11', '40', '2021-05-24 15:56:11', '40', '2021-05-24 15:56:11', '10');
INSERT INTO `pages` VALUES ('1012', '22', '2', 'logs', '1', '2021-05-24 15:56:32', '40', '2021-05-24 15:56:32', '40', '2021-05-24 15:56:32', '2');
INSERT INTO `pages` VALUES ('1013', '31', '5', 'logs-view', '1', '2021-05-24 15:56:32', '40', '2021-05-24 15:56:32', '40', '2021-05-24 15:56:32', '11');
INSERT INTO `pages` VALUES ('1014', '31', '5', 'logs-edit', '1', '2021-05-24 15:56:32', '40', '2021-05-24 15:56:32', '40', '2021-05-24 15:56:32', '12');
INSERT INTO `pages` VALUES ('1015', '1121', '64', 'diana-di-giorno', '1', '2021-05-26 13:20:04', '41', '2021-05-24 16:04:11', '41', '2021-05-24 16:04:11', '1');
INSERT INTO `pages` VALUES ('1016', '1121', '64', 'nina-resens', '1', '2021-06-01 21:43:43', '41', '2021-05-24 16:06:12', '41', '2021-05-24 16:06:12', '0');
INSERT INTO `pages` VALUES ('1017', '1037', '43', 'jane', '1', '2021-05-25 20:39:46', '41', '2021-05-24 16:06:41', '41', '2021-05-24 16:06:41', '2');
INSERT INTO `pages` VALUES ('1018', '1037', '43', 'dorotea', '1', '2021-05-26 18:46:46', '41', '2021-05-24 16:07:48', '41', '2021-05-24 16:07:48', '0');
INSERT INTO `pages` VALUES ('1019', '1037', '43', 'freya', '1', '2021-05-26 18:40:42', '41', '2021-05-24 16:08:07', '41', '2021-05-24 16:08:07', '1');
INSERT INTO `pages` VALUES ('1021', '1', '48', 'opciones', '1025', '2021-05-25 15:48:41', '41', '2021-05-24 16:10:45', '41', '2021-05-25 15:48:36', '6');
INSERT INTO `pages` VALUES ('1050', '31', '5', 'batch-child-editor', '1', '2021-05-25 13:32:16', '41', '2021-05-25 13:32:16', '41', '2021-05-25 13:32:16', '16');
INSERT INTO `pages` VALUES ('1051', '22', '2', 'children-csv-export', '1024', '2021-05-25 13:32:16', '41', '2021-05-25 13:32:16', '41', '2021-05-25 13:32:16', '3');
INSERT INTO `pages` VALUES ('1052', '1043', '51', 'princesa', '1', '2021-06-01 17:48:22', '41', '2021-05-25 13:35:39', '41', '2021-05-25 13:35:39', '1');
INSERT INTO `pages` VALUES ('1044', '1021', '59', 'tipo-de-material', '1', '2021-05-25 13:37:02', '41', '2021-05-25 13:21:49', '41', '2021-05-25 13:21:49', '1');
INSERT INTO `pages` VALUES ('1045', '1021', '55', 'colores', '1', '2021-05-25 13:47:20', '41', '2021-05-25 13:22:16', '41', '2021-05-25 13:22:16', '2');
INSERT INTO `pages` VALUES ('1046', '1021', '58', 'tallas', '1', '2021-05-25 13:48:03', '41', '2021-05-25 13:22:41', '41', '2021-05-25 13:22:41', '3');
INSERT INTO `pages` VALUES ('1047', '1021', '57', 'caracteristicas', '1', '2021-05-25 13:24:49', '41', '2021-05-25 13:24:49', '41', '2021-05-25 13:24:49', '4');
INSERT INTO `pages` VALUES ('1033', '30', '4', 'editor', '1', '2021-05-24 16:35:28', '41', '2021-05-24 16:29:00', '41', '2021-05-24 16:35:28', '2');
INSERT INTO `pages` VALUES ('1034', '2', '2', 'dashboard', '1', '2021-05-24 16:34:40', '41', '2021-05-24 16:34:40', '41', '2021-05-24 16:34:40', '6');
INSERT INTO `pages` VALUES ('1035', '31', '5', 'admin-dashboard', '1', '2021-05-24 16:34:40', '41', '2021-05-24 16:34:40', '41', '2021-05-24 16:34:40', '13');
INSERT INTO `pages` VALUES ('1036', '29', '3', 'editor-tienda', '1', '2021-05-24 16:36:12', '41', '2021-05-24 16:35:46', '41', '2021-05-24 16:36:12', '2');
INSERT INTO `pages` VALUES ('1037', '1015', '49', 'productos', '1', '2021-05-24 19:11:31', '41', '2021-05-24 19:08:04', '41', '2021-05-24 19:08:04', '0');
INSERT INTO `pages` VALUES ('1053', '1043', '51', 'sirena', '1', '2021-06-01 17:48:45', '41', '2021-05-25 13:35:39', '41', '2021-05-25 13:35:39', '2');
INSERT INTO `pages` VALUES ('1039', '3', '2', 'clone', '1024', '2021-05-24 19:19:23', '41', '2021-05-24 19:19:23', '41', '2021-05-24 19:19:23', '10');
INSERT INTO `pages` VALUES ('1040', '31', '5', 'page-clone', '1', '2021-05-24 19:19:23', '41', '2021-05-24 19:19:23', '41', '2021-05-24 19:19:23', '14');
INSERT INTO `pages` VALUES ('1041', '31', '5', 'page-clone-tree', '1', '2021-05-24 19:19:23', '41', '2021-05-24 19:19:23', '41', '2021-05-24 19:19:23', '15');
INSERT INTO `pages` VALUES ('1042', '2', '2', 'repeaters', '1036', '2021-05-24 19:20:49', '41', '2021-05-24 19:20:49', '41', '2021-05-24 19:20:49', '7');
INSERT INTO `pages` VALUES ('1048', '1042', '2', 'for-field-101', '17', '2021-05-25 13:26:43', '41', '2021-05-25 13:26:43', '41', '2021-05-25 13:26:43', '0');
INSERT INTO `pages` VALUES ('1043', '1021', '56', 'tipo-de-corte', '1', '2021-05-25 13:35:39', '41', '2021-05-25 13:20:27', '41', '2021-05-25 13:20:27', '0');
INSERT INTO `pages` VALUES ('1054', '1043', '51', 'princesa-semi-amplio', '1', '2021-06-01 17:48:52', '41', '2021-05-25 13:35:39', '41', '2021-05-25 13:35:39', '3');
INSERT INTO `pages` VALUES ('1055', '1043', '51', 'princesa-amplio', '1', '2021-06-01 17:48:59', '41', '2021-05-25 13:35:39', '41', '2021-05-25 13:35:39', '4');
INSERT INTO `pages` VALUES ('1056', '1043', '51', 'linea-a', '1', '2021-06-01 17:49:52', '41', '2021-05-25 13:35:39', '41', '2021-05-25 13:35:39', '5');
INSERT INTO `pages` VALUES ('1057', '1044', '52', 'tul-y-aplicacion-de-importacion', '1', '2021-05-25 13:37:01', '41', '2021-05-25 13:37:01', '41', '2021-05-25 13:37:01', '1');
INSERT INTO `pages` VALUES ('1058', '1044', '52', 'tul-escama-importado', '1', '2021-05-25 13:37:02', '41', '2021-05-25 13:37:02', '41', '2021-05-25 13:37:02', '2');
INSERT INTO `pages` VALUES ('1059', '1044', '52', 'aplicacion-importada', '1', '2021-05-25 13:37:02', '41', '2021-05-25 13:37:02', '41', '2021-05-25 13:37:02', '3');
INSERT INTO `pages` VALUES ('1060', '1044', '52', 'tul-con-aplicaciones-de-importancion', '1', '2021-05-25 13:37:02', '41', '2021-05-25 13:37:02', '41', '2021-05-25 13:37:02', '4');
INSERT INTO `pages` VALUES ('1061', '1045', '53', 'ivory', '1', '2021-05-25 19:53:19', '41', '2021-05-25 13:37:48', '41', '2021-05-25 13:37:48', '1');
INSERT INTO `pages` VALUES ('1062', '1045', '53', 'blanco', '1', '2021-05-25 20:23:58', '41', '2021-05-25 13:37:49', '41', '2021-05-25 13:37:49', '2');
INSERT INTO `pages` VALUES ('1063', '1045', '53', 'nude', '1', '2021-05-25 19:55:18', '41', '2021-05-25 13:37:49', '41', '2021-05-25 13:37:49', '3');
INSERT INTO `pages` VALUES ('1064', '1046', '54', '30', '1', '2021-05-25 13:48:03', '41', '2021-05-25 13:48:03', '41', '2021-05-25 13:48:03', '1');
INSERT INTO `pages` VALUES ('1065', '1046', '54', '34', '1', '2021-05-25 13:48:03', '41', '2021-05-25 13:48:03', '41', '2021-05-25 13:48:03', '2');
INSERT INTO `pages` VALUES ('1066', '1046', '54', '34-1', '1', '2021-05-25 19:34:13', '41', '2021-05-25 13:48:03', '41', '2021-05-25 13:48:03', '3');
INSERT INTO `pages` VALUES ('1067', '1047', '60', '1-pieza', '1', '2021-05-25 14:05:13', '41', '2021-05-25 14:05:07', '41', '2021-05-25 14:05:07', '0');
INSERT INTO `pages` VALUES ('1068', '1047', '60', 'cauda-desmontable', '1', '2021-05-25 14:05:46', '41', '2021-05-25 14:05:39', '41', '2021-05-25 14:05:39', '1');
INSERT INTO `pages` VALUES ('1069', '1047', '60', 'strapless-con-transparencia', '1', '2021-05-25 14:10:44', '41', '2021-05-25 14:06:16', '41', '2021-05-25 14:10:44', '2');
INSERT INTO `pages` VALUES ('1070', '1021', '62', 'colecciones', '1', '2021-05-25 20:35:11', '41', '2021-05-25 15:22:34', '41', '2021-05-25 15:22:34', '5');
INSERT INTO `pages` VALUES ('1075', '1021', '66', 'escotes', '1', '2021-05-25 18:56:19', '41', '2021-05-25 18:55:29', '41', '2021-05-25 18:55:29', '6');
INSERT INTO `pages` VALUES ('1076', '1075', '67', 'barco', '1', '2021-05-26 12:50:22', '41', '2021-05-25 18:56:19', '41', '2021-05-25 18:56:19', '1');
INSERT INTO `pages` VALUES ('1077', '1075', '67', 'en-v', '1', '2021-05-25 18:56:19', '41', '2021-05-25 18:56:19', '41', '2021-05-25 18:56:19', '2');
INSERT INTO `pages` VALUES ('1074', '30', '4', 'administrador', '1', '2021-05-25 16:04:05', '41', '2021-05-25 16:03:50', '41', '2021-05-25 16:04:05', '3');
INSERT INTO `pages` VALUES ('1078', '1075', '67', 'halter', '1', '2021-05-25 18:56:19', '41', '2021-05-25 18:56:19', '41', '2021-05-25 18:56:19', '3');
INSERT INTO `pages` VALUES ('1079', '1075', '67', 'corazon', '1', '2021-05-26 12:56:53', '41', '2021-05-25 18:56:19', '41', '2021-05-25 18:56:19', '4');
INSERT INTO `pages` VALUES ('1080', '1075', '67', 'palabra-de-honor', '1', '2021-05-25 18:56:19', '41', '2021-05-25 18:56:19', '41', '2021-05-25 18:56:19', '5');
INSERT INTO `pages` VALUES ('1081', '1047', '60', 'arrastre-pequeno', '1', '2021-05-25 19:33:38', '41', '2021-05-25 19:33:38', '41', '2021-05-25 19:33:38', '3');
INSERT INTO `pages` VALUES ('1082', '1045', '53', 'gris', '1', '2021-05-25 19:55:41', '41', '2021-05-25 19:38:28', '41', '2021-05-25 19:38:28', '3');
INSERT INTO `pages` VALUES ('1083', '1037', '43', 'zazil', '1', '2021-05-25 20:39:51', '41', '2021-05-25 19:42:34', '41', '2021-05-25 19:43:41', '3');
INSERT INTO `pages` VALUES ('1087', '1037', '43', 'heras', '1', '2021-05-25 20:46:23', '41', '2021-05-25 20:30:01', '41', '2021-05-25 20:30:38', '4');
INSERT INTO `pages` VALUES ('1088', '1070', '63', 'clasica', '1', '2021-06-01 18:03:55', '41', '2021-05-25 20:33:42', '41', '2021-05-25 20:35:10', '1');
INSERT INTO `pages` VALUES ('1089', '1070', '63', 'elegance', '1', '2021-06-01 18:03:51', '41', '2021-05-25 20:35:10', '41', '2021-05-25 20:35:10', '2');
INSERT INTO `pages` VALUES ('1090', '1070', '63', 'glamour', '1', '2021-06-01 18:03:48', '41', '2021-05-25 20:35:10', '41', '2021-05-25 20:35:10', '3');
INSERT INTO `pages` VALUES ('1091', '1070', '63', 'espana', '1', '2021-06-01 18:03:43', '41', '2021-05-25 20:35:10', '41', '2021-05-25 20:35:10', '4');
INSERT INTO `pages` VALUES ('1092', '1070', '63', 'moderno', '1', '2021-06-01 18:03:36', '41', '2021-05-25 20:35:11', '41', '2021-05-25 20:35:11', '5');
INSERT INTO `pages` VALUES ('1093', '1070', '63', 'tradicion', '1', '2021-05-25 20:35:11', '41', '2021-05-25 20:35:11', '41', '2021-05-25 20:35:11', '6');
INSERT INTO `pages` VALUES ('1094', '1070', '63', 'vanguardia', '1', '2021-05-25 20:35:11', '41', '2021-05-25 20:35:11', '41', '2021-05-25 20:35:11', '7');
INSERT INTO `pages` VALUES ('1095', '1070', '63', 'golden-line', '1', '2021-06-01 18:04:02', '41', '2021-05-25 20:35:11', '41', '2021-05-25 20:35:11', '8');
INSERT INTO `pages` VALUES ('1096', '1037', '43', 'fania', '1', '2021-05-25 20:47:46', '41', '2021-05-25 20:46:30', '41', '2021-05-25 20:47:13', '5');
INSERT INTO `pages` VALUES ('1097', '1047', '60', 'cauda-integrada', '1', '2021-05-25 20:47:13', '41', '2021-05-25 20:47:13', '41', '2021-05-25 20:47:13', '4');
INSERT INTO `pages` VALUES ('1098', '1037', '43', 'maggie', '1', '2021-05-25 20:49:20', '41', '2021-05-25 20:47:59', '41', '2021-05-25 20:49:08', '6');
INSERT INTO `pages` VALUES ('1099', '1037', '43', 'kristin', '1', '2021-05-25 20:52:38', '41', '2021-05-25 20:51:49', '41', '2021-05-25 20:52:38', '7');
INSERT INTO `pages` VALUES ('1100', '1037', '43', 'martina', '1', '2021-05-25 20:54:03', '41', '2021-05-25 20:53:06', '41', '2021-05-25 20:54:03', '8');
INSERT INTO `pages` VALUES ('1101', '1037', '43', 'amina', '1', '2021-05-25 20:57:46', '41', '2021-05-25 20:54:11', '41', '2021-05-25 20:55:07', '9');
INSERT INTO `pages` VALUES ('1102', '1037', '43', 'amy', '1', '2021-05-25 21:01:57', '41', '2021-05-25 20:57:54', '41', '2021-05-25 21:01:57', '10');
INSERT INTO `pages` VALUES ('1103', '1037', '43', 'iria', '1', '2021-05-25 21:03:37', '41', '2021-05-25 21:02:42', '41', '2021-05-25 21:03:19', '11');
INSERT INTO `pages` VALUES ('1104', '1037', '43', 'noor', '1', '2021-05-25 21:04:40', '41', '2021-05-25 21:03:58', '41', '2021-05-25 21:04:40', '12');
INSERT INTO `pages` VALUES ('1105', '1037', '43', 'hanna', '1', '2021-05-25 21:07:09', '41', '2021-05-25 21:05:28', '41', '2021-05-25 21:06:57', '13');
INSERT INTO `pages` VALUES ('1106', '1037', '43', 'mara', '1', '2021-05-25 21:07:56', '41', '2021-05-25 21:07:18', '41', '2021-05-25 21:07:56', '14');
INSERT INTO `pages` VALUES ('1107', '1037', '43', 'zoe', '1', '2021-05-25 21:08:40', '41', '2021-05-25 21:08:04', '41', '2021-05-25 21:08:40', '15');
INSERT INTO `pages` VALUES ('1108', '1037', '43', 'candela', '1', '2021-05-25 21:09:29', '41', '2021-05-25 21:08:49', '41', '2021-05-25 21:09:29', '16');
INSERT INTO `pages` VALUES ('1109', '1037', '43', 'gala', '1', '2021-05-25 21:10:47', '41', '2021-05-25 21:09:37', '41', '2021-05-25 21:10:47', '17');
INSERT INTO `pages` VALUES ('1110', '1037', '43', 'talia', '1', '2021-05-25 21:14:58', '41', '2021-05-25 21:13:53', '41', '2021-05-25 21:14:58', '18');
INSERT INTO `pages` VALUES ('1111', '1037', '43', 'danna', '1', '2021-05-25 21:15:44', '41', '2021-05-25 21:15:06', '41', '2021-05-25 21:15:44', '19');
INSERT INTO `pages` VALUES ('1112', '1037', '43', 'alba', '1', '2021-05-25 21:18:51', '41', '2021-05-25 21:15:53', '41', '2021-05-25 21:18:51', '20');
INSERT INTO `pages` VALUES ('1113', '1021', '69', 'tipo-de-vestido', '1', '2021-05-25 21:24:13', '41', '2021-05-25 21:23:30', '41', '2021-05-25 21:23:30', '7');
INSERT INTO `pages` VALUES ('1114', '1113', '70', 'barco', '1', '2021-05-25 21:25:01', '41', '2021-05-25 21:24:13', '41', '2021-05-25 21:24:13', '1');
INSERT INTO `pages` VALUES ('1115', '1113', '70', 'en-v', '1', '2021-05-25 21:24:13', '41', '2021-05-25 21:24:13', '41', '2021-05-25 21:24:13', '2');
INSERT INTO `pages` VALUES ('1116', '1113', '70', 'halter', '1', '2021-05-25 21:24:13', '41', '2021-05-25 21:24:13', '41', '2021-05-25 21:24:13', '3');
INSERT INTO `pages` VALUES ('1117', '1113', '70', 'corazon', '1', '2021-05-25 21:24:13', '41', '2021-05-25 21:24:13', '41', '2021-05-25 21:24:13', '4');
INSERT INTO `pages` VALUES ('1118', '1113', '70', 'palabra-de-honor', '1', '2021-05-25 21:24:13', '41', '2021-05-25 21:24:13', '41', '2021-05-25 21:24:13', '5');
INSERT INTO `pages` VALUES ('1119', '22', '2', 'appapi', '1', '2021-05-26 10:10:50', '41', '2021-05-26 10:10:50', '41', '2021-05-26 10:10:50', '4');
INSERT INTO `pages` VALUES ('1120', '31', '5', 'appapi_manage_applications', '1', '2021-05-26 10:10:50', '41', '2021-05-26 10:10:50', '41', '2021-05-26 10:10:50', '17');
INSERT INTO `pages` VALUES ('1121', '1', '65', 'tiendas', '1', '2021-05-26 13:22:43', '41', '2021-05-26 13:19:16', '41', '2021-05-26 13:19:16', '3');
INSERT INTO `pages` VALUES ('1122', '7', '49', '1122.1016.0_productos', '8193', '2021-06-01 19:10:14', '41', '2021-05-26 13:25:01', '41', '2021-05-26 13:25:01', '0');
INSERT INTO `pages` VALUES ('1123', '1168', '43', 'agnes', '1', '2021-06-01 21:50:48', '41', '2021-05-26 13:26:22', '41', '2021-05-26 13:26:22', '2');
INSERT INTO `pages` VALUES ('1124', '1169', '43', 'iva', '1', '2021-06-01 18:49:28', '41', '2021-05-26 13:26:23', '41', '2021-05-26 13:26:23', '0');
INSERT INTO `pages` VALUES ('1125', '1170', '43', 'jane', '1', '2021-06-01 21:43:49', '41', '2021-05-26 13:26:23', '41', '2021-05-26 13:26:23', '0');
INSERT INTO `pages` VALUES ('1126', '1171', '43', 'kiera', '1', '2021-06-01 21:44:01', '41', '2021-05-26 13:26:23', '41', '2021-05-26 13:26:23', '0');
INSERT INTO `pages` VALUES ('1127', '1172', '43', 'romy', '1', '2021-06-01 21:44:12', '41', '2021-05-26 13:26:23', '41', '2021-05-26 13:26:23', '0');
INSERT INTO `pages` VALUES ('1128', '1045', '53', 'azul-cielo', '1', '2021-05-26 18:42:01', '41', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '4');
INSERT INTO `pages` VALUES ('1129', '1045', '53', 'azul-rey', '1', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '5');
INSERT INTO `pages` VALUES ('1130', '1045', '53', 'blush', '1', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '6');
INSERT INTO `pages` VALUES ('1131', '1045', '53', 'palo-de-rosa', '1', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '7');
INSERT INTO `pages` VALUES ('1132', '1045', '53', 'verde-jade', '1', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '8');
INSERT INTO `pages` VALUES ('1133', '1045', '53', 'vino', '1', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '9');
INSERT INTO `pages` VALUES ('1134', '1047', '60', 'escote-strapless', '1', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '5');
INSERT INTO `pages` VALUES ('1135', '1047', '60', 'hombro-caido', '1', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '41', '2021-05-26 13:28:05', '6');
INSERT INTO `pages` VALUES ('1136', '1070', '63', 'chic', '1', '2021-06-01 18:03:27', '41', '2021-05-26 13:29:20', '41', '2021-05-26 13:29:20', '8');
INSERT INTO `pages` VALUES ('1137', '1070', '63', 'fashionable', '1', '2021-06-01 18:03:30', '41', '2021-05-26 13:30:22', '41', '2021-05-26 13:30:22', '9');
INSERT INTO `pages` VALUES ('1138', '1045', '53', 'oro', '1', '2021-05-26 13:30:22', '41', '2021-05-26 13:30:22', '41', '2021-05-26 13:30:22', '10');
INSERT INTO `pages` VALUES ('1139', '1070', '63', 'stylish', '1', '2021-06-01 18:04:09', '41', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '10');
INSERT INTO `pages` VALUES ('1140', '1045', '53', 'champagne', '1', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '11');
INSERT INTO `pages` VALUES ('1141', '1045', '53', 'rojo', '1', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '12');
INSERT INTO `pages` VALUES ('1142', '1047', '60', '2-piezas', '1', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '7');
INSERT INTO `pages` VALUES ('1143', '1047', '60', 'escote-corazon-con-tirantes', '1', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '8');
INSERT INTO `pages` VALUES ('1144', '1047', '60', 'transparencias', '1', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '41', '2021-05-26 13:32:25', '9');
INSERT INTO `pages` VALUES ('1145', '1045', '53', 'champagne-vino', '1', '2021-05-26 18:42:36', '41', '2021-05-26 13:34:30', '41', '2021-05-26 13:34:30', '13');
INSERT INTO `pages` VALUES ('1146', '1045', '53', 'champagne-azul-rey', '1', '2021-05-26 13:34:30', '41', '2021-05-26 13:34:30', '41', '2021-05-26 13:34:30', '14');
INSERT INTO `pages` VALUES ('1147', '1045', '53', 'champagne-palo-de-rosa', '1', '2021-05-26 13:34:30', '41', '2021-05-26 13:34:30', '41', '2021-05-26 13:34:30', '15');
INSERT INTO `pages` VALUES ('1148', '1047', '60', 'escote-strapless-corazon', '1', '2021-05-26 13:34:30', '41', '2021-05-26 13:34:30', '41', '2021-05-26 13:34:30', '10');
INSERT INTO `pages` VALUES ('1149', '1169', '43', 'sun', '1', '2021-06-01 21:44:18', '41', '2021-05-26 13:35:31', '41', '2021-05-26 13:36:31', '1');
INSERT INTO `pages` VALUES ('1150', '1047', '60', 'escote-cuello-princesa', '1', '2021-05-26 13:36:31', '41', '2021-05-26 13:36:31', '41', '2021-05-26 13:36:31', '11');
INSERT INTO `pages` VALUES ('1151', '1169', '43', 'harley', '1', '2021-06-01 18:49:21', '41', '2021-05-26 13:45:03', '41', '2021-05-26 13:45:56', '2');
INSERT INTO `pages` VALUES ('1152', '1170', '43', 'tanit', '1', '2021-06-01 21:44:24', '41', '2021-05-26 13:58:25', '41', '2021-05-26 13:59:20', '1');
INSERT INTO `pages` VALUES ('1153', '1047', '60', 'escote-corazon-con-tirante', '1', '2021-05-26 13:59:20', '41', '2021-05-26 13:59:20', '41', '2021-05-26 13:59:20', '12');
INSERT INTO `pages` VALUES ('1154', '1021', '71', 'tipo-de-manga', '1', '2021-05-26 14:42:19', '41', '2021-05-26 14:40:35', '41', '2021-05-26 14:40:35', '8');
INSERT INTO `pages` VALUES ('1155', '1154', '72', 'manga-corta', '1', '2021-05-26 14:41:57', '41', '2021-05-26 14:41:57', '41', '2021-05-26 14:41:57', '1');
INSERT INTO `pages` VALUES ('1156', '1154', '72', 'manga-larga', '1', '2021-05-26 14:42:19', '41', '2021-05-26 14:42:19', '41', '2021-05-26 14:42:19', '2');
INSERT INTO `pages` VALUES ('1157', '1021', '73', 'tipos-de-caida', '1', '2021-05-26 15:22:49', '41', '2021-05-26 15:21:51', '41', '2021-05-26 15:21:51', '9');
INSERT INTO `pages` VALUES ('1158', '1157', '74', 'caida-hombro', '1', '2021-05-26 15:22:49', '41', '2021-05-26 15:22:49', '41', '2021-05-26 15:22:49', '1');
INSERT INTO `pages` VALUES ('1159', '1157', '74', 'caida-2', '1', '2021-05-26 15:22:49', '41', '2021-05-26 15:22:49', '41', '2021-05-26 15:22:49', '2');
INSERT INTO `pages` VALUES ('1160', '1021', '75', 'extras', '1', '2021-05-26 15:28:20', '41', '2021-05-26 15:26:44', '41', '2021-05-26 15:26:44', '10');
INSERT INTO `pages` VALUES ('1161', '1160', '76', 'extra-1', '1', '2021-05-26 15:28:20', '41', '2021-05-26 15:28:20', '41', '2021-05-26 15:28:20', '1');
INSERT INTO `pages` VALUES ('1162', '1160', '76', 'extra-2', '1', '2021-05-26 15:28:20', '41', '2021-05-26 15:28:20', '41', '2021-05-26 15:28:20', '2');
INSERT INTO `pages` VALUES ('1163', '1160', '76', 'extra-3', '1', '2021-05-26 15:28:20', '41', '2021-05-26 15:28:20', '41', '2021-05-26 15:28:20', '3');
INSERT INTO `pages` VALUES ('1164', '7', '48', '1164.1.7_opciones-1', '9217', '2021-06-01 17:24:13', '41', '2021-06-01 17:24:02', '41', '2021-06-01 17:24:02', '7');
INSERT INTO `pages` VALUES ('1165', '7', '78', '1165.1016.4_chic', '8193', '2021-06-01 18:41:35', '41', '2021-06-01 18:35:47', '41', '2021-06-01 18:35:47', '4');
INSERT INTO `pages` VALUES ('1166', '7', '78', '1166.1016.5_fashionable', '8193', '2021-06-01 18:41:37', '41', '2021-06-01 18:40:17', '41', '2021-06-01 18:40:17', '5');
INSERT INTO `pages` VALUES ('1167', '7', '78', '1167.1016.6_moderna', '8193', '2021-06-01 18:41:43', '41', '2021-06-01 18:40:35', '41', '2021-06-01 18:40:35', '6');
INSERT INTO `pages` VALUES ('1168', '1016', '77', 'chic', '1', '2021-06-01 18:49:45', '41', '2021-06-01 18:44:03', '41', '2021-06-01 18:46:25', '4');
INSERT INTO `pages` VALUES ('1169', '1016', '77', 'fashionable', '1', '2021-06-01 21:44:19', '41', '2021-06-01 18:47:53', '41', '2021-06-01 18:47:53', '5');
INSERT INTO `pages` VALUES ('1170', '1016', '77', 'moderna', '1', '2021-06-01 21:44:24', '41', '2021-06-01 18:48:01', '41', '2021-06-01 18:48:01', '6');
INSERT INTO `pages` VALUES ('1171', '1016', '77', 'stylish', '1', '2021-06-01 21:44:01', '41', '2021-06-01 18:48:11', '41', '2021-06-01 18:48:11', '8');
INSERT INTO `pages` VALUES ('1172', '1016', '77', 'vanguardia', '1', '2021-06-01 21:44:12', '41', '2021-06-01 18:48:29', '41', '2021-06-01 18:48:29', '9');
INSERT INTO `pages` VALUES ('1173', '1016', '80', 'distribuidores', '1', '2021-06-01 21:22:50', '41', '2021-06-01 21:04:49', '41', '2021-06-01 21:04:49', '10');
INSERT INTO `pages` VALUES ('1174', '22', '2', 'import-pages-csv', '1', '2021-06-01 21:22:23', '41', '2021-06-01 21:22:23', '41', '2021-06-01 21:22:23', '5');
INSERT INTO `pages` VALUES ('1175', '1173', '81', 'maria-eugenia-garcia-ovando', '1', '2021-06-01 21:31:44', '41', '2021-06-01 21:31:44', '41', '2021-06-01 21:31:44', '0');
INSERT INTO `pages` VALUES ('1176', '1173', '81', 'no-martha-morales-castillo', '1', '2021-06-01 21:31:44', '41', '2021-06-01 21:31:44', '41', '2021-06-01 21:31:44', '1');
INSERT INTO `pages` VALUES ('1177', '1173', '81', 'no-victor-manuel-carranza-aragon', '1', '2021-06-01 21:31:44', '41', '2021-06-01 21:31:44', '41', '2021-06-01 21:31:44', '2');
INSERT INTO `pages` VALUES ('1178', '1173', '81', 'no-alberto-morales-murcia', '1', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '3');
INSERT INTO `pages` VALUES ('1179', '1173', '81', 'no-ana-maria-gonzalez-lopez', '1', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '4');
INSERT INTO `pages` VALUES ('1180', '1173', '81', 'no-elia-maria-vargas-figueroa', '1', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '5');
INSERT INTO `pages` VALUES ('1181', '1173', '81', 'no-elisa-huerta-de-la-garza', '1', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '6');
INSERT INTO `pages` VALUES ('1182', '1173', '81', 'no-martha-elvira-villareal-trevino', '1', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '7');
INSERT INTO `pages` VALUES ('1183', '1173', '81', 'no-martha-villareal-rendon', '1', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '8');
INSERT INTO `pages` VALUES ('1184', '1173', '81', 'no-ruben-cortez-magallanes', '1', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '9');
INSERT INTO `pages` VALUES ('1185', '1173', '81', 'adela-jimenez-jimenez', '1', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '10');
INSERT INTO `pages` VALUES ('1186', '1173', '81', 'alana-s.a-de-c.v', '1', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '41', '2021-06-01 21:31:45', '11');
INSERT INTO `pages` VALUES ('1187', '1168', '43', 'harley', '1', '2021-06-01 21:49:26', '41', '2021-06-01 21:46:57', '41', '2021-06-01 21:48:13', '1');
INSERT INTO `pages` VALUES ('1188', '1047', '60', 'accesorio-de-brazo', '1', '2021-06-01 21:48:13', '41', '2021-06-01 21:48:13', '41', '2021-06-01 21:48:13', '13');

-- ----------------------------
-- Table structure for `pages_access`
-- ----------------------------
DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages_access
-- ----------------------------
INSERT INTO `pages_access` VALUES ('37', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('38', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('32', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('34', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('35', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('36', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('50', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('51', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('52', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('53', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('54', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('1006', '2', '2021-05-24 15:55:29');
INSERT INTO `pages_access` VALUES ('1011', '2', '2021-05-24 15:56:11');
INSERT INTO `pages_access` VALUES ('1013', '2', '2021-05-24 15:56:32');
INSERT INTO `pages_access` VALUES ('1014', '2', '2021-05-24 15:56:32');
INSERT INTO `pages_access` VALUES ('1015', '1', '2021-05-24 16:04:11');
INSERT INTO `pages_access` VALUES ('1016', '1', '2021-05-24 16:06:12');
INSERT INTO `pages_access` VALUES ('1077', '1', '2021-05-25 18:56:19');
INSERT INTO `pages_access` VALUES ('1076', '1', '2021-05-25 18:56:19');
INSERT INTO `pages_access` VALUES ('1075', '1', '2021-05-25 18:55:29');
INSERT INTO `pages_access` VALUES ('1088', '1', '2021-05-25 20:33:42');
INSERT INTO `pages_access` VALUES ('1021', '1', '2021-05-24 16:10:45');
INSERT INTO `pages_access` VALUES ('1139', '1', '2021-05-26 13:32:25');
INSERT INTO `pages_access` VALUES ('1138', '1', '2021-05-26 13:30:22');
INSERT INTO `pages_access` VALUES ('1050', '2', '2021-05-25 13:32:16');
INSERT INTO `pages_access` VALUES ('1092', '1', '2021-05-25 20:35:11');
INSERT INTO `pages_access` VALUES ('1091', '1', '2021-05-25 20:35:11');
INSERT INTO `pages_access` VALUES ('1090', '1', '2021-05-25 20:35:10');
INSERT INTO `pages_access` VALUES ('1074', '2', '2021-05-25 16:03:50');
INSERT INTO `pages_access` VALUES ('1089', '1', '2021-05-25 20:35:10');
INSERT INTO `pages_access` VALUES ('1137', '1', '2021-05-26 13:30:22');
INSERT INTO `pages_access` VALUES ('1041', '2', '2021-05-24 19:19:23');
INSERT INTO `pages_access` VALUES ('1040', '2', '2021-05-24 19:19:23');
INSERT INTO `pages_access` VALUES ('1033', '2', '2021-05-24 16:29:00');
INSERT INTO `pages_access` VALUES ('1035', '2', '2021-05-24 16:34:40');
INSERT INTO `pages_access` VALUES ('1081', '1', '2021-05-25 19:33:38');
INSERT INTO `pages_access` VALUES ('1080', '1', '2021-05-25 18:56:19');
INSERT INTO `pages_access` VALUES ('1079', '1', '2021-05-25 18:56:19');
INSERT INTO `pages_access` VALUES ('1082', '1', '2021-05-25 19:38:28');
INSERT INTO `pages_access` VALUES ('1136', '1', '2021-05-26 13:29:20');
INSERT INTO `pages_access` VALUES ('1135', '1', '2021-05-26 13:28:05');
INSERT INTO `pages_access` VALUES ('1134', '1', '2021-05-26 13:28:05');
INSERT INTO `pages_access` VALUES ('1133', '1', '2021-05-26 13:28:05');
INSERT INTO `pages_access` VALUES ('1132', '1', '2021-05-26 13:28:05');
INSERT INTO `pages_access` VALUES ('1131', '1', '2021-05-26 13:28:05');
INSERT INTO `pages_access` VALUES ('1130', '1', '2021-05-26 13:28:05');
INSERT INTO `pages_access` VALUES ('1097', '1', '2021-05-25 20:47:13');
INSERT INTO `pages_access` VALUES ('1129', '1', '2021-05-26 13:28:05');
INSERT INTO `pages_access` VALUES ('1095', '1', '2021-05-25 20:35:11');
INSERT INTO `pages_access` VALUES ('1094', '1', '2021-05-25 20:35:11');
INSERT INTO `pages_access` VALUES ('1093', '1', '2021-05-25 20:35:11');
INSERT INTO `pages_access` VALUES ('1078', '1', '2021-05-25 18:56:19');
INSERT INTO `pages_access` VALUES ('1128', '1', '2021-05-26 13:28:05');
INSERT INTO `pages_access` VALUES ('1127', '1', '2021-05-26 13:26:23');
INSERT INTO `pages_access` VALUES ('1126', '1', '2021-05-26 13:26:23');
INSERT INTO `pages_access` VALUES ('1125', '1', '2021-05-26 13:26:23');
INSERT INTO `pages_access` VALUES ('1124', '1', '2021-05-26 13:26:23');
INSERT INTO `pages_access` VALUES ('1123', '1', '2021-05-26 13:26:23');
INSERT INTO `pages_access` VALUES ('1122', '2', '2021-06-01 19:10:14');
INSERT INTO `pages_access` VALUES ('1113', '1', '2021-05-25 21:23:30');
INSERT INTO `pages_access` VALUES ('1114', '1', '2021-05-25 21:24:13');
INSERT INTO `pages_access` VALUES ('1115', '1', '2021-05-25 21:24:13');
INSERT INTO `pages_access` VALUES ('1116', '1', '2021-05-25 21:24:13');
INSERT INTO `pages_access` VALUES ('1117', '1', '2021-05-25 21:24:13');
INSERT INTO `pages_access` VALUES ('1118', '1', '2021-05-25 21:24:13');
INSERT INTO `pages_access` VALUES ('1120', '2', '2021-05-26 10:10:50');
INSERT INTO `pages_access` VALUES ('1121', '1', '2021-05-26 13:19:16');
INSERT INTO `pages_access` VALUES ('1140', '1', '2021-05-26 13:32:25');
INSERT INTO `pages_access` VALUES ('1141', '1', '2021-05-26 13:32:25');
INSERT INTO `pages_access` VALUES ('1142', '1', '2021-05-26 13:32:25');
INSERT INTO `pages_access` VALUES ('1143', '1', '2021-05-26 13:32:25');
INSERT INTO `pages_access` VALUES ('1144', '1', '2021-05-26 13:32:25');
INSERT INTO `pages_access` VALUES ('1145', '1', '2021-05-26 13:34:30');
INSERT INTO `pages_access` VALUES ('1146', '1', '2021-05-26 13:34:30');
INSERT INTO `pages_access` VALUES ('1147', '1', '2021-05-26 13:34:30');
INSERT INTO `pages_access` VALUES ('1148', '1', '2021-05-26 13:34:30');
INSERT INTO `pages_access` VALUES ('1149', '1', '2021-05-26 13:35:31');
INSERT INTO `pages_access` VALUES ('1150', '1', '2021-05-26 13:36:31');
INSERT INTO `pages_access` VALUES ('1151', '1', '2021-05-26 13:45:03');
INSERT INTO `pages_access` VALUES ('1152', '1', '2021-05-26 13:58:25');
INSERT INTO `pages_access` VALUES ('1153', '1', '2021-05-26 13:59:20');
INSERT INTO `pages_access` VALUES ('1154', '1', '2021-05-26 14:40:35');
INSERT INTO `pages_access` VALUES ('1155', '1', '2021-05-26 14:41:57');
INSERT INTO `pages_access` VALUES ('1156', '1', '2021-05-26 14:42:19');
INSERT INTO `pages_access` VALUES ('1157', '1', '2021-05-26 15:21:51');
INSERT INTO `pages_access` VALUES ('1158', '1', '2021-05-26 15:22:49');
INSERT INTO `pages_access` VALUES ('1159', '1', '2021-05-26 15:22:49');
INSERT INTO `pages_access` VALUES ('1160', '1', '2021-05-26 15:26:44');
INSERT INTO `pages_access` VALUES ('1161', '1', '2021-05-26 15:28:20');
INSERT INTO `pages_access` VALUES ('1162', '1', '2021-05-26 15:28:20');
INSERT INTO `pages_access` VALUES ('1163', '1', '2021-05-26 15:28:20');
INSERT INTO `pages_access` VALUES ('1164', '2', '2021-06-01 17:24:13');
INSERT INTO `pages_access` VALUES ('1165', '2', '2021-06-01 18:41:35');
INSERT INTO `pages_access` VALUES ('1166', '2', '2021-06-01 18:41:37');
INSERT INTO `pages_access` VALUES ('1167', '2', '2021-06-01 18:41:43');
INSERT INTO `pages_access` VALUES ('1168', '1', '2021-06-01 18:44:03');
INSERT INTO `pages_access` VALUES ('1169', '1', '2021-06-01 18:47:53');
INSERT INTO `pages_access` VALUES ('1170', '1', '2021-06-01 18:48:01');
INSERT INTO `pages_access` VALUES ('1171', '1', '2021-06-01 18:48:11');
INSERT INTO `pages_access` VALUES ('1172', '1', '2021-06-01 18:48:29');
INSERT INTO `pages_access` VALUES ('1173', '1', '2021-06-01 21:04:49');
INSERT INTO `pages_access` VALUES ('1175', '1', '2021-06-01 21:31:44');
INSERT INTO `pages_access` VALUES ('1176', '1', '2021-06-01 21:31:44');
INSERT INTO `pages_access` VALUES ('1177', '1', '2021-06-01 21:31:44');
INSERT INTO `pages_access` VALUES ('1178', '1', '2021-06-01 21:31:45');
INSERT INTO `pages_access` VALUES ('1179', '1', '2021-06-01 21:31:45');
INSERT INTO `pages_access` VALUES ('1180', '1', '2021-06-01 21:31:45');
INSERT INTO `pages_access` VALUES ('1181', '1', '2021-06-01 21:31:45');
INSERT INTO `pages_access` VALUES ('1182', '1', '2021-06-01 21:31:45');
INSERT INTO `pages_access` VALUES ('1183', '1', '2021-06-01 21:31:45');
INSERT INTO `pages_access` VALUES ('1184', '1', '2021-06-01 21:31:45');
INSERT INTO `pages_access` VALUES ('1185', '1', '2021-06-01 21:31:45');
INSERT INTO `pages_access` VALUES ('1186', '1', '2021-06-01 21:31:45');
INSERT INTO `pages_access` VALUES ('1187', '1', '2021-06-01 21:46:57');
INSERT INTO `pages_access` VALUES ('1188', '1', '2021-06-01 21:48:13');

-- ----------------------------
-- Table structure for `pages_parents`
-- ----------------------------
DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages_parents
-- ----------------------------
INSERT INTO `pages_parents` VALUES ('3', '2');
INSERT INTO `pages_parents` VALUES ('22', '2');
INSERT INTO `pages_parents` VALUES ('28', '2');
INSERT INTO `pages_parents` VALUES ('29', '2');
INSERT INTO `pages_parents` VALUES ('29', '28');
INSERT INTO `pages_parents` VALUES ('30', '2');
INSERT INTO `pages_parents` VALUES ('30', '28');
INSERT INTO `pages_parents` VALUES ('31', '2');
INSERT INTO `pages_parents` VALUES ('31', '28');
INSERT INTO `pages_parents` VALUES ('1015', '1121');
INSERT INTO `pages_parents` VALUES ('1016', '1121');
INSERT INTO `pages_parents` VALUES ('1037', '1015');
INSERT INTO `pages_parents` VALUES ('1037', '1121');
INSERT INTO `pages_parents` VALUES ('1042', '2');
INSERT INTO `pages_parents` VALUES ('1043', '1021');
INSERT INTO `pages_parents` VALUES ('1044', '1021');
INSERT INTO `pages_parents` VALUES ('1045', '1021');
INSERT INTO `pages_parents` VALUES ('1046', '1021');
INSERT INTO `pages_parents` VALUES ('1047', '1021');
INSERT INTO `pages_parents` VALUES ('1070', '1021');
INSERT INTO `pages_parents` VALUES ('1075', '1021');
INSERT INTO `pages_parents` VALUES ('1113', '1021');
INSERT INTO `pages_parents` VALUES ('1154', '1021');
INSERT INTO `pages_parents` VALUES ('1157', '1021');
INSERT INTO `pages_parents` VALUES ('1160', '1021');
INSERT INTO `pages_parents` VALUES ('1168', '1016');
INSERT INTO `pages_parents` VALUES ('1168', '1121');
INSERT INTO `pages_parents` VALUES ('1169', '1016');
INSERT INTO `pages_parents` VALUES ('1169', '1121');
INSERT INTO `pages_parents` VALUES ('1170', '1016');
INSERT INTO `pages_parents` VALUES ('1170', '1121');
INSERT INTO `pages_parents` VALUES ('1171', '1016');
INSERT INTO `pages_parents` VALUES ('1171', '1121');
INSERT INTO `pages_parents` VALUES ('1172', '1016');
INSERT INTO `pages_parents` VALUES ('1172', '1121');
INSERT INTO `pages_parents` VALUES ('1173', '1016');
INSERT INTO `pages_parents` VALUES ('1173', '1121');

-- ----------------------------
-- Table structure for `pages_sortfields`
-- ----------------------------
DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages_sortfields
-- ----------------------------

-- ----------------------------
-- Table structure for `process_forgot_password`
-- ----------------------------
DROP TABLE IF EXISTS `process_forgot_password`;
CREATE TABLE `process_forgot_password` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `token` char(32) NOT NULL,
  `ts` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `ts` (`ts`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

-- ----------------------------
-- Records of process_forgot_password
-- ----------------------------

-- ----------------------------
-- Table structure for `session_login_throttle`
-- ----------------------------
DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session_login_throttle
-- ----------------------------
INSERT INTO `session_login_throttle` VALUES ('admin', '1', '1622585746');

-- ----------------------------
-- Table structure for `templates`
-- ----------------------------
DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of templates
-- ----------------------------
INSERT INTO `templates` VALUES ('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1598035122,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` VALUES ('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1621976348}');
INSERT INTO `templates` VALUES ('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` VALUES ('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` VALUES ('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1622057236,\"ns\":\"\\\\\",\"roles\":[37,1033,1074]}');
INSERT INTO `templates` VALUES ('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1598035122,\"ns\":\"\\\\\"}');
INSERT INTO `templates` VALUES ('43', 'producto_vestido', '97', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"pageLabelField\":\"{id}-{title}\",\"compile\":3,\"modified\":1622599076,\"tabContent\":\"Contenido\",\"ns\":\"\\\\\"}');
INSERT INTO `templates` VALUES ('72', 'op_manga', '126', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Manga\",\"tags\":\"Options\",\"modified\":1622587895}');
INSERT INTO `templates` VALUES ('49', 'productos', '103', '0', '0', '{\"childTemplates\":[43],\"allowPageNum\":1,\"urlSegments\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Productos\",\"modified\":1622586094,\"ns\":\"\\\\\"}');
INSERT INTO `templates` VALUES ('46', 'categories', '100', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1621890515}');
INSERT INTO `templates` VALUES ('47', 'category', '101', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1621901831}');
INSERT INTO `templates` VALUES ('48', 'features', '102', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Opciones\",\"modified\":1622053446}');
INSERT INTO `templates` VALUES ('51', 'op_corte', '105', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Corte\",\"tags\":\"Options\",\"modified\":1622587886}');
INSERT INTO `templates` VALUES ('52', 'op_material', '106', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Material\",\"tags\":\"Options\",\"modified\":1622587900}');
INSERT INTO `templates` VALUES ('53', 'op_color', '107', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Color\",\"tags\":\"Options\",\"modified\":1622587882}');
INSERT INTO `templates` VALUES ('54', 'op_talla', '108', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Talla\",\"tags\":\"Options\",\"modified\":1622587903}');
INSERT INTO `templates` VALUES ('55', 'opts_colores', '109', '0', '0', '{\"childTemplates\":[53],\"slashUrls\":1,\"compile\":3,\"label\":\"Colores\",\"tags\":\"Options\",\"modified\":1621966463}');
INSERT INTO `templates` VALUES ('56', 'opts_cortes', '110', '0', '0', '{\"childTemplates\":[51],\"slashUrls\":1,\"compile\":3,\"label\":\"Cortes\",\"tags\":\"Options\",\"modified\":1621967674}');
INSERT INTO `templates` VALUES ('57', 'opts_caracteristicas', '111', '0', '0', '{\"childTemplates\":[60],\"slashUrls\":1,\"compile\":3,\"label\":\"Caracteristicas\",\"tags\":\"Options\",\"modified\":1622586303}');
INSERT INTO `templates` VALUES ('58', 'opts_tallas', '112', '0', '0', '{\"childTemplates\":[54],\"slashUrls\":1,\"compile\":3,\"label\":\"Tallas\",\"tags\":\"Options\",\"modified\":1621966611}');
INSERT INTO `templates` VALUES ('59', 'opts_material', '113', '0', '0', '{\"childTemplates\":[52],\"slashUrls\":1,\"compile\":3,\"label\":\"Materiales\",\"tags\":\"Options\",\"modified\":1621966411}');
INSERT INTO `templates` VALUES ('60', 'op_caracteristica', '114', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Caracteristica\",\"tags\":\"Options\",\"modified\":1622587878}');
INSERT INTO `templates` VALUES ('61', 'repeater_opts_caracteristicas', '115', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1621967300}');
INSERT INTO `templates` VALUES ('71', 'opts_mangas', '125', '0', '0', '{\"childTemplates\":[72],\"slashUrls\":1,\"compile\":3,\"label\":\"Mangas\",\"tags\":\"Options\",\"modified\":1622058394}');
INSERT INTO `templates` VALUES ('62', 'opts_colecciones', '116', '0', '0', '{\"childTemplates\":[63],\"slashUrls\":1,\"compile\":3,\"label\":\"Colecciones\",\"tags\":\"Options\",\"modified\":1621974562}');
INSERT INTO `templates` VALUES ('63', 'op_coleccion', '117', '0', '0', '{\"slashUrls\":1,\"compile\":0,\"label\":\"Colecci\\u00f3n\",\"tags\":\"Options\",\"modified\":1622588571}');
INSERT INTO `templates` VALUES ('64', 'store', '118', '0', '0', '{\"slashUrls\":1,\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Tienda\",\"modified\":1622601738,\"tabContent\":\"Contenido\",\"ns\":\"\\\\\"}');
INSERT INTO `templates` VALUES ('65', 'stores', '119', '0', '0', '{\"childTemplates\":[64],\"slashUrls\":1,\"compile\":3,\"modified\":1622053183}');
INSERT INTO `templates` VALUES ('66', 'opts_escotes', '120', '0', '0', '{\"childTemplates\":[67],\"slashUrls\":1,\"compile\":3,\"label\":\"Escotes\",\"tags\":\"Options\",\"modified\":1621995652}');
INSERT INTO `templates` VALUES ('67', 'op_escote', '121', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Escote\",\"tags\":\"Options\",\"modified\":1622587889}');
INSERT INTO `templates` VALUES ('69', 'opts_vestidos', '123', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Vestidos\",\"tags\":\"Options\",\"modified\":1621995750}');
INSERT INTO `templates` VALUES ('70', 'op_vestido', '124', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Vestido\",\"tags\":\"Options\",\"modified\":1622587908}');
INSERT INTO `templates` VALUES ('73', 'opts_caida', '127', '0', '0', '{\"childTemplates\":[74],\"slashUrls\":1,\"compile\":3,\"label\":\"Caidas\",\"tags\":\"Options\",\"modified\":1622058489}');
INSERT INTO `templates` VALUES ('74', 'op_caida', '128', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"pageLabelField\":\"{id}-{title}\",\"compile\":3,\"label\":\"Tipo de Caida\",\"tags\":\"Options\",\"modified\":1622587877,\"tabContent\":\"Contenido\"}');
INSERT INTO `templates` VALUES ('75', 'opts_extras', '129', '0', '0', '{\"childTemplates\":[76],\"slashUrls\":1,\"compile\":3,\"label\":\"Extras\",\"tags\":\"Options\",\"modified\":1622060760}');
INSERT INTO `templates` VALUES ('76', 'op_extra', '130', '0', '0', '{\"noChildren\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Extra\",\"tags\":\"Options\",\"modified\":1622587892}');
INSERT INTO `templates` VALUES ('77', 'coleccion', '131', '0', '0', '{\"parentTemplates\":[64],\"slashUrls\":1,\"compile\":3,\"label\":\"Coleccioon\",\"modified\":1622599360,\"ns\":\"\\\\\"}');
INSERT INTO `templates` VALUES ('78', 'colecciones', '132', '0', '0', '{\"childTemplates\":[43],\"slashUrls\":1,\"compile\":3,\"modified\":1622590746}');
INSERT INTO `templates` VALUES ('79', 'store_config', '133', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1622591570}');
INSERT INTO `templates` VALUES ('80', 'distribuidores', '134', '0', '0', '{\"childTemplates\":[81],\"slashUrls\":1,\"compile\":3,\"label\":\"Distribuidores\",\"modified\":1622601442,\"ns\":\"\\\\\"}');
INSERT INTO `templates` VALUES ('81', 'distribuidor', '135', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1622601673}');
