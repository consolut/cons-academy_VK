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
				"52aae23a-4611-4e9e-855e-5cb36c24b084": {}
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
			"x": 861,
			"y": 97,
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
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 6,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 1,
			"exclusivegateway": 1
		},
		"9ff1cddf-304d-4a8d-8fac-e52f3badfab3": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "1ec44c4d-659b-44f0-8c4a-849bf13a440a"
		},
		"5748e2aa-58cc-42f0-88a9-be1544ade50b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 443.37073643296924,
			"y": 96.625,
			"object": "9ff1cddf-304d-4a8d-8fac-e52f3badfab3"
		},
		"1ec44c4d-659b-44f0-8c4a-849bf13a440a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "9ff1cddf-304d-4a8d-8fac-e52f3badfab3",
			"targetRef": "8c688772-cf24-45c3-b41e-6f1fc06360bb"
		},
		"00f81c3c-57d3-43b4-9264-44447f236f59": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "464.37073643296924,115.84557342529297 552.028076171875,115.84557342529297 552.028076171875,-62.15442657470703 668.6853637695312,-62.15442657470703",
			"sourceSymbol": "5748e2aa-58cc-42f0-88a9-be1544ade50b",
			"targetSymbol": "94068557-74db-4877-bee8-c02ec36fb79a",
			"object": "1ec44c4d-659b-44f0-8c4a-849bf13a440a"
		},
		"8c688772-cf24-45c3-b41e-6f1fc06360bb": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowSalesOrderProcessingVK/CreateSalesOrderRequest.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"94068557-74db-4877-bee8-c02ec36fb79a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 618.6853682164847,
			"y": -97.4375,
			"width": 100,
			"height": 67,
			"object": "8c688772-cf24-45c3-b41e-6f1fc06360bb"
		},
		"08e7f4c6-d0dc-439c-a6f2-1dcc74e6872e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "8c688772-cf24-45c3-b41e-6f1fc06360bb",
			"targetRef": "225ddcf9-c6c7-42c2-acf9-9e1b346513b7"
		},
		"39ac4470-6c4b-4f39-aec5-ff8d654e5a8e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "668.6853682164847,-63.9375 757.6390380859375,-63.9375 757.6390380859375,-44.72057342529297 846.0926513671875,-44.72057342529297",
			"sourceSymbol": "94068557-74db-4877-bee8-c02ec36fb79a",
			"targetSymbol": "ce1c1d91-ccd5-4903-bfca-c3b024125ab2",
			"object": "08e7f4c6-d0dc-439c-a6f2-1dcc74e6872e"
		},
		"263ff21e-9118-4c83-b817-6a1da2684c4f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"Reject\"}",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "9ff1cddf-304d-4a8d-8fac-e52f3badfab3",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"642eba24-6f6d-4808-b0ac-7f4e2b1e8581": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "464.37073643296924,117.625 870,117.625",
			"sourceSymbol": "5748e2aa-58cc-42f0-88a9-be1544ade50b",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "263ff21e-9118-4c83-b817-6a1da2684c4f"
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
		"ce1c1d91-ccd5-4903-bfca-c3b024125ab2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 796.0926513671875,
			"y": -74.72057342529297,
			"width": 100,
			"height": 60,
			"object": "225ddcf9-c6c7-42c2-acf9-9e1b346513b7"
		},
		"e09dd2ee-6746-42cd-ac7a-d3ecff6eb6b0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "225ddcf9-c6c7-42c2-acf9-9e1b346513b7",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"52aae23a-4611-4e9e-855e-5cb36c24b084": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "846.0926513671875,-44.72057342529297 846.0926513671875,41.389713287353516 878.5,41.389713287353516 878.5,114.5",
			"sourceSymbol": "ce1c1d91-ccd5-4903-bfca-c3b024125ab2",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "e09dd2ee-6746-42cd-ac7a-d3ecff6eb6b0"
		}
	}
}