#出差费用报销

workflowTemplate["zh-CN"].push {
  "_id": "831a30ecde079b81ed60adc5",
  "name": "出差费用报销",
  "state": "enabled",
  "is_deleted": false,
  "is_valid": true,
  "space": "51ae9b1a8e296a29c9000001",
  "created": "2017-09-14T02:28:26.594Z",
  "created_by": "kFePuCYbpHCe7R6dT",
  "current": {
    "_id": "42936401-9ca7-4d40-bced-21b564aaccda",
    "_rev": 6,
    "created": "2017-09-20T07:08:42.544Z",
    "created_by": "kFePuCYbpHCe7R6dT",
    "modified": "2017-09-22T05:44:33.404Z",
    "modified_by": "kFePuCYbpHCe7R6dT",
    "start_date": "2017-09-20T07:08:42.544Z",
    "form": "831a30ecde079b81ed60adc5",
    "form_script": "CoreForm.pageTitle= \"出差费用报销\";",
    "name_forumla": "{部门}+{提交人}+{出差地点}+\"出差费用报销\"",
    "fields": [
      {
        "_id": "8F02714E-9CF6-4489-83AB-83552D92F38A",
        "code": "提交人信息",
        "is_required": false,
        "is_wide": true,
        "type": "section",
        "rows": 4,
        "digits": 0,
        "has_others": false,
        "is_multiselect": false,
        "is_list_display": false,
        "is_searchable": false,
        "oldCode": "提交人信息",
        "fields": [
          {
            "_id": "90121F1B-60CD-4742-8533-C09A23B2BB21",
            "code": "提交人",
            "is_required": true,
            "is_wide": false,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "formula": "{applicant.name}",
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "提交人",
            "is_searchable": true
          },
          {
            "_id": "7582D99C-F112-4DB2-A75F-BBBAB54A4FCA",
            "code": "职务",
            "default_value": "{applicant.position}",
            "is_required": true,
            "is_wide": false,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "职务",
            "is_searchable": true
          },
          {
            "_id": "BA9D17B8-16AF-43D1-BB91-4E0CA4768F2B",
            "code": "部门",
            "is_required": true,
            "is_wide": true,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "formula": "{applicant.organization.name}",
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "部门",
            "is_searchable": true
          }
        ]
      },
      {
        "_id": "974FDBDA-356C-45AF-BE40-D88A469E1505",
        "code": "出差信息",
        "is_required": false,
        "is_wide": true,
        "type": "section",
        "rows": 4,
        "digits": 0,
        "has_others": false,
        "is_multiselect": false,
        "is_list_display": false,
        "is_searchable": false,
        "oldCode": "出差信息",
        "fields": [
          {
            "_id": "C167CB35-1A4B-4225-B52F-57419FE98353",
            "code": "出差日期起",
            "is_required": true,
            "is_wide": false,
            "type": "date",
            "rows": 4,
            "digits": 0,
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "出差日期起",
            "is_searchable": false
          },
          {
            "_id": "98703BE6-8692-431A-92AD-E3BA1B14211B",
            "code": "出差日期迄",
            "is_required": true,
            "is_wide": false,
            "type": "date",
            "rows": 4,
            "digits": 0,
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "出差日期迄",
            "is_searchable": false
          },
          {
            "_id": "C7A200AA-8B51-48CD-9836-5C03011956E3",
            "code": "出差天数",
            "is_required": true,
            "is_wide": false,
            "type": "number",
            "rows": 4,
            "digits": 0,
            "formula": "CoreForm.Gettianshu()",
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "出差天数",
            "is_list_display": true,
            "is_searchable": true
          },
          {
            "_id": "694EC146-D7B7-4195-B57F-F524B66ECAFF",
            "code": "出差地点",
            "is_required": true,
            "is_wide": false,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "出差地点",
            "is_list_display": true,
            "is_searchable": true
          },
          {
            "_id": "D0716881-AC70-460B-B577-8F00CB67AAFB",
            "code": "项目名称",
            "is_required": false,
            "is_wide": true,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "项目名称",
            "is_list_display": true,
            "is_searchable": true
          },
          {
            "_id": "21F7C78C-5953-44C3-BE11-DA9F4B116591",
            "code": "出差事由",
            "is_required": true,
            "is_wide": true,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "出差事由",
            "is_textarea": true,
            "is_searchable": true
          },
          {
            "_id": "4C689FBC-E46F-4542-92A4-6E609E006B0B",
            "code": "备注",
            "is_required": false,
            "is_wide": true,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "备注",
            "is_searchable": true
          },
          {
            "_id": "3F9157DE-DA8F-4549-97F2-7AC7A699DEC3",
            "code": "同行人员",
            "is_required": false,
            "is_wide": false,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "同行人员",
            "is_searchable": true
          },
          {
            "_id": "89C3C59F-D477-4D9A-89D4-A0A0652F5CCD",
            "code": "是否同住",
            "default_value": "",
            "is_required": false,
            "is_wide": false,
            "type": "radio",
            "rows": 4,
            "digits": 0,
            "options": "是\n否",
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "是否同住",
            "is_list_display": false,
            "is_searchable": true
          }
        ]
      },
      {
        "_id": "5E6FBCD6-C10B-45BC-AFCE-4C980666ED6D",
        "name": "",
        "code": "出差费用明细",
        "is_required": false,
        "is_wide": true,
        "type": "table",
        "rows": 4,
        "digits": 0,
        "has_others": false,
        "is_multiselect": false,
        "is_list_display": false,
        "is_searchable": false,
        "oldCode": "出差费用明细",
        "subform_fields": [
          {
            "field_code": "fylb",
            "width": 150
          },
          {
            "field_code": "fyje",
            "width": 150
          },
          {
            "field_code": "bz",
            "width": 150
          }
        ],
        "fields": [
          {
            "_id": "E7FFE626-C42B-4AF6-B774-B92F937747BB",
            "name": "",
            "code": "费用类别",
            "default_value": "",
            "is_required": true,
            "is_wide": false,
            "type": "select",
            "rows": 4,
            "digits": 0,
            "options": "火车票\n飞机票\n住宿费\n餐费\n公交费\n轮船票\n住勤补贴\n其他费用",
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "费用类别",
            "subform_fields": [],
            "is_searchable": true
          },
          {
            "_id": "EF76F284-7FB2-4480-B317-C635EC3D5308",
            "name": "",
            "code": "费用金额(RMB)",
            "is_required": true,
            "is_wide": false,
            "type": "number",
            "rows": 4,
            "digits": 2,
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "费用金额(RMB)",
            "subform_fields": [],
            "is_searchable": true
          },
          {
            "_id": "6F36B7A8-AC3C-4D77-B62C-EBA801732BA3",
            "name": "",
            "code": "费用说明",
            "is_required": false,
            "is_wide": true,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "费用说明",
            "subform_fields": [],
            "is_searchable": true
          }
        ]
      },
      {
        "_id": "6B6BAEE6-2DE9-42F0-8A98-A08886633AFE",
        "name": "",
        "code": "报销费用合计",
        "is_required": false,
        "is_wide": false,
        "type": "number",
        "rows": 4,
        "digits": 2,
        "formula": "sum({费用金额(RMB)})",
        "has_others": false,
        "is_multiselect": false,
        "is_list_display": true,
        "is_searchable": true,
        "oldCode": "报销费用合计",
        "subform_fields": [],
        "fields": []
      },
      {
        "_id": "31D6413E-095D-4329-B10F-9D0A0AB72B16",
        "name": "",
        "code": "原借支金额",
        "default_value": "0.00",
        "is_required": true,
        "is_wide": false,
        "type": "number",
        "rows": 4,
        "digits": 2,
        "formula": "",
        "has_others": false,
        "is_multiselect": false,
        "is_list_display": false,
        "is_searchable": true,
        "oldCode": "原借支金额",
        "subform_fields": [],
        "fields": []
      },
      {
        "_id": "0AD2C219-CABA-444F-8681-9C08B62C154F",
        "name": "",
        "code": "实际报销金额",
        "is_required": true,
        "is_wide": false,
        "type": "number",
        "rows": 4,
        "digits": 2,
        "formula": "{报销费用合计}-{原借支金额}",
        "has_others": false,
        "is_multiselect": false,
        "is_list_display": true,
        "is_searchable": true,
        "oldCode": "实际报销金额",
        "subform_fields": [],
        "fields": []
      },
      {
        "_id": "7A948A59-BF31-4901-B3AB-525C813AB5F2",
        "code": "实际报销金额（大写）",
        "is_required": false,
        "is_wide": true,
        "type": "input",
        "rows": 4,
        "digits": 0,
        "formula": "CoreForm.custom_numToCny({实际报销金额})",
        "has_others": false,
        "is_multiselect": false,
        "is_list_display": false,
        "is_searchable": true,
        "oldCode": "实际报销金额（大写）"
      },
      {
        "_id": "748DF14F-6FA1-44FC-81DF-1E4CADBB2193",
        "code": "审批意见",
        "is_required": false,
        "is_wide": true,
        "type": "section",
        "rows": 4,
        "digits": 0,
        "has_others": false,
        "is_multiselect": false,
        "is_list_display": false,
        "is_searchable": false,
        "oldCode": "审批意见",
        "fields": [
          {
            "_id": "6DDACF20-497F-4AEA-8BF3-B4E7AD1C107F",
            "code": "部门领导意见",
            "is_required": false,
            "is_wide": true,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "formula": "{yijianlan:{step:'部门领导审核'}}",
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "部门领导意见",
            "is_textarea": true,
            "is_searchable": true
          },
          {
            "_id": "1F7D0C08-1B31-4C0E-AFF8-9E7656AC05CA",
            "code": "办公室主任意见",
            "is_required": false,
            "is_wide": true,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "formula": "{yijianlan:{step:'办公室主任审核'}}",
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "办公室主任意见",
            "is_textarea": true,
            "is_searchable": true
          },
          {
            "_id": "EFF2E355-232D-4CD6-8CD0-9BD710763D96",
            "code": "财务部经理意见",
            "is_required": false,
            "is_wide": true,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "formula": "{yijianlan:{step:'财务部审核'}}",
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "财务部经理意见",
            "is_textarea": true,
            "is_searchable": true
          },
          {
            "_id": "FF7CEE46-D1B4-4DC1-B88F-FEE78F4DBA3E",
            "code": "总经理意见",
            "is_required": false,
            "is_wide": true,
            "type": "input",
            "rows": 4,
            "digits": 0,
            "formula": "{yijianlan:{step:'总经理审批'}}",
            "has_others": false,
            "is_multiselect": false,
            "oldCode": "总经理意见",
            "is_textarea": true,
            "is_searchable": true
          }
        ]
      }
    ]
  },
  "enable_workflow": false,
  "enable_view_others": false,
  "app": "workflow",
  "category": "59b9f331527eca4fc200001e",
  "instance_style": "table",
  "is_subform": false,
  "approve_on_create": false,
  "approve_on_modify": false,
  "approve_on_delete": false,
  "import": true,
  "historys": [],
  "category_name": "财务",
  "flows": [
    {
      "_id": "6315192196a5dc74c7c046fa",
      "name": "出差费用报销",
      "name_formula": "",
      "code_formula": "",
      "space": "51ae9b1a8e296a29c9000001",
      "is_valid": true,
      "form": "831a30ecde079b81ed60adc5",
      "flowtype": "new",
      "state": "enabled",
      "is_deleted": false,
      "created": "2017-09-14T02:28:26.626Z",
      "created_by": "kFePuCYbpHCe7R6dT",
      "current_no": 3,
      "current": {
        "_id": "d4f8440f-f72e-4928-9a34-d33641d0782d",
        "_rev": 9,
        "flow": "6315192196a5dc74c7c046fa",
        "form_version": "42936401-9ca7-4d40-bced-21b564aaccda",
        "modified": "2017-09-22T05:44:33.524Z",
        "modified_by": "kFePuCYbpHCe7R6dT",
        "created": "2017-09-20T07:08:20.567Z",
        "created_by": "kFePuCYbpHCe7R6dT",
        "start_date": "2017-09-20T07:08:20.567Z",
        "steps": [
          {
            "_id": "0C8693C6-2538-4EFD-B85E-AB9016F0F369",
            "name": "开始(提交申请)",
            "step_type": "start",
            "deal_type": "",
            "description": "",
            "posx": 290.200000762939,
            "posy": 77,
            "timeout_hours": 168,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {
              "行程安排": "editable",
              "暂支日期": "editable",
              "预计归还日期": "editable",
              "暂支事由": "editable",
              "暂支金额": "editable",
              "文本2": "editable",
              "文本3": "editable",
              "文本4": "editable",
              "日期": "editable",
              "日期1": "editable",
              "文本": "editable",
              "单选": "editable",
              "__form": "editable",
              "出差信息": "editable",
              "职务": "editable",
              "出差日期起": "editable",
              "出差日期迄": "editable",
              "出差地点": "editable",
              "出差事由": "editable",
              "备注": "editable",
              "同行人员": "editable",
              "是否同住": "editable",
              "出差费用明细": "editable",
              "费用类别": "editable",
              "费用金额(RMB)": "editable",
              "费用说明": "editable",
              "原借支金额": "editable",
              "审批意见": "editable",
              "提交人信息": "editable",
              "文本1": "editable",
              "项目名称": "editable"
            },
            "can_edit_main_attach": false,
            "can_edit_normal_attach": true,
            "distribute_optional_flows": [],
            "lines": [
              {
                "_id": "1c2088e8-4401-4991-86f2-a2808905cef6",
                "name": "",
                "state": "submitted",
                "to_step": "bda5aa18-5aed-4d19-bdd7-f5463ee28bc9",
                "description": ""
              }
            ],
            "approver_roles_name": []
          },
          {
            "_id": "3F08CD51-420B-4F3B-A3B9-9300D272AAB4",
            "name": "结束",
            "step_type": "end",
            "deal_type": "",
            "description": "",
            "posx": 1039.10000610352,
            "posy": 692,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {},
            "distribute_optional_flows": [],
            "approver_roles_name": []
          },
          {
            "_id": "d8a13de2-f5b3-4dad-b204-b06aed6a7f08",
            "name": "总经理审批",
            "step_type": "sign",
            "deal_type": "applicantRole",
            "description": "",
            "posx": 1257.60003662109,
            "posy": 74,
            "timeout_hours": 168,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [
              "51af1b2f8e296a29c9000063"
            ],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {},
            "disableCC": false,
            "allowDistribute": false,
            "can_edit_main_attach": false,
            "can_edit_normal_attach": true,
            "distribute_optional_flows": [],
            "cc_must_finished": false,
            "cc_alert": false,
            "lines": [
              {
                "_id": "5d74b0aa-e580-464f-9cf8-6c0a14506ab8",
                "name": "",
                "state": "approved",
                "to_step": "44934215-fd56-4cf8-b489-f8fb8f94b38a",
                "description": ""
              }
            ],
            "approver_roles_name": [
              "总经理"
            ]
          },
          {
            "_id": "44934215-fd56-4cf8-b489-f8fb8f94b38a",
            "name": "提交人提交纸质报销单至财务部",
            "step_type": "submit",
            "deal_type": "applicant",
            "description": "",
            "posx": 1001.60003662109,
            "posy": 268,
            "timeout_hours": 168,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {},
            "disableCC": false,
            "allowDistribute": false,
            "can_edit_main_attach": false,
            "can_edit_normal_attach": true,
            "distribute_optional_flows": [],
            "cc_must_finished": false,
            "cc_alert": false,
            "lines": [
              {
                "_id": "ba857db4-92e3-4f74-93ec-93deea43ede4",
                "name": "",
                "state": "submitted",
                "to_step": "6e4d0efb-d8e7-470f-be05-35aafb63b6f3",
                "description": ""
              }
            ],
            "approver_roles_name": []
          },
          {
            "_id": "6e4d0efb-d8e7-470f-be05-35aafb63b6f3",
            "name": "财务发放报销款",
            "step_type": "submit",
            "deal_type": "applicantRole",
            "description": "",
            "posx": 1020.60003662109,
            "posy": 440,
            "timeout_hours": 168,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [
              "530ad822334904539e000ae9"
            ],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {},
            "disableCC": false,
            "allowDistribute": false,
            "can_edit_main_attach": false,
            "can_edit_normal_attach": true,
            "distribute_optional_flows": [],
            "cc_must_finished": false,
            "cc_alert": false,
            "lines": [
              {
                "_id": "daaf1773-ffd0-401c-9489-e2d56367df5c",
                "name": "",
                "state": "submitted",
                "to_step": "fba3fdd1-2d42-49a8-8028-2127cc450e0a",
                "description": ""
              }
            ],
            "approver_roles_name": [
              "出纳"
            ]
          },
          {
            "_id": "13925f58-f1eb-4635-adf2-910a6fa06c54",
            "name": "财务部审核",
            "step_type": "sign",
            "deal_type": "applicantRole",
            "description": "",
            "posx": 835.200012207031,
            "posy": 77,
            "timeout_hours": 168,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [
              "51af1dd18e296a29c900007f"
            ],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {},
            "disableCC": false,
            "allowDistribute": false,
            "can_edit_main_attach": false,
            "can_edit_normal_attach": true,
            "distribute_optional_flows": [],
            "cc_must_finished": false,
            "cc_alert": false,
            "lines": [
              {
                "_id": "e45f089a-56a5-49e9-9c44-eb4b0b27bf27",
                "name": "",
                "state": "approved",
                "to_step": "bca5880e-662f-4356-ad86-cfa68c0fcd5c",
                "description": ""
              }
            ],
            "approver_roles_name": [
              "财务部经理"
            ]
          },
          {
            "_id": "49539831-6b82-4f59-85b9-ea103e828fd0",
            "name": "部门领导审核",
            "step_type": "sign",
            "deal_type": "applicantRole",
            "description": "",
            "posx": 457.199996948242,
            "posy": 77,
            "timeout_hours": 168,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [
              "4GzKuzw4ke3BWscN8"
            ],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {},
            "disableCC": false,
            "allowDistribute": false,
            "can_edit_main_attach": false,
            "can_edit_normal_attach": true,
            "distribute_optional_flows": [],
            "cc_must_finished": false,
            "cc_alert": false,
            "lines": [
              {
                "_id": "91bda173-7a3c-466a-b16e-8d853610c853",
                "name": "",
                "state": "approved",
                "to_step": "8ec3ed61-2c74-41be-ad10-d3f8c11c2375",
                "description": ""
              }
            ],
            "approver_roles_name": [
              "部门经理"
            ]
          },
          {
            "_id": "bca5880e-662f-4356-ad86-cfa68c0fcd5c",
            "name": "判断金额是否大于3000？",
            "step_type": "condition",
            "deal_type": "",
            "description": "",
            "posx": 1006,
            "posy": 63,
            "timeout_hours": 168,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {},
            "distribute_optional_flows": [],
            "lines": [
              {
                "_id": "e1c26fe0-993b-4053-a8f2-e42b1a08ae23",
                "name": "",
                "state": "submitted",
                "condition": "{报销费用合计}>3000",
                "to_step": "d8a13de2-f5b3-4dad-b204-b06aed6a7f08",
                "description": ""
              },
              {
                "_id": "a651fde6-9978-4539-8355-c4f357959eca",
                "name": "",
                "state": "submitted",
                "condition": "{报销费用合计}<=3000",
                "to_step": "44934215-fd56-4cf8-b489-f8fb8f94b38a",
                "description": ""
              }
            ],
            "approver_roles_name": []
          },
          {
            "_id": "fba3fdd1-2d42-49a8-8028-2127cc450e0a",
            "name": "提交人确认",
            "step_type": "submit",
            "deal_type": "applicant",
            "description": "",
            "posx": 1031.60003662109,
            "posy": 559,
            "timeout_hours": 168,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {},
            "disableCC": false,
            "allowDistribute": false,
            "can_edit_main_attach": false,
            "can_edit_normal_attach": true,
            "distribute_optional_flows": [],
            "cc_must_finished": false,
            "cc_alert": false,
            "lines": [
              {
                "_id": "10f59bd6-133d-4319-8751-3cdda6575771",
                "name": "",
                "state": "submitted",
                "to_step": "3F08CD51-420B-4F3B-A3B9-9300D272AAB4",
                "description": ""
              }
            ],
            "approver_roles_name": []
          },
          {
            "_id": "8ec3ed61-2c74-41be-ad10-d3f8c11c2375",
            "name": "办公室主任审核",
            "step_type": "sign",
            "deal_type": "applicantRole",
            "description": "",
            "posx": 633.200012207031,
            "posy": 76,
            "timeout_hours": 168,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [
              "fM2c7opzHmqyWj4r3"
            ],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {},
            "disableCC": false,
            "allowDistribute": false,
            "can_edit_main_attach": false,
            "can_edit_normal_attach": true,
            "distribute_optional_flows": [],
            "cc_must_finished": false,
            "cc_alert": false,
            "lines": [
              {
                "_id": "88063342-7eec-4c7c-bea6-03ae7467ce14",
                "name": "",
                "state": "approved",
                "to_step": "13925f58-f1eb-4635-adf2-910a6fa06c54",
                "description": ""
              }
            ],
            "approver_roles_name": [
              "办公室主任"
            ]
          },
          {
            "_id": "bda5aa18-5aed-4d19-bdd7-f5463ee28bc9",
            "name": "判断申请人是否为部门经理或办公室主任？",
            "step_type": "condition",
            "deal_type": "",
            "description": "",
            "posx": 572.199996948242,
            "posy": 285,
            "timeout_hours": 168,
            "approver_user_field": "",
            "approver_org_field": "",
            "approver_roles": [],
            "approver_orgs": [],
            "approver_users": [],
            "approver_step": "",
            "fields_modifiable": [],
            "permissions": {},
            "distribute_optional_flows": [],
            "lines": [
              {
                "_id": "65a36767-2472-455b-aa31-2e6aa42b8cf3",
                "name": "",
                "state": "submitted",
                "condition": "{applicant.roles}.contains('部门经理') ||  {applicant.organization.name}='办公室'",
                "to_step": "8ec3ed61-2c74-41be-ad10-d3f8c11c2375",
                "description": ""
              },
              {
                "_id": "b36cd31a-421d-419c-92cd-7f7d946c9028",
                "name": "",
                "state": "submitted",
                "condition": "!({applicant.roles}.contains('部门经理') || {applicant.roles}.contains('办公室主任'))",
                "to_step": "49539831-6b82-4f59-85b9-ea103e828fd0",
                "description": ""
              },
              {
                "_id": "20ae23d1-9d1d-4c35-b903-0a77d1a237eb",
                "name": "",
                "state": "submitted",
                "condition": "{applicant.roles}.contains('办公室主任')",
                "to_step": "13925f58-f1eb-4635-adf2-910a6fa06c54",
                "description": ""
              }
            ],
            "approver_roles_name": []
          }
        ]
      },
      "app": "workflow",
      "distribute_optional_users": [],
      "events": "CoreForm.custom_numToCny = function (num) {\n\nif(isNaN(num))return \"无效数值！\";\n\nvar strPrefix=\"\";\n\nif(num<0)strPrefix =\"(负)\";\n\nnum=Math.abs(num);\n\nif(num>=1000000000000)return \"无效数值！\";\n\nvar strOutput = \"\";\n\nvar strUnit = '仟佰拾亿仟佰拾万仟佰拾元角分';\n\nvar strCapDgt='零壹贰叁肆伍陆柒捌玖';\n\nnum += \"00\";\n\nvar intPos = num.indexOf('.');\n\nif (intPos >= 0){\n\nnum = num.substring(0, intPos) + num.substr(intPos + 1, 2);\n\n}\n\nstrUnit = strUnit.substr(strUnit.length - num.length);\n\nfor (var i=0; i < num.length; i++){\n\nstrOutput += strCapDgt.substr(num.substr(i,1),1) + strUnit.substr(i,1);\n\n}\n\nreturn strPrefix+strOutput.replace(/零角零分$/, '整').replace(/零[仟佰拾]/g, '零').replace(/零{2,}/g, '零').replace(/零([亿|万])/g,'$1').replace(/零+元/, '元').replace(/亿零{0,3}万/, '亿').replace(/^元/, \"零元\");\n\n};\n\nCoreForm.Gettianshu = function(){\n\tif(AutoForm.getFieldValue('出差日期迄', 'instanceform') && AutoForm.getFieldValue('出差日期起', 'instanceform'))\n\t{\n\tvar tianshu= (new Date(AutoForm.getFieldValue('出差日期迄', 'instanceform'))- (new Date(AutoForm.getFieldValue('出差日期起', 'instanceform'))))/24/3600/1000;\n\tif(tianshu>=0)\n\t    return tianshu;\n\telse\n\t    swal(\n\t    {\n\t    title:\"出差日期迄不能小于出差日期起\",\n\t    type:\"warning\",\n\t    confirmButtonText:\"确定\"\n\t    });\n\t    return -1;\n\t}\n\t\n};",
      "historys": []
    }
  ]
}