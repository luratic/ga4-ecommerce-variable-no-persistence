___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Ecommerce GA4  (no persistence)",
  "categories": [
    "UTILITY"
  ],
  "description": "Returns the GA4 \u003cstrong\u003eecommerce items \u003cs/strong\u003e avoiding persistence.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "info",
    "displayName": "\u003cstrong\u003e\u003ca href\u003d\"https://www.luratic.com/posts/templates/variables/ga4-ecommerce-no-persistence/\"\u003eDocumentation\u003c/a\u003e\u003c/strong\u003e"
  },
  {
    "type": "LABEL",
    "name": "info2",
    "displayName": "\u003cstrong\u003e\u003ca href\u003d\"https://datola.es\"\u003eCommunity 📊\u003c/a\u003e\u003c/strong\u003e"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const dataLayer = require('copyFromDataLayer');
const ecommerce = dataLayer('ecommerce', 1);
if(ecommerce) {
  return ecommerce.items;
}
return undefined;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ecommerce"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Variable result is defined
  code: |-
    // Call runCode to run the template's code.
    let variableResult = runCode();

    // Validate that the result of runCode is defined.
    assertThat(variableResult).isDefined();
setup: ''


___NOTES___

Developed with ❤ by: Alfonso, Txema and Brais.
Web: www.luratic.com
Linkedin: 
https://www.linkedin.com/in/braiscalvo/
https://www.linkedin.com/in/alfonsorc/
https://www.linkedin.com/in/txemasm/


