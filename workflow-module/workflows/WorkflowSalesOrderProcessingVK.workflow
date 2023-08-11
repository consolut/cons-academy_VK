{
	"contents": {
		"9dfb122b-d79b-442a-ace3-94e30b4f76db": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflowvk.workflowsalesorderprocessingvk",
			"subject": "WorkflowSalesOrderProcessingVK",
			"name": "WorkflowSalesOrderProcessingVK",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"3e3f9c74-87f8-4796-9350-c963f2f8fbcc": {
					"name": "Approval Form"
				},
				"9ff1cddf-304d-4a8d-8fac-e52f3badfab3": {
					"name": "ExclusiveGateway1"
				},
				"8c688772-cf24-45c3-b41e-6f1fc06360bb": {
					"name": "ScriptTask1"
				},
				"225ddcf9-c6c7-42c2-acf9-9e1b346513b7": {
					"name": "ServiceTask1"
				},
				"eb9977fd-d928-47f5-9cb6-2021e709b73c": {
					"name": "ItemDetails"
				},
				"4843eaa1-276a-4ad0-97d0-e0634a4dc89d": {
					"name": "ExclusiveGateway2"
				},
				"0e5c63f7-3c07-495a-9740-d3440da1f934": {
					"name": "ScriptTask2"
				},
				"6ab34e32-0e03-4276-b461-f2ae1dbc430f": {
					"name": "MailTask1"
				},
				"e3f92b7b-6f5b-4f86-b487-ae9108ca85f6": {
					"name": "ServiceTask2"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"35b4e742-1cce-47b6-a714-33e5fd2ee9da": {
					"name": "SequenceFlow2"
				},
				"1ec44c4d-659b-44f0-8c4a-849bf13a440a": {
					"name": "SequenceFlow3"
				},
				"08e7f4c6-d0dc-439c-a6f2-1dcc74e6872e": {
					"name": "SequenceFlow4"
				},
				"263ff21e-9118-4c83-b817-6a1da2684c4f": {
					"name": "SequenceFlow5"
				},
				"e09dd2ee-6746-42cd-ac7a-d3ecff6eb6b0": {
					"name": "SequenceFlow6"
				},
				"a8de6062-12e4-440c-be82-fb43fe8ca5e5": {
					"name": "SequenceFlow8"
				},
				"f19fb7ac-aec6-474a-aabc-3004589e71f5": {
					"name": "SequenceFlow11"
				},
				"1f5492fe-4d2a-40ac-b245-3098a94b570f": {
					"name": "SequenceFlow12"
				},
				"41236028-d0ab-47f0-adb6-70e55f7d6ff7": {
					"name": "SequenceFlow13"
				},
				"c1d2762d-aa4d-4254-ac24-7783b0d6ada3": {
					"name": "SequenceFlow14"
				},
				"6448c2f5-bac8-40e6-9e74-d73f5f02c191": {
					"name": "SequenceFlow15"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"d4e4b62b-95c4-4215-9ad7-e864b26757a8": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"3e3f9c74-87f8-4796-9350-c963f2f8fbcc": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval Form",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "vasileios.kiosses@consolut.com",
			"formReference": "/forms/WorkflowSalesOrderProcessingVK/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Form"
		},
		"9ff1cddf-304d-4a8d-8fac-e52f3badfab3": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "1ec44c4d-659b-44f0-8c4a-849bf13a440a"
		},
		"8c688772-cf24-45c3-b41e-6f1fc06360bb": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowSalesOrderProcessingVK/CreateSalesOrderRequest.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"225ddcf9-c6c7-42c2-acf9-9e1b346513b7": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderHeader.request}",
			"responseVariable": "${context.SalesOrderHeader.response}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "3e3f9c74-87f8-4796-9350-c963f2f8fbcc"
		},
		"35b4e742-1cce-47b6-a714-33e5fd2ee9da": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "3e3f9c74-87f8-4796-9350-c963f2f8fbcc",
			"targetRef": "9ff1cddf-304d-4a8d-8fac-e52f3badfab3"
		},
		"1ec44c4d-659b-44f0-8c4a-849bf13a440a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "9ff1cddf-304d-4a8d-8fac-e52f3badfab3",
			"targetRef": "8c688772-cf24-45c3-b41e-6f1fc06360bb"
		},
		"08e7f4c6-d0dc-439c-a6f2-1dcc74e6872e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "8c688772-cf24-45c3-b41e-6f1fc06360bb",
			"targetRef": "225ddcf9-c6c7-42c2-acf9-9e1b346513b7"
		},
		"263ff21e-9118-4c83-b817-6a1da2684c4f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"reject\" }",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "9ff1cddf-304d-4a8d-8fac-e52f3badfab3",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"e09dd2ee-6746-42cd-ac7a-d3ecff6eb6b0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "225ddcf9-c6c7-42c2-acf9-9e1b346513b7",
			"targetRef": "eb9977fd-d928-47f5-9cb6-2021e709b73c"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"0950da70-bdec-4bf5-b425-d630274c21c9": {},
				"ca7b8b94-9e48-49de-9e29-668160590248": {},
				"5748e2aa-58cc-42f0-88a9-be1544ade50b": {},
				"00f81c3c-57d3-43b4-9264-44447f236f59": {},
				"94068557-74db-4877-bee8-c02ec36fb79a": {},
				"39ac4470-6c4b-4f39-aec5-ff8d654e5a8e": {},
				"642eba24-6f6d-4808-b0ac-7f4e2b1e8581": {},
				"ce1c1d91-ccd5-4903-bfca-c3b024125ab2": {},
				"52aae23a-4611-4e9e-855e-5cb36c24b084": {},
				"85c8ad68-1cb6-4341-b213-f2681990cd59": {},
				"e83eee8b-aa41-4adc-91bf-091c0a7463cb": {},
				"73fa2f36-b597-48d5-bf8f-eeb5ff7d6c6a": {},
				"627a956d-4909-48f0-a00b-6848c2c60e4f": {},
				"2d3b9c47-7703-4f73-898b-c4604feb7b42": {},
				"fe0b34d3-c53b-4ce8-bff3-30a0b8d9a606": {},
				"84ed3f19-405e-49a3-b7ac-995d227c328c": {},
				"1fe0cc14-4e48-4ac4-9492-587ccc287229": {},
				"e22d6a84-dda6-4188-9aec-c22fa3e82c59": {},
				"289cc0f3-3a7c-40df-a9ce-2863cd313786": {},
				"1db234fc-6399-4dd4-8f1a-736bae51769a": {}
			}
		},
		"d4e4b62b-95c4-4215-9ad7-e864b26757a8": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/WorkflowSalesOrderProcessingVK/WorkflowInput.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1364,
			"y": 88,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.875 282.2414728659385,116.875",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "0950da70-bdec-4bf5-b425-d630274c21c9",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"0950da70-bdec-4bf5-b425-d630274c21c9": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 232.24147286593848,
			"y": 87.75,
			"width": 100,
			"height": 60,
			"object": "3e3f9c74-87f8-4796-9350-c963f2f8fbcc"
		},
		"ca7b8b94-9e48-49de-9e29-668160590248": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "282.2414728659385,117.6875 464.37073643296924,117.6875",
			"sourceSymbol": "0950da70-bdec-4bf5-b425-d630274c21c9",
			"targetSymbol": "5748e2aa-58cc-42f0-88a9-be1544ade50b",
			"object": "35b4e742-1cce-47b6-a714-33e5fd2ee9da"
		},
		"5748e2aa-58cc-42f0-88a9-be1544ade50b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 443.37073643296924,
			"y": 96.625,
			"object": "9ff1cddf-304d-4a8d-8fac-e52f3badfab3"
		},
		"00f81c3c-57d3-43b4-9264-44447f236f59": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "464.37073643296924,115.84557342529297 464.3707275390625,-60.07720947265625 656.6853637695312,-60.077213287353516",
			"sourceSymbol": "5748e2aa-58cc-42f0-88a9-be1544ade50b",
			"targetSymbol": "94068557-74db-4877-bee8-c02ec36fb79a",
			"object": "1ec44c4d-659b-44f0-8c4a-849bf13a440a"
		},
		"94068557-74db-4877-bee8-c02ec36fb79a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 606.6853682164847,
			"y": -96.4375,
			"width": 100,
			"height": 67,
			"object": "8c688772-cf24-45c3-b41e-6f1fc06360bb"
		},
		"39ac4470-6c4b-4f39-aec5-ff8d654e5a8e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "656.6853682164847,-60.829036712646484 861.0926513671875,-60.829036712646484",
			"sourceSymbol": "94068557-74db-4877-bee8-c02ec36fb79a",
			"targetSymbol": "ce1c1d91-ccd5-4903-bfca-c3b024125ab2",
			"object": "08e7f4c6-d0dc-439c-a6f2-1dcc74e6872e"
		},
		"642eba24-6f6d-4808-b0ac-7f4e2b1e8581": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "464.37073643296924,120.0625 1387,120.0625",
			"sourceSymbol": "5748e2aa-58cc-42f0-88a9-be1544ade50b",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "263ff21e-9118-4c83-b817-6a1da2684c4f"
		},
		"ce1c1d91-ccd5-4903-bfca-c3b024125ab2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 811.0926513671875,
			"y": -88.72057342529297,
			"width": 100,
			"height": 60,
			"object": "225ddcf9-c6c7-42c2-acf9-9e1b346513b7"
		},
		"52aae23a-4611-4e9e-855e-5cb36c24b084": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "861.0926513671875,-62.165428161621094 1039.79638671875,-62.165428161621094",
			"sourceSymbol": "ce1c1d91-ccd5-4903-bfca-c3b024125ab2",
			"targetSymbol": "85c8ad68-1cb6-4341-b213-f2681990cd59",
			"object": "e09dd2ee-6746-42cd-ac7a-d3ecff6eb6b0"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 15,
			"startevent": 1,
			"endevent": 1,
			"usertask": 3,
			"servicetask": 2,
			"scripttask": 2,
			"mailtask": 1,
			"exclusivegateway": 2
		},
		"eb9977fd-d928-47f5-9cb6-2021e709b73c": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Sales Order Number",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "vasileios.kiosses@consolut.com",
			"formReference": "/forms/WorkflowSalesOrderProcessingVK/ItemDetailsForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "itemdetailsform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "ItemDetails"
		},
		"85c8ad68-1cb6-4341-b213-f2681990cd59": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 989.79638671875,
			"y": -95.61028289794922,
			"width": 100,
			"height": 60,
			"object": "eb9977fd-d928-47f5-9cb6-2021e709b73c"
		},
		"a8de6062-12e4-440c-be82-fb43fe8ca5e5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "eb9977fd-d928-47f5-9cb6-2021e709b73c",
			"targetRef": "4843eaa1-276a-4ad0-97d0-e0634a4dc89d"
		},
		"e83eee8b-aa41-4adc-91bf-091c0a7463cb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1039.79638671875,-66.58271408081055 1200.648193359375,-66.58271408081055",
			"sourceSymbol": "85c8ad68-1cb6-4341-b213-f2681990cd59",
			"targetSymbol": "73fa2f36-b597-48d5-bf8f-eeb5ff7d6c6a",
			"object": "a8de6062-12e4-440c-be82-fb43fe8ca5e5"
		},
		"4843eaa1-276a-4ad0-97d0-e0634a4dc89d": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "41236028-d0ab-47f0-adb6-70e55f7d6ff7"
		},
		"73fa2f36-b597-48d5-bf8f-eeb5ff7d6c6a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1179.648193359375,
			"y": -88.55514526367188,
			"object": "4843eaa1-276a-4ad0-97d0-e0634a4dc89d"
		},
		"0e5c63f7-3c07-495a-9740-d3440da1f934": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowSalesOrderProcessingVK/GetSalesOrderItem.js",
			"id": "scripttask2",
			"name": "ScriptTask2"
		},
		"627a956d-4909-48f0-a00b-6848c2c60e4f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1356.5740966796875,
			"y": -96.27757263183594,
			"width": 100,
			"height": 60,
			"object": "0e5c63f7-3c07-495a-9740-d3440da1f934"
		},
		"6ab34e32-0e03-4276-b461-f2ae1dbc430f": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "d1f9cf71-6173-4fd9-8db3-fa484654f5e6"
		},
		"2d3b9c47-7703-4f73-898b-c4604feb7b42": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1158.648193359375,
			"y": 13.444854736328125,
			"width": 100,
			"height": 60,
			"object": "6ab34e32-0e03-4276-b461-f2ae1dbc430f"
		},
		"f19fb7ac-aec6-474a-aabc-3004589e71f5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask3.last.decision == \"reject\" }",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "4843eaa1-276a-4ad0-97d0-e0634a4dc89d",
			"targetRef": "6ab34e32-0e03-4276-b461-f2ae1dbc430f"
		},
		"fe0b34d3-c53b-4ce8-bff3-30a0b8d9a606": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1198.3240966796875,-67.55514526367188 1198.3240966796875,43.444854736328125",
			"sourceSymbol": "73fa2f36-b597-48d5-bf8f-eeb5ff7d6c6a",
			"targetSymbol": "2d3b9c47-7703-4f73-898b-c4604feb7b42",
			"object": "f19fb7ac-aec6-474a-aabc-3004589e71f5"
		},
		"1f5492fe-4d2a-40ac-b245-3098a94b570f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "6ab34e32-0e03-4276-b461-f2ae1dbc430f",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"84ed3f19-405e-49a3-b7ac-995d227c328c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1208.5740966796875,43.444854736328125 1208.5740966796875,119 1381.5740966796875,119",
			"sourceSymbol": "2d3b9c47-7703-4f73-898b-c4604feb7b42",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "1f5492fe-4d2a-40ac-b245-3098a94b570f"
		},
		"41236028-d0ab-47f0-adb6-70e55f7d6ff7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "4843eaa1-276a-4ad0-97d0-e0634a4dc89d",
			"targetRef": "0e5c63f7-3c07-495a-9740-d3440da1f934"
		},
		"1fe0cc14-4e48-4ac4-9492-587ccc287229": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1200.648193359375,-69.77757263183594 1376,-69.77757263183594",
			"sourceSymbol": "73fa2f36-b597-48d5-bf8f-eeb5ff7d6c6a",
			"targetSymbol": "627a956d-4909-48f0-a00b-6848c2c60e4f",
			"object": "41236028-d0ab-47f0-adb6-70e55f7d6ff7"
		},
		"e3f92b7b-6f5b-4f86-b487-ae9108ca85f6": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder('${context.SalesOrderHeader.response.d.SalesOrder}')/to_Item",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderItem.request}",
			"responseVariable": "${context.SalesOrderItem.response}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask2",
			"name": "ServiceTask2"
		},
		"e22d6a84-dda6-4188-9aec-c22fa3e82c59": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1565.5740966796875,
			"y": -96.27757263183594,
			"width": 100,
			"height": 60,
			"object": "e3f92b7b-6f5b-4f86-b487-ae9108ca85f6"
		},
		"c1d2762d-aa4d-4254-ac24-7783b0d6ada3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "0e5c63f7-3c07-495a-9740-d3440da1f934",
			"targetRef": "e3f92b7b-6f5b-4f86-b487-ae9108ca85f6"
		},
		"289cc0f3-3a7c-40df-a9ce-2863cd313786": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1406.5740966796875,-66.27757263183594 1615.5740966796875,-66.27757263183594",
			"sourceSymbol": "627a956d-4909-48f0-a00b-6848c2c60e4f",
			"targetSymbol": "e22d6a84-dda6-4188-9aec-c22fa3e82c59",
			"object": "c1d2762d-aa4d-4254-ac24-7783b0d6ada3"
		},
		"6448c2f5-bac8-40e6-9e74-d73f5f02c191": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "e3f92b7b-6f5b-4f86-b487-ae9108ca85f6",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"1db234fc-6399-4dd4-8f1a-736bae51769a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1641,-66.27757263183594 1641,111 1381.5,111",
			"sourceSymbol": "e22d6a84-dda6-4188-9aec-c22fa3e82c59",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "6448c2f5-bac8-40e6-9e74-d73f5f02c191"
		},
		"d1f9cf71-6173-4fd9-8db3-fa484654f5e6": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "vasileios.kiosses@consolut.com",
			"subject": "Rejected",
			"text": "Service Task 2 is rejected.",
			"id": "maildefinition1"
		}
	}
}