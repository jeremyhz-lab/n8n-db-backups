SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict GouI2F91iUcK4YtD6M7LMnAvAxhK6Pqr1JxljURfEpYe4ip2K64V2V4EAuWiww8

-- Dumped from database version 17.11
-- Dumped by pg_dump version 17.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: mfa_recovery_code_sets; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_recovery_code_sets" ("id", "user_id", "mfa_factor_id", "failed_verification_count", "verification_locked_until", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: mfa_recovery_codes; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_recovery_codes" ("id", "mfa_recovery_code_set_id", "code_hash", "consumed_at", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: scim_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."scim_tokens" ("id", "sso_provider_id", "token_hash", "prefix", "created_at", "expires_at", "revoked_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: scim_users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."scim_users" ("id", "sso_provider_id", "user_id", "resource", "created_at", "updated_at", "deleted_at") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:chatUser	Chat User	Can only use workflows through the chat interface, not build them	global	t	2026-10-26 13:16:33.622+00	2026-10-26 13:16:33.622+00
global:owner	Owner	Owner	global	t	2026-10-26 13:06:46.289+00	2026-10-26 13:16:36.646+00
global:admin	Admin	Full control of the instance, including all workflows and credentials	global	t	2026-10-26 13:06:46.289+00	2026-10-26 13:16:36.646+00
global:member	Member	Can create and use their own workflows and credentials	global	t	2026-10-26 13:06:46.289+00	2026-10-26 13:16:36.646+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-10-26 13:06:46.289+00	2026-10-26 13:16:41.642+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-10-26 13:06:46.289+00	2026-10-26 13:16:41.642+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-10-26 13:06:46.289+00	2026-10-26 13:16:41.642+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-10-26 13:06:46.289+00	2026-10-26 13:16:41.642+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-10-26 13:06:46.289+00	2026-10-26 13:16:41.642+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-10-26 13:16:33.622+00	2026-10-26 13:16:33.622+00
credential:user	Credential User	Credential User	credential	t	2026-10-26 13:16:33.622+00	2026-10-26 13:16:33.622+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-10-26 13:16:33.622+00	2026-10-26 13:16:33.622+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-10-26 13:16:33.622+00	2026-10-26 13:16:33.622+00
secretsProviderConnection:owner	Secrets Provider Connection Owner	Full control of secrets provider connection settings and secrets	secretsProviderConnection	t	2026-10-26 13:16:33.622+00	2026-10-26 13:16:33.622+00
secretsProviderConnection:user	Secrets Provider Connection User	Read-only access to use secrets from the connection	secretsProviderConnection	t	2026-10-26 13:16:33.622+00	2026-10-26 13:16:33.622+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
28cc310b-5ec7-4f2c-8615-b4b5ec49ee7a	jeremyannhernandez@gmail.com	Jeremy	Hz	$2a$10$H3vnHjbBDZIjmkKE9x7hPu1rmiAd0YP40cINUj4Ppb/KGttZIq10i	{"version":"v4","personalization_survey_submitted_at":"2026-10-26T13:46:34.957Z","personalization_survey_n8n_version":"2.44.7","companySize":"<20","companyType":"systems-integrator","role":"business-owner","reportedSource":"youtube"}	2026-10-26 13:06:46.289+00	2026-10-26 13:46:37.893+00	{"userActivated": false}	f	f	\N	\N	2026-10-26	global:owner
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description", "creatorId", "customTelemetryTags") FROM stdin;
EwqGLVt7WaE5lrdY	Jeremy Hz <jeremyannhernandez@gmail.com>	personal	2026-10-26 13:06:46.289+00	2026-10-26 13:44:46.628+00	\N	\N	28cc310b-5ec7-4f2c-8615-b4b5ec49ee7a	[]
\.


--
-- Data for Name: activity_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."activity_event" ("id", "category", "action", "typeVersion", "userId", "projectId", "resourceType", "resourceId", "resourceName", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents" ("id", "name", "projectId", "integrations", "schema", "tools", "skills", "versionId", "createdAt", "updatedAt", "activeVersionId", "availableInMCP", "setupCompletedAt", "revision") FROM stdin;
\.


--
-- Data for Name: agent_background_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_background_job" ("id", "kind", "status", "parentAgentId", "parentThreadId", "title", "subAgentId", "childThreadId", "childExecutionId", "workflowId", "timeoutAt", "result", "error", "settledAt", "createdAt", "updatedAt", "notifiedAt", "parentResourceId", "parentPrincipalHash", "pauseRequestId") FROM stdin;
\.


--
-- Data for Name: agent_budget_applied_call; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_budget_applied_call" ("callId", "createdAt") FROM stdin;
\.


--
-- Data for Name: agent_budget_spend; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_budget_spend" ("key", "totalUsd", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_channel_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_channel_status" ("agentId", "integrationType", "credentialId", "hostId", "status", "errorMessage", "attempts", "backoffUntil", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_chat_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_chat_attachments" ("id", "agentId", "projectId", "threadId", "resourceId", "binaryDataId", "fileName", "mimeType", "fileSizeBytes", "source", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_chat_subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_chat_subscriptions" ("agentId", "integrationType", "credentialId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_checkpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_checkpoints" ("runId", "agentId", "state", "expired", "createdAt", "updatedAt", "threadId") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_resolver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_resolver" ("id", "name", "type", "config", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged", "isGlobal", "isResolvable", "resolvableAllowFallback", "resolverId", "usageScope", "description", "pendingAuthorizationExpiresAt") FROM stdin;
Airtable Personal Access Token account	U2FsdGVkX18HS3ZVWTbmWPSv5qNzxf7mugRXwPluryH780IosqfoZ8rcz3lF1kXXNC0AnLNcyJi7VYb0MrpvibiwT6b54tJmMA6pulCGf4ujqmK/+CtK0Aie6c8bUIR6cHs45DcXEjiKfOT2JRxcTClx9GSKOvuY5aQY/pVXuoQ=	airtableTokenApi	2026-10-26 14:48:07.248+00	2026-10-26 14:48:06.105+00	SQpg5tCQ2ypZtrfS	f	f	f	f	\N	project	\N	\N
\.


--
-- Data for Name: agent_credential_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_credential_dependency" ("agentId", "credentialId", "createdAt") FROM stdin;
\.


--
-- Data for Name: agent_eval_dataset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_dataset" ("id", "name", "description", "agentId", "datasetSource", "datasetRef", "columnMapping", "createdById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_eval_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_run" ("id", "datasetId", "agentVersionId", "status", "runAt", "completedAt", "metrics", "errorCode", "errorDetails", "runningInstanceId", "cancelRequested", "createdById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_eval_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_result" ("id", "runId", "sourceRowId", "runIndex", "status", "input", "output", "toolCalls", "metrics", "runAt", "completedAt", "errorCode", "errorDetails", "createdAt", "updatedAt", "verdict") FROM stdin;
\.


--
-- Data for Name: agent_eval_rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_rating" ("id", "resultId", "vote", "comment", "correction", "ratedById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_history" ("versionId", "agentId", "schema", "tools", "skills", "publishedById", "author", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_execution_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_execution_threads" ("id", "agentId", "agentName", "projectId", "sessionNumber", "totalPromptTokens", "totalCompletionTokens", "totalCost", "totalDuration", "title", "emoji", "createdAt", "updatedAt", "taskId", "taskVersionId", "parentThreadId", "parentAgentId", "ownerId", "accessScope") FROM stdin;
\.


--
-- Data for Name: agent_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_execution" ("id", "threadId", "status", "startedAt", "stoppedAt", "duration", "userMessage", "model", "promptTokens", "completionTokens", "totalTokens", "cost", "timeline", "error", "hitlStatus", "source", "createdAt", "updatedAt", "storedAt", "attachments", "failureSummary", "author", "acceptsSteering") FROM stdin;
\.


--
-- Data for Name: agents_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_messages" ("id", "threadId", "resourceId", "role", "type", "content", "createdAt", "updatedAt", "author", "origin", "modelContent", "modelContextAt") FROM stdin;
\.


--
-- Data for Name: agent_execution_message_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_execution_message_links" ("executionId", "messageId", "direction", "position", "createdAt") FROM stdin;
\.


--
-- Data for Name: agent_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_files" ("id", "agentId", "binaryDataId", "fileName", "mimeType", "fileSizeBytes", "createdAt", "updatedAt", "storedAt", "storageKey") FROM stdin;
\.


--
-- Data for Name: agent_message_queue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_message_queue" ("id", "threadId", "payload", "executionId", "createdAt", "updatedAt", "messageId", "steeringExecutionId", "steeringOrder", "position") FROM stdin;
\.


--
-- Data for Name: agent_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_plan" ("id", "threadId", "revision", "formatVersion", "data", "closedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_plan_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_plan_history" ("planId", "revision", "formatVersion", "data", "closedAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: agent_task_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_definition" ("id", "agentId", "name", "objective", "cronExpression", "createdAt", "updatedAt", "timezone") FROM stdin;
\.


--
-- Data for Name: agent_task_run_lock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_run_lock" ("agentId", "taskId", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_snapshot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_snapshot" ("versionId", "taskId", "enabled", "name", "objective", "cronExpression", "createdAt", "updatedAt", "timezone") FROM stdin;
\.


--
-- Data for Name: agent_thread_grants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_thread_grants" ("threadId", "grantKey", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description", "activeVersionId", "nodeGroups", "sourceWorkflowId") FROM stdin;
My workflow 2	f	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appwCekjl5LFtOTyQ","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ"},"table":{"__rl":true,"value":"tblUZQGiY3QMfIcKj","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ/tblUZQGiY3QMfIcKj"},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Critical","value":"Critical"},{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Project Type","displayName":"Project Type","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Model Training","value":"Model Training"},{"name":"LLM Application","value":"LLM Application"},{"name":"Data Pipeline","value":"Data Pipeline"},{"name":"Research","value":"Research"},{"name":"Deployment / MLOps","value":"Deployment / MLOps"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Project Lead","displayName":"Project Lead","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Resource Allocations","displayName":"Resource Allocations","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Overall Progress","displayName":"Overall Progress","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Next Milestone Due","displayName":"Next Milestone Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Weekly Hours Allocated","displayName":"Total Weekly Hours Allocated","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	2026-10-26 14:41:21.174+00	2026-10-26 15:15:00.699+00	{"executionOrder":"v1","binaryMode":"separate"}	\N	{}	68f46f8e-6b00-4500-b350-68b3ae00514e	0	EfBcINeKMWXU3GeQ	{"templateCredsSetupCompleted":true}	\N	f	11	\N	\N	[]	\N
\.


--
-- Data for Name: agent_workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_workflow_dependency" ("agentId", "workflowId", "createdAt") FROM stdin;
\.


--
-- Data for Name: agents_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_resources" ("id", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entries" ("id", "agentId", "resourceId", "content", "contentHash", "status", "supersededBy", "embeddingModel", "embedding", "metadata", "lastSeenAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_candidates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_candidates" ("id", "agentId", "resourceId", "threadId", "sourceMessageId", "runId", "toolCallId", "content", "evidenceText", "kind", "status", "attemptCount", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_locks" ("agentId", "resourceId", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observations" ("id", "agentId", "observationScopeId", "marker", "text", "parentId", "tokenCount", "status", "supersededBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_sources" ("id", "agentId", "memoryEntryId", "observationId", "threadId", "evidenceHash", "evidenceText", "createdAt", "updatedAt", "candidateId") FROM stdin;
\.


--
-- Data for Name: agents_observation_cursors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observation_cursors" ("agentId", "observationScopeId", "lastObservedMessageId", "lastObservedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observation_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observation_locks" ("agentId", "observationScopeId", "taskKind", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt", "projectId") FROM stdin;
\.


--
-- Data for Name: ai_builder_temporary_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ai_builder_temporary_workflow" ("workflowId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: ai_preference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ai_preference" ("id", "content", "userId", "projectId", "createdById", "createdAt", "updatedAt", "source") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."binary_data" ("fileId", "sourceType", "sourceId", "data", "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "icon", "files", "suggestedPrompts") FROM stdin;
\.


--
-- Data for Name: chat_hub_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_tools" ("id", "name", "type", "typeVersion", "ownerId", "definition", "enabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agent_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agent_tools" ("agentId", "toolId") FROM stdin;
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "type") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt", "storedAt", "tracingContext", "deduplicationKey", "jsonSizeBytes", "workflowVersionId", "binaryDataSizeBytes", "usedPrivateCredentials") FROM stdin;
8	f	manual	\N	\N	2026-10-26 14:49:28.277+00	2026-10-26 14:49:33.491+00	\N	error	EfBcINeKMWXU3GeQ	\N	2026-10-26 14:49:26.954+00	db	\N	\N	4111	3737227c-af00-442e-b4a9-146ecd3de24b	0	f
9	f	manual	\N	\N	2026-10-26 15:02:16.589+00	2026-10-26 15:02:21.892+00	\N	error	EfBcINeKMWXU3GeQ	\N	2026-10-26 15:02:14.26+00	db	\N	\N	4172	33d0ad3d-6460-4b1c-892c-88317a6c45d4	0	f
10	t	manual	\N	\N	2026-10-26 15:54:59.343+00	2026-10-26 15:55:06.391+00	\N	success	EfBcINeKMWXU3GeQ	\N	2026-10-26 15:54:58.073+00	db	\N	\N	6957	68f46f8e-6b00-4500-b350-68b3ae00514e	0	f
7	t	manual	\N	\N	2026-10-26 14:42:22.251+00	2026-10-26 14:42:30.964+00	\N	success	EfBcINeKMWXU3GeQ	\N	2026-10-26 14:42:16.073+00	db	\N	\N	2391	f79878d7-9cfa-4cbb-9b09-fa1e5780c069	0	f
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status", "attachments") FROM stdin;
\.


--
-- Data for Name: chat_hub_session_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_session_tools" ("sessionId", "toolId") FROM stdin;
\.


--
-- Data for Name: credential_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credential_dependency" ("id", "credentialId", "dependencyType", "dependencyId", "createdAt") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: deployment_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."deployment_key" ("id", "type", "value", "algorithm", "status", "createdAt", "updatedAt") FROM stdin;
VO316Gpf8GRFcpcm	instance.id	32b801fd764b2a2659eb1d3d2231e580c55453316ba716bc055fbcee8124d782	\N	active	2026-10-26 13:16:17.888+00	2026-10-26 13:16:17.888+00
A5MUX8ouWwrBa7Z1	signing.hmac	AcbPMy9vkNWj2RvWLyfiF3DNpq+ek7WoO5CaavWUBlzTUE/US2itJ5iViy/GsVC0WTkBCCftTYCpoJaLnAH3BXARl7EHSS0HP9600sFwlNa2Wu93HZGm46VNQdFUcklzYjlL4BUMMCfS+m/vJys5IKE=	aes-256-gcm	active	2026-10-26 13:16:19.419+00	2026-10-26 13:16:19.419+00
isp0AFNT7x033bAE	data_encryption	AdQpvzcAs70mtFAgIvhdEmHtWMTrWFyHfUUqVgl3lGb++LVBw1BjpEfF6MWvHAUD4Hp/RAJ4n2Hqi6C5vG9cAKjuR84CreTDn4Xkcjuvb8gS7yavGyTEupqOx6hk1a9d51HNg0vx6taqLtKqUvcDIGs=	aes-256-cbc	inactive	2026-10-26 13:16:21.46+00	2026-10-26 13:16:21.46+00
kbj8HZsnMYmvWxMD	data_encryption	AWwlr02mSey189ttBqy/iAPPXv/HRpp0SbiYjBg0c3C4ncrgXLuezqeIvusFYsRl41Rn50LTXSjU8gFmhYYnDQGJyMfmc4l5+DSWLSlva6YoSylyPJIiVf2H2KKW7VG8UofxQwonp9aPvWpOtMFiTiE=	aes-256-gcm	active	2026-10-26 13:16:23.158+00	2026-10-26 13:16:23.158+00
0J8wgRHvKHAZfe0L	signing.jwt	AS4nbf9tFUVQ8IvOyYDqg6d+qEemQKQetRMOAkEYxHE5uY5AaexMQn63H4ky+Z7lI8Bz3dCLAEBpGr/9hNdfxUT3nYLqPG1M4aiJZknr+T8J1/ZAGQTHcf/hUXLrsg5qLYJPEcM8AToMAy5PGRrr3A8=	aes-256-gcm	active	2026-10-26 13:16:28.89+00	2026-10-26 13:16:28.89+00
rZMm5LpHf9ZaE9D8	signing.binary_data	AV9qP+0/lGV0ZHbkK0nBTPB5kf0LGCzctmrcdw8RHt4miETqlNGc6/4fLaWJ/NKX8mSlnftxmFikZfbOhnrsqNmaLocYufgeQt5p5Hd289CVi50BlfMJuCbBqFvX	aes-256-gcm	active	2026-10-26 13:16:30.59+00	2026-10-26 13:16:30.59+00
pmQjeb6VQKr3ZYqI	oauth-server.signing-key	ARDP9kIjeFf97MasMnx0DFTvLHx/Y3QQ/Dum0lKbDFDQ3YMsuUvufUOqTWOsWIIHB8/4eQDdcnNwB71V+kci/DXQ/kXf31Y0SdnJGgA//QlXtGmZ4YobLtWtylgtfjnHwEzrcfNvX41fhZBPeXuOKiPOfVM5MdqJ3zJFOJV+BR2h9UYB2ZE7FnDwezq4Ef9n0BO/sB8Ng8py0/m2iC+VrjkPW9Me4YLwyT1yEDjgW/rAiesuI/6wKK1cVNKYZJCvUZNWdiwLXFzxPlm0iYoAge+ZwzT4IzBgps/ZkCFre6cM5q59RWjBs16JvWJEfwNXRTDU2JGOhFLnm23iBubA1uTw68ej2NgSqZtpW+MdfjMdAEpw	ES256	active	2026-10-26 13:17:44.215+00	2026-10-26 13:17:44.215+00
U68l8HrylOaNf9fl	jwe.private-key	AS+rXjAvsNiH/MAiFNoPMkNNHXEKerJHHVKGq0sJilNojZXO/ayIMS0dk5LALqy/gHTg2b9KwDa/iOVXRTdnF0bizZWz+88Dcf+MhIMf0I9AjHftd5e0dZYceyd8PSdP9IpQiq4x30nAw9fYjpIIVSMRIYUjeG7tkpkm2nAWuZ7VDLcJ75rglpRVs4D4FKyPNoQ1bnlzQHCxP2f10SdkVnsTgfzPANpjdOyNLo9zxIS1SqRkyqTc5IeLU+NfJf0xhd+RimdW0zh9y70hgS1KUAeA9Z5oYqh/pMCdqhqkSwv+lOue1iJGew348uJtaun5iZQlcPqNZVpbBncK5PcnjX8trVID8hw0LHFMj1QmmDUOjhGd7K4v4Pnq/9UiqpcilDkvyiwsv3jZIocNTzfJWMMLgdc+K97U0/6avSbMpd9tMCFXAasLMCfxn2oeZsxuWNAblyNYpCfb6zNhhfk0fa/I9M5i4haWJ8f+N0ica9d9a5PO0wvRZsMUZ6zUWSRGfGACZC1zC7WxU2IeZqqANnEAL/c9nqDTkVufcgXZUc62vLcDY/c3poSVVUOvCxIKzTWu9waowlfzu/H3grT4yGrgOu//6CgwD20ltt+QitTO/X/E5PnJYP6fE8kb/Ly+Bkkeymnf0puf7elc6R4hBZqiNesJploCyYRB4OR1sUWcWqjANIkXAaNwgcaS2WO5vuqxtNOvGPr1mFyy1qdIt2SGERIMKGVRDb8RV54GBHb9/ijV0Dq/Jslo/hRRzZHbywePJ0exoD6fAZqWeBZg/QhtaZQ9T5XsHyHP70oDcHM24eKvzWcd6JFLkniGCR7qnm29JgkNrnRT1wFc47UM/I53ohaI8vEHjitZgQlqdGyYpmkb9NcWYS0eIjpNusOaa5fVyBN/gh8lhgnj3+1QNU+MTaTu/t5c60ax7GtANjAOfGe88YZ8n9eQTnpLoPG7hOwnOm1YD3Hqlv+Dw97Vdknvh6TDOHcmd7hPDY21k0QzURh9opNkT3AzELTx9YAFTjHAycVJd5/4GGNgTfb9ZomKvcMu+Z0ptVrp/uuy6hnabzWyECu1tXsuZT8lPPOXibgaf4fK4KILhFeqpcX64l7MtfhY//YDbASwzbfDB2NnohdoXm3LeUApTNDApZpqW2jpWPFO8ZwLKenF461qyV3ki3F6jbybi4pnkQHEOJXuAqdu2V0xMGDByqrFJF56VB+miRm0tMy4Nm914J8nuEO3IppH1gMkXpOQOje1kNfujBkKQxDOJbNnjyMjmUuPIdrADgIwgqmk9NDkMqqPV3lPoEfdHal49NmTAIO0B1++jAVQSMyTgqGd2hAjWA9SA3QlfWPzP3PqmOtQzSGB1Pj63f2M0GJMPORurE+gpO6nviPT1NEG/H+XTBLjI3by1FkYNRmiU3lHq8ddjV4fjVCqtYxfkzFaK2b3O3RzPHInKZXzTxtyWx+uoWDIm93Jmmx0Tq/39olk6xE6i7y9R4/nOsH2oEXzZouqosoC2LjGHTJbvvFpmUnP5saPDwzY950zEhO59+zCCQPHWkjAia8QzHs6Kz0rVWM2hqpAXxAZNPcXwiOIsGw+sUYeptBmqCs46sEw0PfzfmRhTfphCgdLFANRyNSTlBxd7ybXAlbgApy1rVniAnFPW5W3cQfZCTqFPmQL83e/b+zitTXHUhiPKrLDIJKVVpro6I3kSQUE/6FhNoPYrIU5eQAYwnLtYcEmBI7lbAbQC4OewBY4oWm81FzT0GImuB5941YroMBrBsFRsdod6H2zl7R/GpEQWhlJkTTVjApr5uuBrZbUZ3/cUF5z8ONmrwLtFbdyo0WcfcLlHmUfCfLM7gooblrwbRMAfes6sbWfI8S4P1sB7DcMovevS8OKudLotR1lVZo6OUYGCeiKhbLVgRbxDkP4DmPXdzObZKvLygefOwoHuXPOGTfHILUa0q5EFuKm6AUN9vYx0BPKhA/7LAygn/ngpjSo1mDHjoV1kUYT+0jpaCSS0HqXOvnaz78uH8Pmir9mLJoMmxenw2xFFPUNj8/xYLLhcTeTXcYJGO6iCbTOrSrWJ6n6cPrAQYhvkeWxiqBOChzlTyKdDl3AcUS5zBsiWrtjH/lPmV18zTflN2fBw7YJTKx8t0wOLMOT8J9VLb/BPCIYaZ+fQTMxv2pqWhf+crcx0VB9Dtf7swbHMrS5ikaKwr8yOyUrbIxOpOTPeuai9/6MsJcu5DNUS20We5MlXsWg/BWLCyT/mabgYlJkuY0cQunE0gcp3H1aeAYXwBlJ9wLTmTHLzlPy	RSA-OAEP-256	active	2026-10-26 13:17:52.28+00	2026-10-26 13:17:52.28+00
\.


--
-- Data for Name: dynamic_credential_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_entry" ("credential_id", "subject_id", "resolver_id", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_user_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_user_entry" ("credentialId", "userId", "resolverId", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: evaluation_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."evaluation_config" ("id", "workflowId", "name", "status", "invalidReason", "datasetSource", "datasetRef", "startNodeName", "endNodeName", "metrics", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: evaluation_collection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."evaluation_collection" ("id", "name", "description", "workflowId", "evaluationConfigId", "createdById", "insightsCache", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data", "workflowVersionId") FROM stdin;
8	{"id":"EfBcINeKMWXU3GeQ","name":"My workflow 2","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]},"misfirePolicy":"skip","misfireGraceSeconds":0,"skipDurableScheduler":false},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"upsert","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create or update a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create or update a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"e9b8508b44fcc3f6def5f2c39bc431197ed20c62acb378181a84384ff0e74311",{"nodeName":"16","mode":"17"},["18","16"],{"level":"19","shouldReport":true,"tags":"20","timestamp":1793026173491,"context":"21","functionality":"22","name":"23","message":"24","stack":"25"},{},{},{},["26"],{},{},{},{"version":1,"establishedAt":1793026171320,"source":"27","triggerNode":"28","redaction":"29","credentials":"30"},"Create or update a record","inclusive","Schedule Trigger","warning",{},{},"regular","WorkflowHasIssuesError","The 'Create or update a record' node has issues:\\n- Parameter \\"Base\\" is required.\\n- Parameter \\"Table\\" is required.","WorkflowHasIssuesError: The 'Create or update a record' node has issues:\\n- Parameter \\"Base\\" is required.\\n- Parameter \\"Table\\" is required.\\n    at WorkflowExecute.checkForWorkflowIssues (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1582:10)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2287:10\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2864:11",{"node":"31","data":"32","source":null},"manual",{"name":"18","type":"33"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1+SUc87zzYh+CZWTOY6SedeKR31LVixjAiGxoceY63SkwKDX+31vTpWLEsyc/oRew0GDYWNRO8C1YAnL1DpAhdVNYJk4Um8Y67U1SIchvfaIpRzmzS0dvTj3XbqK3tWuBKdjLY8ekrffFTOCksFCh+KWEEQM7DMSvLZbHKhy+zc+tZWBVdD55aZ6tynGQtmRMBpyu1Xtbu+Na/B58xl1BvTgobEvPYaDmuXnmOWQEuwBQFCrDDWKLqDHIm8V7TXiEyVJm0TdvhGSejOp0ZJhrsqgXD/PLdaCTowO00+gPO/syivKX4LasAVrjROdi5EpB6LaFa7LmF1eWMPP4UOhIZvc7BdmnNlgbEbdxvnGT7lF8QMdCRrRmvp0WnHRnmqdN9DkqsOgGWTXJU99uF5HBxuee/XOXFO8fvx4bavc0iinF1QFHHzqqPJgr2z/SkQXIZYMEBFHjRP8e7Kg1jlIPADQ8CELQYzF2uVpj0SzOfqVBPe+yMWDQRbGjeoLrEpSiyHYxP4pkcZ8tKsxEDDnGZc7KFn/InfhL77M7AbM7u352l/7fnTANT1",{"parameters":"34","type":"33","typeVersion":1.4,"position":"35","id":"36","name":"18"},{"main":"37"},"n8n-nodes-base.scheduleTrigger",{"notice":"38","rule":"39","misfirePolicy":"40","misfireGraceSeconds":0,"skipDurableScheduler":false},[0,0],"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7",["41"],"",{"interval":"42"},"skip",["43"],["44"],{"json":"45"},{"field":"46","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0},{},"days"]	3737227c-af00-442e-b4a9-146ecd3de24b
9	{"id":"EfBcINeKMWXU3GeQ","name":"My workflow 2","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]},"misfirePolicy":"skip","misfireGraceSeconds":0,"skipDurableScheduler":false},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"upsert","base":{"__rl":true,"value":"appwCekjl5LFtOTyQ","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ"},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"autoMapInputData","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create or update a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create or update a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"62e15e06e780e3b4e199bea122532e577563eab4f4ab063cfe4aed62f0879c47",{"nodeName":"16","mode":"17"},["18","16"],{"level":"19","shouldReport":true,"tags":"20","timestamp":1793026941892,"context":"21","functionality":"22","name":"23","message":"24","stack":"25"},{},{},{},["26"],{},{},{},{"version":1,"establishedAt":1793026940136,"source":"27","triggerNode":"28","redaction":"29","credentials":"30"},"Create or update a record","inclusive","Schedule Trigger","warning",{},{},"regular","WorkflowHasIssuesError","The 'Create or update a record' node has issues:\\n- Parameter \\"Table\\" is required.","WorkflowHasIssuesError: The 'Create or update a record' node has issues:\\n- Parameter \\"Table\\" is required.\\n    at WorkflowExecute.checkForWorkflowIssues (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1582:10)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2287:10\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2864:11",{"node":"31","data":"32","source":null},"manual",{"name":"18","type":"33"},{"version":2,"production":false,"manual":false},"U2FsdGVkX19u0/kLhSx3QuwGuanOsmF0h7xfPiAB6Ft/TMNl0szFV0QnqHg6oiUGYsLD+J74TOEJVdIk3SkyksfpRwExUSr4OI9Y6CqxElpfPWJY1leIITKhWclb7QKF38uSNW5i/TdkgHUbHVE/6/DZ1ANnGh9IPcqXGD6ibCtayAHOrNgFWHRra8mQCX+4s/z9V4wZ1znnFbMIlsRoAH1Wcc3ry0R4eXiyQRwPPv+KtAanUb1QfGm4WfPYf7dojbuwB4eiJFb1FFBO7TEOqPK/E/lFZEXA3VTkANbdTEmiNlYC8k+N0R/6ny9N7TpA5JPPh5jUDYqQNm794ncdOeCB9bhXXbz4rcbHbVG+ha8bEKZLJkZ00Xt4Gf5ksUiDXUp5wqQRmI1J0rvA1N7YN1qnccfYukZZ7iigiCqhzHJufPCvKREQLtf4KtBQoNAyR9Vpj3p8VNuhRRvewYmdLOUDUipi8gY1HWgD11covZHFP8/bwKLhXSmCAaNVpLAgXoSUuYB6noOKqHISvrsOEsHouCdsi34BlKa9h0P8YsqBEyOMahPd1Cg6DWs5lrTV",{"parameters":"34","type":"33","typeVersion":1.4,"position":"35","id":"36","name":"18"},{"main":"37"},"n8n-nodes-base.scheduleTrigger",{"notice":"38","rule":"39","misfirePolicy":"40","misfireGraceSeconds":0,"skipDurableScheduler":false},[0,0],"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7",["41"],"",{"interval":"42"},"skip",["43"],["44"],{"json":"45"},{"field":"46","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0},{},"days"]	33d0ad3d-6460-4b1c-892c-88317a6c45d4
7	{"id":"EfBcINeKMWXU3GeQ","name":"My workflow 2","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]},"misfirePolicy":"skip","misfireGraceSeconds":0,"skipDurableScheduler":false},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"}],"connections":{},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"92418c76a141b5400c7d7bbbb948540765df6373d314b03ca6dfde2b5940c8c6",{"nodeName":"9","mode":"16"},["9"],{"Schedule Trigger":"17"},{},"Schedule Trigger",{},[],{},{},{},{"version":1,"establishedAt":1793025748878,"source":"18","triggerNode":"19","redaction":"20","credentials":"21"},"inclusive",["22"],"manual",{"name":"9","type":"23"},{"version":2,"production":false,"manual":false},"U2FsdGVkX19Nm+Ut+6NGJZ6PA/glEFIqP5yeE6cl/RoUV4Gv12Ft5+fpVrRxg4hiE7eGmCyrusssge6OSUpCAIbOm3U44nNRuWws63ydJeDpr5tholIzVP2Yc3TlfUqYCsBU2h6nQQpC26EJqgDgbzSTlub1LKiQlGzqTZYxLmj5zhLZlGb2wgUw7W7rBUJMKU1keb5838NR4yjtZltoWNx9zopPm1RLLLPy74IT4W4aekaAynCnD2q02v0m4MUrKRSvYjSJtw9woAqH5NvI2YnlEV3QGybpC8uilaXT7WRq6/TVc8XZKwuoa9duDr3BlhHf468pZhiCZsB4HTJ8Gn9rnrbQT4Rhc5v6iFPYxtpZN1rT6kzKMnMJYMKz9cwJ6M6HW+amAZ+GX5mWy87P0zheefOqD7836TfReDVSm4uguLa7OkbivkcTYNnFd9wcnx9QNMTGnzPFOgyH68qguh438EPk18rufgwKy5ZJqp+Glg+zOezf/CMM28HM2dyVI1kbmKFOvowu+F710w9GGXu6MhFFb1gt6dbJDZkViK/VmD0f1wXB0XUYm6baokb0",{"startTime":1793025750957,"executionIndex":0,"source":"24","hints":"25","executionTime":5,"executionStatus":"26","data":"27"},"n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"28"},["29"],["30"],{"json":"31","pairedItem":"32"},{"timestamp":"33","Readable date":"34","Readable time":"35","Day of week":"36","Year":"37","Month":"38","Day of month":"39","Hour":"40","Minute":"41","Second":"42","Timezone":"43"},{"item":0},"2026-10-26T10:42:30.960-04:00","October 26th 2026, 10:42:30 am","10:42:30 am","Monday","2026","October","26","10","42","30","America/New_York (UTC-04:00)"]	f79878d7-9cfa-4cbb-9b09-fa1e5780c069
10	{"id":"EfBcINeKMWXU3GeQ","name":"My workflow 2","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]},"misfirePolicy":"skip","misfireGraceSeconds":0,"skipDurableScheduler":false},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"appwCekjl5LFtOTyQ","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ"},"table":{"__rl":true,"value":"tblUZQGiY3QMfIcKj","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ/tblUZQGiY3QMfIcKj"},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Critical","value":"Critical"},{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Project Type","displayName":"Project Type","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Model Training","value":"Model Training"},{"name":"LLM Application","value":"LLM Application"},{"name":"Data Pipeline","value":"Data Pipeline"},{"name":"Research","value":"Research"},{"name":"Deployment / MLOps","value":"Deployment / MLOps"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Project Lead","displayName":"Project Lead","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Resource Allocations","displayName":"Resource Allocations","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Overall Progress","displayName":"Overall Progress","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Next Milestone Due","displayName":"Next Milestone Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Weekly Hours Allocated","displayName":"Total Weekly Hours Allocated","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"b4b868fb5faf702a676385d4d0b2e7fcc7375f5fb53959c0bfed046a2c006d7a",{"nodeName":"9","mode":"16"},["17","9"],{"Schedule Trigger":"18","Create a record":"19"},{},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1793030101630,"source":"20","triggerNode":"21","redaction":"22","credentials":"23"},"inclusive","Schedule Trigger",["24"],["25"],"manual",{"name":"17","type":"26"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1+0QS/SwvFsQrpuFwwmG8Ck+IY5rhKufV6cRHap7Iu2wnj2KSnflZq1IpQAXbXLhg79oVoQpnrwy2tnXoiHKWVRsYZLKZSiImJNZHqdN6wwViK69FGwBK5daTVHFwVpcPt/PwzK4VJoBCpC/TF6ie2gdh/nNVlgw44MLWTo8QFlxVF2K5CXdpWKjzFliXQgE2XTlaS2qw4bGrI5Bx2NH0H5fxYOHP0zGupOOxMMMiikwAvtvyjKTWzDdxUNluVHgM5+RLyoIgPjWe1sayk1v2c4CzJwD7I5VQVMQ9710Sk21TNMwXqNdsevUICy/c0u8AfbQfsnDy0oSXaeV1K9cgQuCuAECDFqZWLeu8Fr5F4xPD2+U5sPa23N0z5ULzUPkobb+0aLqc0707FaSpTOc7uAkOxa0o2nqFUtAMmPqp+HtEWhgAVdQjG9HY3TcWg3CJPJLduvtn0WYxQ4Ka04qv/f5b5gRgyj80aFyajB4q01pQw8+3wQKmQrrOrGoWSfSxuwQDkWk69n1VIHPieEUgbrse4MVpxgV0bmvaCnqxp8+02qgss6dJ86",{"startTime":1793030103394,"executionIndex":0,"source":"27","hints":"28","executionTime":6,"executionStatus":"29","data":"30"},{"startTime":1793030103491,"executionIndex":1,"source":"31","hints":"32","executionTime":2899,"executionStatus":"29","data":"33"},"n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"34"},["35"],[],{"main":"36"},["37"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],{"json":"41","pairedItem":"42"},{"json":"43","pairedItem":"44"},{"timestamp":"45","Readable date":"46","Readable time":"47","Day of week":"48","Year":"49","Month":"50","Day of month":"51","Hour":"52","Minute":"53","Second":"54","Timezone":"55"},{"item":0},{"id":"56","createdTime":"57","fields":"58"},{"item":0},"2026-10-26T11:55:03.398-04:00","October 26th 2026, 11:55:03 am","11:55:03 am","Monday","2026","October","26","11","55","03","America/New_York (UTC-04:00)","recBmYzwqFQcA2yKb","2026-10-26T15:55:05.000Z",{"Total Weekly Hours Allocated":0,"Overall Progress":"59"},{"specialValue":"60"},"NaN"]	68f46f8e-6b00-4500-b350-68b3ae00514e
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: idempotency_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."idempotency_key" ("id", "userId", "idempotencyKey", "fingerprint", "status", "responseStatus", "responseBody", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: instance_ai_checkpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_checkpoints" ("key", "runId", "threadId", "resourceId", "state", "createdAt", "updatedAt", "expiredAt", "hostRunId") FROM stdin;
\.


--
-- Data for Name: instance_ai_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_events" ("threadId", "seq", "runId", "type", "payload", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_iteration_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_iteration_logs" ("id", "threadId", "taskKey", "entry", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: mcp_registry_server; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."mcp_registry_server" ("slug", "status", "version", "registryUpdatedAt", "data", "createdAt", "updatedAt") FROM stdin;
airtable	active	0.1.0	2026-07-31 08:55:31.929	{"name":"com.airtable/mcp","title":"Airtable","description":"Official Airtable MCP server — database and operations layer for agents.","tagline":"Connect to the Airtable MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_RW_Qzz_VRI_a8b8b106af.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/iddyj0wl13_cb19e5e7fa.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.airtable.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
alchemy	active	0.5.2	2026-07-27 06:26:35.615	{"name":"com.alchemy/mcp","title":"Alchemy","description":"Blockchain data across 100+ chains: token prices, NFTs, transfers, simulation, traces, Solana DAS","tagline":"Connect to the Alchemy MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_824c201a3f.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.alchemy.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
altmetric	active	1.1.0	2026-07-27 06:33:32.848	{"name":"com.altmetric.mcp/altmetric-mcp","title":"Altmetric","description":"MCP server for Altmetric APIs - track research attention across news, policy, social media, and more","tagline":"Connect to the Altmetric MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_50fcccdb0a.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http","url":"https://mcp.altmetric.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
amplitude	active	1.0.0	2026-06-11 12:28:25.27	{"name":"com.amplitude/mcp-server","title":"Amplitude","description":"Search, access, and get insights on your Amplitude data","tagline":"Connect to the Amplitude MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_G_Fjvl8_Pa_bd331a64fc.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_G_Fjvl8_Pa_a15896d97c.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.amplitude.com/mcp"},{"type":"streamable-http","url":"https://mcp.eu.amplitude.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
apify	active	0.10.6	2026-10-14 12:22:04.998	{"name":"com.apify/apify-mcp-server","title":"Apify","description":"Extract data from any website with thousands of scrapers, crawlers, and automations on Apify Store ⚡","tagline":"Connect to the Apify MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apify_light_2ec6ae0d0c.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http","url":"https://mcp.apify.com/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
atlassian	active	1.1.1	2026-06-11 12:28:42.32	{"name":"com.atlassian/atlassian-mcp-server","title":"Atlassian","description":"Atlassian Rovo MCP Server","tagline":"Connect to the Atlassian MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KV_Ejn_Mrk_716d407499.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KV_Ejn_Mrk_1f404ecbfd.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.atlassian.com/v1/mcp"},{"type":"sse","url":"https://mcp.atlassian.com/v1/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
avo	active	1.0.0	2026-07-27 06:26:59.555	{"name":"io.github.avohq/avo","title":"Avo","description":"Define, ship & query your analytics tracking from one source of truth, trusted by humans and agents.","tagline":"Connect to the Avo MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idr574_A_Kk_X_6db6ee0e4c.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.avo.app/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
axiom	active	1.0.0	2026-06-11 12:28:11.99	{"name":"co.axiom/mcp","title":"Axiom","description":"List datasets, schemas, run APL queries, and use prompts for exploration, anomalies, and monitoring.","tagline":"Connect to the Axiom MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Xjr_Dncs4_d8a390ab33.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"sse","url":"https://mcp.axiom.co/sse"},{"type":"streamable-http","url":"https://mcp.axiom.co/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
bitrix-24	active	1.0.0	2026-07-27 06:27:23.396	{"name":"io.github.bitrix24/bitrix24","title":"Bitrix24","description":"MCP server enabling AI agents to manage Bitrix24 features via standardized protocol","tagline":"Connect to the Bitrix24 MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Fs_Tz_WJ_4_X_2dd0bbcd84.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.bitrix24.com/mcp/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
brandfetch	active	1.0.1	2026-07-31 08:55:50.736	{"name":"io.brandfetch/brandfetch","title":"Brandfetch","description":"Search brands and retrieve design assets, company data, other brand context from Brandfetch's API","tagline":"Connect to the Brandfetch MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_X_Gq6_S_Iu2_39f64c1e3e.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idd_CQ_52_AR_5_a0d0556d83.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.brandfetch.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
c-data-connect-ai	active	1.0.0	2026-07-27 06:27:35.15	{"name":"com.cdata/cdata-connect-ai","title":"CData Connect AI","description":"Cloud-hosted MCP server for secure AI access to enterprise data sources via CData Connect AI.","tagline":"Connect to the CData Connect AI MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_XN_Pnsge_I_18a9c34852.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.cloud.cdata.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
cello	active	1.0.1	2026-07-27 06:33:55.459	{"name":"so.cello/mcp","title":"Cello","description":"Cello MCP server to launch and manage your Referral and Partner program","tagline":"Connect to the Cello MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_48x48_f037a7c241.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.cello.so/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
click-up	active	1.0.0	2026-08-25 11:14:51.696	{"name":"custom/ClickUp","title":"ClickUp","description":"Manage your ClickUp workspace","tagline":"Connect to the ClickUp MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Zbl8x_PRY_9b8addcc7e.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_M_Cb9c0ts_1f691742fc.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.clickup.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
close	active	1.0.1	2026-06-11 12:28:50.223	{"name":"com.close/close-mcp","title":"Close","description":"Close CRM to manage your sales pipeline. Learn more at https://close.com or https://mcp.close.com","tagline":"Connect to the Close MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idpghi9sa_C_14d2cba8bf.png","mimeType":"image/png","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.close.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
composio	active	1.0.5	2026-07-27 06:34:06.747	{"name":"io.github.ComposioHQ/composio","title":"Composio","description":"Connect AI agents to 1000+ apps with managed authentication and tool-calling.","tagline":"Connect to the Composio MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/Logomark_Black_fe5c6c91c6.svg","mimeType":"image/svg+xml","theme":"light"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/Logomark_White_b349b06097.svg","mimeType":"image/svg+xml","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://connect.composio.dev/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
crypto-quant	active	0.1.1	2026-07-27 06:27:46.962	{"name":"com.cryptoquant/mcp-server","title":"CryptoQuant","description":"Query cryptocurrency on-chain data, OHLCV prices, market data, and Research & QuickTake insights.","tagline":"Connect to the CryptoQuant MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_V_Lc_E486p_f1a6e16cf8.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.cryptoquant.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
cypress-cloud	active	1.0.0	2026-07-27 06:27:58.817	{"name":"io.cypress.mcp/cypress-cloud","title":"Cypress Cloud","description":"Direct access to Cypress tests results and accessibility reports in your AI workflow.","tagline":"Connect to the Cypress Cloud MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idv3zwm_Si_Y_97b8f8b3d4.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.cypress.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
databricks-genie	active	1.0.1	2026-10-09 10:24:39.165	{"name":"com.databricks/genie-mcp","title":"Databricks Genie One","description":"Databricks Genie MCP server, resolved per-customer from the workspace host.","tagline":"Connect to Databricks Genie One - powered by Genie","attribution":"Powered by Databricks Genie","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/databricks_90fcb569a3.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http-templated","url":"={{$self[\\"host\\"].replace(/\\\\/$/, \\"\\")}}/api/2.0/mcp/genie","headers":{"User-Agent":"n8n_DatabricksNode"}}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"extendsCredential","extendsCredential":{"extends":"databricksOAuth2Api","authUrl":null,"accessTokenUrl":null,"scope":"genie offline_access","authQueryParameters":null,"grantType":"authorizationCode","authentication":null,"useDynamicClientRegistration":null,"serverUrl":null}}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
egnyte-remote	active	1.0.0	2026-07-27 06:26:12.344	{"name":"com.egnyte/mcp-server","title":"Egnyte Remote","description":"Egnyte's remote MCP server for secure AI access, search, upload and file management in your account.","tagline":"Connect to the Egnyte Remote MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_y3xa_T_9_348146b508.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp-server.egnyte.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
eleven-labs	active	1.0.0	2026-09-18 10:09:54.927	{"name":"custom/ElevenLabs","title":"ElevenLabs","description":"MCP server for accessing ElevenLabs voice generation and audio capabilities.","tagline":"Connect to the ElevenLabs MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/elevenlabs_symbol_a6117797c3.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://api.elevenlabs.io/v1/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","requiredCapabilities":["n8n-cloud"],"tags":[],"authType":"extendsCredential","extendsCredential":{"extends":"oAuth2Api","authUrl":"https://elevenlabs.io/app/oauth/authorize","accessTokenUrl":"https://api.us.elevenlabs.io/v1/oauth/token","scope":"convai_read convai_write text_to_speech speech_history_read flows image_video_generation voice_generation","authQueryParameters":" ","grantType":"pkce","authentication":"header","useDynamicClientRegistration":false,"serverUrl":null}}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
exa	active	3.1.3	2026-07-27 06:28:10.635	{"name":"ai.exa/exa","title":"Exa","description":"Fast, intelligent web search and web crawling.\\n\\nNew mcp tool: Exa-code is a context tool for coding ","tagline":"Connect to the Exa MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idek_S6b5_Vc_846a9be831.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.exa.ai/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
fibery	active	1.0.0	2026-07-27 06:28:22.675	{"name":"io.github.Fibery-inc/mcp","title":"Fibery","description":"Connect AI Assistant to Fibery — operating system for orgs run by nerds.","tagline":"Connect to the Fibery MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idc_Az9_Jna3_3655f33477.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.fibery.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
fingerprint	active	0.1.35	2026-07-27 06:33:21.382	{"name":"io.github.fingerprintjs/fingerprint-mcp-server","title":"Fingerprint","description":"Device intelligence for AI agents: Fingerprint events, smart signals, and API key management.","tagline":"Connect to the Fingerprint MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id7_Fxo_YI_61_3ef3687cce.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.fpjs.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
flux	active	1.0.0	2026-07-27 06:27:11.348	{"name":"io.github.black-forest-labs/flux-mcp","title":"FLUX","description":"Official FLUX MCP server. Generate, edit, vary, and browse images from Black Forest Labs.","tagline":"Connect to the FLUX MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Lu4p_X9l_F_2d4acf82df.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.bfl.ai"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
git-hub	active	1.0.0	2026-09-14 11:54:17.192	{"name":"custom/GitHub","title":"GitHub","description":"MCP server for accessing GitHub Copilot and GitHub development workflows.","tagline":"Connect to the GitHub MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_V_Xs_Zfh_Lv_635f3e5509.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Nob_Sa_S_Oi_0446ab1022.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://api.githubcopilot.com/mcp/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"usesCredentials","usesCredentials":[{"credentialType":"githubOAuth2Api","name":"OAuth2","value":"oAuth2"}]}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
git-lab	active	0.0.1	2026-06-11 12:28:56.391	{"name":"com.gitlab/mcp","title":"GitLab","description":"Official GitLab MCP Server","tagline":"Connect to the GitLab MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idkt3_Cw41b_9f7043ad83.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_O_Daz_Q_Zbt_f76933a2e6.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://gitlab.com/api/v4/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
grafana	active	v0.17.2	2026-07-31 08:56:04.253	{"name":"io.github.grafana/mcp-grafana","title":"Grafana","description":"An MCP server giving access to Grafana dashboards, data and more.","tagline":"Connect to the Grafana MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Voh_Wbum_D_22ee5e3d3d.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KI_2_Ge8_Tx_8fa7637298.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.grafana.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
gtmetrix	active	1.1.0	2026-07-27 06:34:18.943	{"name":"com.gtmetrix/gtmetrix","title":"Gtmetrix","description":"Analyze web performance and get optimization insights from GTmetrix, directly in your AI workflow.","tagline":"Connect to the Gtmetrix MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_S5_Ofsvh_D_030852542c.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://gtmetrix.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
guru-remote	active	1.0.2	2026-07-27 06:26:47.365	{"name":"com.getguru/mcp-server","title":"Guru Remote","description":"Guru MCP Server - Connect AI tools to your Guru knowledge base","tagline":"Connect to the Guru Remote MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KOIM_9_MG_a2d2a74e04.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.api.getguru.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
hackle	active	1.0.0	2026-07-27 06:28:46.707	{"name":"io.github.hackle-io/hackle-mcp","title":"Hackle","description":"Remote MCP server for the Hackle Admin API: experiments, feature flags, remote config, messaging.","tagline":"Connect to the Hackle MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idb_Cgt3_EZ_5_6022811256.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.hackle.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
himalayas-remote-jobs	active	1.0.2	2026-07-27 06:28:57.931	{"name":"app.himalayas/mcp","title":"Himalayas Remote Jobs","description":"Search and post remote jobs, browse companies, check salaries, and find talent on Himalayas.app","tagline":"Connect to the Himalayas Remote Jobs MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_80aa4c0cf9.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.himalayas.app/mcp"},{"type":"sse","url":"https://mcp.himalayas.app/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
honeycomb	active	1.0.0	2026-07-31 08:56:17.715	{"name":"io.honeycomb/mcp","title":"Honeycomb","description":"Query Honeycomb observability data: traces, events, metrics, SLOs, triggers, and boards.","tagline":"Connect to the Honeycomb MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idc_Eu_Mai3_Y_51bd126c09.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Zffh_QN_Fl_bfda41d0f1.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.honeycomb.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
hugging-face	active	0.2.33	2026-06-11 12:28:18.177	{"name":"co.huggingface/hf-mcp-server","title":"Hugging Face","description":"Connect to Hugging Face Hub and thousands of Gradio AI Applications","tagline":"Connect to the Hugging Face MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_S6h_Od6z2_c35cc34669.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://huggingface.co/mcp?login"},{"type":"streamable-http","url":"https://huggingface.co/mcp"},{"type":"streamable-http","url":"https://huggingface.co/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
ivisa	active	0.0.3	2026-07-27 06:32:58.532	{"name":"com.ivisa.www/mcp","title":"Ivisa","description":"Check visa requirements and travel documents for international travel destinations.","tagline":"Connect to the Ivisa MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Go_Qi_Xix_P_239207701b.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://www.ivisa.com/mcp"},{"type":"sse","url":"https://www.ivisa.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
jotform	active	1.0.0	2026-07-31 08:56:30.157	{"name":"com.jotform/mcp","title":"Jotform","description":"Jotform MCP","tagline":"Connect to the Jotform MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idcaz_TK_Ep1_099d00aa95.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Rg_Fx_ND_Ty_d7d836bfa5.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.jotform.com/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
jumpcloud	active	0.0.38	2026-07-27 06:29:34.445	{"name":"com.jumpcloud/jumpcloud-genai","title":"Jumpcloud","description":"An MCP server that provides an API to LLMs to manage their JumpCloud resources.","tagline":"Connect to the Jumpcloud MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Q_Wjip_S_Dg_57592c9ce8.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.jumpcloud.com/v1"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
kajabi	active	1.0.0	2026-07-27 06:29:46.253	{"name":"com.kajabi/kajabi","title":"Kajabi","description":"Manage Kajabi from any MCP client — products, pages, contacts, offers, emails, analytics.","tagline":"Connect to the Kajabi MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_BPULB_Tw_A_b4460963bc.svg","mimeType":"image/svg+xml","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.kajabi.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
linear	active	1.0.0	2026-06-11 12:28:04.979	{"name":"app.linear/linear","title":"Linear","description":"MCP server for Linear project management and issue tracking","tagline":"Connect to the Linear MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_P3_K9_Q_jj_6b6c66c6c7.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_P3_K9_Q_jj_7d409a8856.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"sse","url":"https://mcp.linear.app/sse"},{"type":"streamable-http","url":"https://mcp.linear.app/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
lucid	active	1.0.0	2026-07-27 06:29:57.456	{"name":"app.lucid.mcp/lucid","title":"Lucid","description":"Lucid’s connector creates diagrams, searches, edits, shares, and retrieves docs to summarize.","tagline":"Connect to the Lucid MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/cab2c5c2_21ed_4272_8606_4ce6e117da17_b893d525b7.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.lucid.app/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
lusha	active	1.0.0	2026-07-31 08:56:43.789	{"name":"com.lusha.mcp/mcp","title":"Lusha","description":"Lusha MCP server for authorized business profile, usage, and buying-signal insights.","tagline":"Connect to the Lusha MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Oqhne_W4l_160b2c6387.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Hn_Bv_Pm_MF_b3cab3545f.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.lusha.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
mapbox	active	0.12.7	2026-07-27 06:30:09.602	{"name":"io.github.mapbox/mcp-server","title":"Mapbox","description":"Geospatial intelligence with Mapbox APIs like geocoding, POI search, directions, isochrones, etc.","tagline":"Connect to the Mapbox MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Ks_p_3_Ey_088e4b1f1c.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.mapbox.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
miro	active	1.0.2	2026-08-10 08:21:30.846	{"name":"io.github.miroapp/mcp-server","title":"Miro","description":"Official Miro MCP server - Supports context to code and creating diagrams, docs, and data tables.","tagline":"Connect to the Miro MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idk_O_5_Zj_Q7_b2bf73f9a8.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idkd_QM_0c_Wu_51bef08ff0.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.miro.com/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
monday-com	active	0.0.1	2026-06-11 12:29:02.947	{"name":"com.monday/monday.com","title":"monday.com","description":"MCP server for monday.com integration.","tagline":"Connect to the monday.com MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idz_Vgm_C8_SV_4533eff3c2.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.monday.com/mcp"},{"type":"sse","url":"https://mcp.monday.com/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
mux	active	12.8.0	2026-07-27 06:30:21.396	{"name":"com.mux/mcp","title":"Mux","description":"The official MCP Server for the Mux API","tagline":"Connect to the Mux MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idd_VMK_Dr_E_9ee0d1c0fd.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.mux.com"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
new-relic	active	0.1.0	2026-07-27 06:30:33.181	{"name":"com.newrelic/mcp-server","title":"New Relic","description":"Access New Relic observability data through MCP - query metrics, logs, traces, entities, and more","tagline":"Connect to the New Relic MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idj_OU_5_Ls_Vn_b153d861d2.svg","mimeType":"image/svg+xml","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.newrelic.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
rackspace-spot	active	0.3.2	2026-07-27 06:34:54.483	{"name":"io.github.rackspace-spot/spot-mcp","title":"Rackspace Spot","description":"Manage Rackspace Spot Kubernetes Cloudspaces, node pools, and VMs from your AI assistant.","tagline":"Connect to the Rackspace Spot MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_R_Am_XHO_Xj_c7492988ea.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.spot.rackspace.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
notion	active	1.2.0	2026-09-29 14:57:02.183	{"name":"com.notion/mcp","title":"Notion","description":"Notion's official MCP server lets you use your Notion workspace as a system of record for knowledge work and software development. Search questions about the codebase and business, fetch links to pages such as tech specs and PRDs, and track tasks with your team.","tagline":"Connect to the Notion MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idjb_Qg_E_jj_26d71d08b5.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idjb_Qg_E_jj_5fcfcab5f8.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.notion.com/mcp"},{"type":"sse","url":"https://mcp.notion.com/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
onlyoffice	active	3.2.0	2026-07-27 06:30:45.489	{"name":"io.github.ONLYOFFICE/docspace","title":"Onlyoffice","description":"A room-based collaborative platform","tagline":"Connect to the Onlyoffice MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idc_J_Gf_Mm1x_3abc6daf5a.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"sse","url":"https://mcp.onlyoffice.com/sse"},{"type":"streamable-http","url":"https://mcp.onlyoffice.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
open-agenda	active	1.3.2	2026-07-27 06:31:08.655	{"name":"com.openagenda/mcp","title":"OpenAgenda","description":"Search, analyze and manage events on OpenAgenda.","tagline":"Connect to the OpenAgenda MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/openagenda_icon_512_white_abac3fef40.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/openagenda_icon_white_463b7b7aad.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http","url":"https://mcp.openagenda.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
open-video	active	1.1.0	2026-07-27 06:30:57.197	{"name":"video.open/open-video","title":"Open Video","description":"AI-powered video publishing, channel management, and monetization via open.video","tagline":"Connect to the Open Video MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_C4_Z_Er2jl_efcb489bf4.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.open.video/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
opus-clip	active	0.1.2	2026-07-27 06:34:42.641	{"name":"io.github.opus-pro/opusclip","title":"OpusClip","description":"Turn long videos into AI-curated short clips: caption, reframe, thumbnail, schedule, and publish.","tagline":"Connect to the OpusClip MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id16btw_Mn_34285031cd.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.opus.pro/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
pay-pal	active	1.0.0	2026-06-11 12:29:23.307	{"name":"com.paypal.mcp/mcp","title":"PayPal","description":"PayPal MCP server provides access to PayPal services and operations for AI assistants","tagline":"Connect to the PayPal MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_R_Wy_Aj_C_Dz_324a3b0a2e.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.paypal.com/mcp"},{"type":"sse","url":"https://mcp.paypal.com/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
pipedrive	active	1.0.0	2026-08-25 11:15:03.311	{"name":"custom/Pipedrive","title":"Pipedrive","description":"MCP server for Pipedrive CRM","tagline":"Connect to the Pipedrive MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_C_Tun_TDY_2_2bd0a3f04e.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.pipedrive.ai/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
post-hog	active	0.2.5	2026-06-11 12:29:53.047	{"name":"io.github.PostHog/mcp","title":"PostHog","description":"Official PostHog MCP Server for product analytics, feature flags, experiments, and more.","tagline":"Connect to the PostHog MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Yz0_Wt_S_Oc_8e4d0f0070.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.posthog.com/mcp"},{"type":"sse","url":"https://mcp.posthog.com/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
postman	active	2.8.9	2026-06-11 12:29:28.445	{"name":"com.postman/postman-mcp-server","title":"Postman","description":"A basic MCP server to operate on the Postman API.","tagline":"Connect to the Postman MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idr_UU_WRCO_c111cb0dea.png","mimeType":"image/png","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.postman.com/mcp"},{"type":"streamable-http","url":"https://mcp.postman.com/minimal"},{"type":"streamable-http","url":"https://mcp.eu.postman.com/mcp"},{"type":"streamable-http","url":"https://mcp.eu.postman.com/minimal"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
prisma	active	1.0.0	2026-06-11 12:30:05.827	{"name":"io.prisma/mcp","title":"Prisma","description":"MCP server for managing Prisma Postgres.","tagline":"Connect to the Prisma MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idz_L_5t_H6_B_e6163aea2d.jpg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"sse","url":"https://mcp.prisma.io/sse"},{"type":"streamable-http","url":"https://mcp.prisma.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
quicknode	active	1.0.0	2026-07-31 08:56:55.454	{"name":"io.github.quicknode/mcp","title":"Quicknode","description":"Manage your blockchain infrastructure across 80+ chains with your agents.","tagline":"Connect to the Quicknode MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Gkd_Tc_T_Q_6cd067aa96.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Eo_Rfmv8_I_b2228a7aa7.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.quicknode.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
railway	active	1.0.0	2026-07-31 08:57:13.759	{"name":"com.railway/mcp","title":"Railway","description":"Develop, manage, and debug Railway projects, services, and deployments from within agents.","tagline":"Connect to the Railway MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_N_Pa1_W_g_1b0b09d3c0.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Nf_YM_Ddf_P_d0762ab2e7.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.railway.com/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
roboflow-official	active	1.0.3	2026-07-27 06:31:46.505	{"name":"com.roboflow/roboflow-mcp","title":"Roboflow (Official)","description":"Roboflow computer vision for AI agents: datasets, annotation, versioning, workflows, inference.","tagline":"Connect to the Roboflow (Official) MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_5a61ee5b18.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.roboflow.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
sanity	active	2.19.0	2026-06-11 12:30:10.774	{"name":"io.sanity.www/mcp","title":"Sanity","description":"Direct access to your Sanity projects (content, datasets, releases, schemas) and agent rules","tagline":"Connect to the Sanity MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Qr019q7c_e4c0ec82b7.png","mimeType":"image/png","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.sanity.io"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
send-pulse	active	1.0.0	2026-07-27 06:35:06.234	{"name":"com.sendpulse.mcp/mcp-server","title":"SendPulse","description":"Empower AI agents with SendPulse email, CRM, chatbot, SMTP, and course automation","tagline":"Connect to the SendPulse MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idv4t5t_Kt_Q_bad208ede1.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.sendpulse.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
serpstat	active	1.1.5	2026-07-27 06:31:58.494	{"name":"com.serpstat/mcp","title":"Serpstat","description":"Automate your daily SEO tasks and get results in a few seconds with Serpstat SEO Tools MCP","tagline":"Connect to the Serpstat MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_32x32_9deb9e3426.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_16x16_978f8c1d24.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_60x60_0e141e6ab3.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_120x120_989cf97cef.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/mstile_144x144_86f983426c.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_180x180_d5650b553b.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.serpstat.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
smart-bear	active	0.32.0	2026-07-27 06:26:00.585	{"name":"com.smartbear/smartbear-mcp","title":"SmartBear","description":"MCP server for AI access to SmartBear tools, including BugSnag, Reflect, Swagger, PactFlow, QTM4J.","tagline":"Connect to the SmartBear MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idi_Kc_F1m_Nh_08a3260e96.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://bugsnag.mcp.smartbear.com/mcp"},{"type":"streamable-http","url":"https://zephyr.mcp.smartbear.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
snitcher	active	1.1.0	2026-07-27 06:35:18.252	{"name":"com.snitcher/snitcher","title":"Snitcher","description":"Identify companies visiting your website: organisations, contacts, segments, tags, CRM sync.","tagline":"Connect to the Snitcher MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idgwm_NEV_1_f421fc6c44.svg","mimeType":"image/svg+xml","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://app.snitcher.com/mcp/snitcher"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
stripe	active	0.2.4	2026-06-11 12:29:33.086	{"name":"com.stripe/mcp","title":"Stripe","description":"MCP server integrating with Stripe - tools for customers, products, payments, and more.","tagline":"Connect to the Stripe MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Bn9_1_Njr_e4279db01b.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.stripe.com"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
supabase	active	0.13.0	2026-10-02 10:17:59.033	{"name":"com.supabase/mcp","title":"Supabase","description":"MCP server for interacting with the Supabase platform","tagline":"Connect to the Supabase MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/supabase_a490b12dac.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http","url":"https://mcp.supabase.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","requiredCapabilities":["supabase-oauth2-credentials"],"tags":[],"authType":"usesCredentials","usesCredentials":[{"credentialType":"supabaseOAuth2Api","name":"OAuth2","value":"oAuth2"}]}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
tavily	active	1.0.0	2026-08-25 11:15:14.725	{"name":"custom/Tavily","title":"Tavily","description":"Use the Tavily API in your MCP clients","tagline":"Connect to the Tavily MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_LQQL_49_Rh_4333709158.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.tavily.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
tenderly	active	1.0.1	2026-07-31 08:57:28.375	{"name":"co.tenderly/tenderly-mcp","title":"Tenderly","description":"Tenderly MCP server for blockchain dev — simulate, debug, and test on 100+ networks.","tagline":"Connect to the Tenderly MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Np_P91btg_2999d326fa.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idg5pc_CT_Me_199bebd567.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.tenderly.co/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
tolstoy-library	active	1.0.0	2026-07-31 08:57:40.033	{"name":"io.github.GoTolstoy/library","title":"Tolstoy Library","description":"Browse, search, rename, and favorite your Tolstoy media library from any AI client.","tagline":"Connect to the Tolstoy Library MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id1bfg_NL_0_W_a737f0b436.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idswp_Hz_VRG_41aaa8f2a7.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://apilb.gotolstoy.com/mcp/v1/library/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
trello	active	1.0.0	2026-08-25 11:12:24.202	{"name":"custom/Trello","title":"Trello","description":"MCP server for connecting to Trello boards, lists, cards, and related workspace data.","tagline":"Connect to the Trello MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idwi_T_Vp_M5f_1d8db2236b.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Yuk3_X_Wkt_4848ff1058.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.trello.com/v1"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
unstoppable-domains	active	1.0.0	2026-07-27 06:25:24.004	{"name":"com.unstoppabledomains/mcp-server","title":"Unstoppable Domains","description":"Domain search, registration, DNS, marketplace, and checkout with your AI agent.","tagline":"Connect to the Unstoppable Domains MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Go_L_Bex_7_98cca38628.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://api.unstoppabledomains.com/mcp/v1/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
user-guiding	active	1.0.0	2026-07-27 06:32:22.58	{"name":"io.github.userguiding/mcp","title":"UserGuiding","description":"Manage users, track events, companies, and knowledge base articles in UserGuiding.","tagline":"Connect to the UserGuiding MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Gqzc_El_EH_ac5ec7c6bf.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.userguiding.com/mcp/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
veed-ai-video-generator	active	1.0.0	2026-07-27 06:33:09.725	{"name":"io.veed/fabric-mcp","title":"VEED AI Video Generator","description":"Generate AI talking-head videos with custom characters and voices.","tagline":"Connect to the VEED AI Video Generator MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_prod_d15545bdfc.svg","mimeType":"image/svg+xml"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_32x32_f264fbd0f8.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://www.veed.io/api/v1/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
webflow	active	2.0.0	2026-06-11 12:29:37.869	{"name":"com.webflow/mcp","title":"Webflow","description":"AI-powered design and management for Webflow Sites","tagline":"Connect to the Webflow MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idx_GYKE_Fj1_b568d3380a.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Zp72_NUI_5_080d2c331c.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.webflow.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
wix	active	1.0.2	2026-06-11 12:29:47.22	{"name":"com.wix/mcp","title":"Wix","description":"A Model Context Protocol server for Wix AI tools","tagline":"Connect to the Wix MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Qa_F_Jx_Orc_31d963143f.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"sse","url":"https://mcp.wix.com/sse"},{"type":"streamable-http","url":"https://mcp.wix.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
wordlift	active	1.0.7	2026-07-27 06:32:34.408	{"name":"io.wordlift/mcp-server","title":"Wordlift","description":"Knowledge Graph, GraphQL, GS1 Digital Link and SEO tools for semantic content optimization.","tagline":"Connect to the Wordlift MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Y8_Nf90og_3c8f9dbd0a.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"sse","url":"https://mcp.wordlift.io/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
you-com-web-access-ai	active	3.5.0	2026-07-27 06:25:36.296	{"name":"io.github.youdotcom-oss/mcp","title":"You.com Web Access & AI","description":"Web search, AI agent, and content extraction via You.com APIs","tagline":"Connect to the You.com Web Access & AI MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idale_Bp_Jx_J_b69ac7e4b6.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://api.you.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
zigpoll	active	2.0.0	2026-07-27 06:32:46.428	{"name":"com.zigpoll/zigpoll-mcp","title":"Zigpoll","description":"Analyze Zigpoll survey responses, track trends, and get AI-powered insights.","tagline":"Connect to the Zigpoll MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_b4l_E3_VQ_6438fbc3e9.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.zigpoll.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
zoom-info	active	1.0.1	2026-10-02 19:33:33.366	{"name":"io.github.Zoominfo/zoominfo-mcp","title":"ZoomInfo","description":"Official ZoomInfo MCP server. Search and enrich companies, contacts, and buyer intent signals.","tagline":"Connect to the ZoomInfo MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idl_A_Ay_Fw_p_4b62d3d2c5.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http","url":"https://mcp.zoominfo.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","requiredCapabilities":["n8n-cloud"],"tags":[],"authType":"oauth2"}	2026-10-26 13:19:00.19+00	2026-10-26 13:18:53.43+00
\.


--
-- Data for Name: instance_ai_mcp_registry_connections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_mcp_registry_connections" ("id", "credentialId", "serverSlug", "userId", "createdAt", "updatedAt", "toolPermissions") FROM stdin;
\.


--
-- Data for Name: instance_ai_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_messages" ("id", "threadId", "content", "role", "type", "resourceId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observation_cursors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observation_cursors" ("observationScopeId", "lastObservedMessageId", "lastObservedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observation_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observation_locks" ("observationScopeId", "taskKind", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observational_memory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observational_memory" ("id", "lookupKey", "scope", "threadId", "resourceId", "activeObservations", "originType", "config", "generationCount", "lastObservedAt", "pendingMessageTokens", "totalTokensObserved", "observationTokenCount", "isObserving", "isReflecting", "observedMessageIds", "observedTimezone", "bufferedObservations", "bufferedObservationTokens", "bufferedMessageIds", "bufferedReflection", "bufferedReflectionTokens", "bufferedReflectionInputTokens", "reflectedObservationLineCount", "bufferedObservationChunks", "isBufferingObservation", "isBufferingReflection", "lastBufferedAtTokens", "lastBufferedAtTime", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observations" ("id", "observationScopeId", "marker", "text", "parentId", "tokenCount", "status", "supersededBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_pending_confirmations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_pending_confirmations" ("requestId", "threadId", "userId", "kind", "runId", "toolCallId", "messageGroupId", "checkpointKey", "checkpointTaskId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_resources" ("id", "workingMemory", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_thread_grants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_thread_grants" ("threadId", "userId", "grantKey", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_thread_tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_thread_tabs" ("threadId", "userId", "state", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_workflow_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_workflow_snapshots" ("runId", "workflowName", "resourceId", "status", "snapshot", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_credential_assignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_credential_assignment" ("credentialUseId", "credentialId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_monitoring_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_monitoring_report" ("id", "dataPoints", "status", "deliveredAt", "attempts", "lastAttemptAt", "lastError", "createdAt", "updatedAt", "reportDate") FROM stdin;
\.


--
-- Data for Name: instance_version_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_version_history" ("id", "major", "minor", "patch", "createdAt") FROM stdin;
1	2	44	7	2026-10-26 13:17:50.037+00
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migration_finding; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migration_finding" ("id", "targetVersion", "ruleId", "workflowId", "status", "note", "notifiedAt", "statusChangedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: migration_finding_sync; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migration_finding_sync" ("targetVersion", "syncedAt", "ruleSetFingerprint") FROM stdin;
\.


--
-- Data for Name: migration_workflow_owner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migration_workflow_owner" ("workflowId", "userId", "source", "assignedById", "assignedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
100	1758731786132	AddAudienceColumnToApiKeys1758731786132
101	1758794506893	AddProjectIdToVariableTable1758794506893
102	1759399811000	ChangeValueTypesForInsights1759399811000
103	1760019379982	CreateChatHubTables1760019379982
104	1760020000000	CreateChatHubAgentTable1760020000000
105	1760020838000	UniqueRoleNames1760020838000
106	1760116750277	CreateOAuthEntities1760116750277
107	1760314000000	CreateWorkflowDependencyTable1760314000000
108	1760965142113	DropUnusedChatHubColumns1760965142113
109	1761047826451	AddWorkflowVersionColumn1761047826451
110	1761655473000	ChangeDependencyInfoToJson1761655473000
111	1761773155024	AddAttachmentsToChatHubMessages1761773155024
112	1761830340990	AddToolsColumnToChatHubTables1761830340990
113	1762177736257	AddWorkflowDescriptionColumn1762177736257
114	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
115	1762771264000	ChangeDefaultForIdInUserTable1762771264000
116	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
117	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
118	1763047800000	AddActiveVersionIdColumn1763047800000
119	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
120	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
121	1763716655000	CreateBinaryDataTable1763716655000
122	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
123	1764276827837	AddCreatorIdToProjectTable1764276827837
124	1764682447000	CreateDynamicCredentialResolverTable1764682447000
125	1764689388394	AddDynamicCredentialEntryTable1764689388394
126	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
127	1765459448000	AddResolvableFieldsToCredentials1765459448000
128	1765788427674	AddIconToAgentTable1765788427674
129	1765804780000	ConvertAgentIdToUuid1765804780000
130	1765886667897	AddAgentIdForeignKeys1765886667897
131	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
132	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
133	1766068346315	AddChatMessageIndices1766068346315
134	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
135	1767018516000	ChangeWorkflowStatisticsFKToNoAction1767018516000
136	1768402473068	ExpandModelColumnLength1768402473068
137	1768557000000	AddStoredAtToExecutionEntity1768557000000
138	1768901721000	AddDynamicCredentialUserEntryTable1768901721000
139	1769000000000	AddPublishedVersionIdToWorkflowDependency1769000000000
140	1769433700000	CreateSecretsProviderConnectionTables1769433700000
141	1769698710000	CreateWorkflowPublishedVersionTable1769698710000
142	1769784356000	ExpandSubjectIDColumnLength1769784356000
143	1769900001000	AddWorkflowUnpublishScopeToCustomRoles1769900001000
144	1770000000000	CreateChatHubToolsTable1770000000000
145	1770000000000	ExpandProviderIdColumnLength1770000000000
146	1770220686000	CreateWorkflowBuilderSessionTable1770220686000
147	1771417407753	AddScalingFieldsToTestRun1771417407753
148	1771500000000	MigrateExternalSecretsToEntityStorage1771500000000
149	1771500000001	AddUnshareScopeToCustomRoles1771500000001
150	1771500000002	AddFilesColumnToChatHubAgents1771500000002
151	1772000000000	AddSuggestedPromptsToAgentTable1772000000000
152	1772619247761	AddRoleColumnToProjectSecretsProviderAccess1772619247761
153	1772619247762	ChangeWorkflowPublishedVersionFKsToRestrict1772619247762
154	1772700000000	AddTypeToChatHubSessions1772700000000
155	1772800000000	CreateRoleMappingRuleTable1772800000000
156	1773000000000	CreateCredentialDependencyTable1773000000000
157	1774280963551	AddRestoreFieldsToWorkflowBuilderSession1774280963551
158	1774854660000	CreateInstanceVersionHistoryTable1774854660000
159	1775000000000	CreateInstanceAiTables1775000000000
160	1775116241000	CreateTokenExchangeJtiTable1775116241000
161	1775740765000	ChangeWorkflowPublishHistoryVersionIdToSetNull1775740765000
162	1776000000000	CreateTrustedKeyTables1776000000000
163	1776150756000	CreateFavoritesTable1776150756000
164	1777000000000	CreateDeploymentKeyTable1777000000000
165	1777023444000	AddJweKeyIndexesToDeploymentKey1777023444000
166	1777045000000	AddTracingContextToExecution1777045000000
167	1777100000000	AddLangsmithIdsToInstanceAiRunSnapshots1777100000000
168	1777281990043	CreateAiBuilderTemporaryWorkflowTable1777281990043
169	1777420800000	ExpandVariablesValueColumnToText1777420800000
170	1777996709110	AddRunIndexToTestCaseExecution1777996709110
171	1778000000000	AddExecutionDeduplicationKey1778000000000
172	1778100000000	CreateEvaluationConfig1778100000000
173	1778100001000	AddWorkflowVersionToTestRun1778100001000
174	1778100002000	AddEvaluationConfigColumnsToTestRun1778100002000
175	1778496086558	CreateEvaluationCollection1778496086558
176	1783000000000	CreateAgentTables1783000000000
177	1783000000001	CreateAgentExecutionTables1783000000001
178	1784000000000	CreateAgentObservationTables1784000000000
179	1784000000001	ReplaceAgentObservationTables1784000000001
180	1784000000002	DropAgentExecutionWorkingMemory1784000000002
181	1784000000003	LimitWorkflowVersionTriggerToContent1784000000003
182	1784000000004	AddInsightsRawTimestampIdIndex1784000000004
183	1784000000005	CreateMcpRegistryServerTable1784000000005
184	1784000000006	AddNodeGroupsColumnToWorkflowAndHistory1784000000006
185	1784000000007	CreateInstanceAiCheckpointTable1784000000007
186	1784000000008	ResetInstanceAiNativePersistence1784000000008
187	1784000000009	CreateAgentMemoryEntryTables1784000000009
188	1784000000010	RefactorAgentObservationScope1784000000010
189	1784000000011	CreateAgentHistoryTable1784000000011
190	1784000000012	CreateInstanceAiObservationTables1784000000012
191	1784000000013	SplitRedactionScopeInCustomRoles1784000000013
192	1784000000014	PersistInstanceAiPendingConfirmations1784000000014
193	1784000000015	AddSourceWorkflowIdToWorkflow1784000000015
194	1784000000016	UseSlugAsPrimaryKeyInMcpRegistryServer1784000000016
195	1784000000017	AddLastUsedAtToApiKey1784000000017
196	1784000000018	CreateAgentFilesTable1784000000018
197	1784000000019	AddCustomTelemetryTagsToProject1784000000019
198	1784000000021	CreateAgentTaskDefinitionTable1784000000021
199	1784000000022	AddSubAgentLinkageToAgentExecutionThreads1784000000022
200	1784000000023	CreateInstanceAiMcpRegistryConnectionTable1784000000023
201	1784000000024	AddResourceToOAuthAuthorizationCodes1784000000024
202	1784000000025	MigrateRedactionEnforcementToFloor1784000000025
203	1784000000026	AddScopeColumnToOAuthTables1784000000026
204	1784000000027	CreateWorkflowPublicationOutboxTable1784000000027
205	1784000000028	AddProjectIdToInstanceAiThread1784000000028
206	1784000000029	AddJsonSizeBytesAndWorkflowVersionIdToExecutionEntity1784000000029
207	1784000000030	CreateAgentChatSubscriptions1784000000030
208	1784000000031	AddExecutionEntityWorkflowStatusIndex1784000000031
209	1784000000033	AddBinaryDataSizeBytesToExecutionEntity1784000000033
210	1784000000034	AllowAzureStoredAt1784000000034
211	1784000000035	AddUniqueAgentFileNames1784000000035
212	1784000000036	CreateInstanceAiThreadGrantTable1784000000036
213	1784000000037	DropAgentDescriptionFromAgents1784000000037
214	1784000000038	SetChatHubEnabledFromUsage1784000000038
215	1784000000039	DropAgentExecutionFallbackColumns1784000000039
216	1784000000040	CreateWorkflowPublicationTriggerStatusTable1784000000040
217	1784000000041	AddUsedPrivateCredentialsToExecutionEntity1784000000041
218	1784000000042	CreateSchedulerTables1784000000042
219	1784000000043	CreateWorkflowStatisticsDeltaTable1784000000043
220	1784000000044	AddPartialIndexForGlobalCredentials1784000000044
221	1784000000045	AddRecurringCronScheduleKind1784000000045
222	1784000000046	CreateInstanceAiEventsTable1784000000046
223	1784000000047	BackfillPreScopingOAuthGrantScopes1784000000047
224	1784000000048	AddTriggerKindToWorkflowPublicationTriggerStatus1784000000048
225	1784000000049	AddScheduledTaskDispatchedAt1784000000049
226	1784000000050	AddHostRunIdToInstanceAiCheckpoints1784000000050
227	1784000000051	BackfillInstanceAiEventLog1784000000051
228	1784000000052	CreateWorkflowReviewRequestTables1784000000052
229	1784815940110	AddStoredAtToAgentExecution1784815940110
230	1784815940111	AddInstanceCredentials1784815940111
231	1784815940112	CreateAgentEvalTables1784815940112
232	1784897791636	AddAvailableInMcpToAgents1784897791636
233	1785162364000	ChangeInstalledNodeVersionType1785162364000
234	1785162364001	AddIsFirstPartyToOAuthClients1785162364001
235	1785186578138	AddAgentFileStorageColumns1785186578138
236	1785247194306	CrashStaleEnqueuedExecutions1785247194306
237	1785247194307	AddMisfirePolicyToScheduler1785247194307
238	1785255306000	CreateAgentChatAttachmentsTable1785255306000
239	1785500832626	AddSetupCompletedAtToAgents1785500832626
240	1785828155091	AddAgentExecutionRuntimeState1785828155091
241	1785828155092	CreateAgentCredentialDependencyTable1785828155092
242	1785840970000	AllowDiscordAgentChatSubscriptions1785840970000
243	1785843640527	CreateWorkflowReviewActivityTablesAndBaseline1785843640527
244	1785926660580	CreatePollerStateTable1785926660580
245	1786519946974	AddReasonToWorkflowPublicationOutbox1786519946974
246	1786666615643	AddCoalesceOwnerMisfirePolicy1786666615643
247	1786666615644	AddAgentRevisionColumn1786666615644
248	1787040021605	AddAgentExecutionFailureSummary1787040021605
249	1787056876306	CreateGitConnectionTable1787056876306
250	1787057050000	AddTimezoneToAgentTasks1787057050000
251	1787089039726	CreateGitConnectionProjectTable1787089039726
252	1787089039727	DropWorkflowReviewActivityTypeCheckAndWorkflowIdColumn1787089039727
253	1787140858009	AddProjectManageMembersScopeToCustomRoles1787140858009
254	1787213245846	CreateAgentChannelStatusTable1787213245846
255	1787739515257	AddResourceToOAuthRefreshTokens1787739515257
256	1787841960965	CreateTypeAvailabilityPolicyTables1787841960965
257	1788191436461	CreateAgentBackgroundJobTable1788191436461
258	1788336311704	DropInstanceAiRunSnapshotsTable1788336311704
259	1788359043381	GeneralizeScheduledJobOwner1788359043381
260	1788425788714	CreateActivityEventTable1788425788714
261	1788445119183	CreateProjectPoolSettings1788445119183
262	1788445119184	CreateInstanceMonitoringReportTable1788445119184
263	1788522448804	CreateAgentWorkflowDependencyTable1788522448804
264	1788527465971	AddWakeColumnsToAgentBackgroundJob1788527465971
265	1788759351166	CreatePromotionsTables1788759351166
266	1788780616817	DropGitConnectionTables1788780616817
267	1788882375989	CreateAiPreferenceTable1788882375989
268	1789029973536	CreateAgentMemoryEntryCandidates1789029973536
269	1789121244489	AddAgentExecutionAuthorAndMessagesResourceThreadIndex1789121244489
270	1789131391410	AddInstanceAiThreadHistoryIndex1789131391410
271	1789137988234	AddKindCreatedAtIndexToTypeAvailabilityPolicy1789137988234
272	1789479099132	AddSourceToAiPreference1789479099132
273	1789558029357	AddDescriptionToCredentials1789558029357
274	1789717191125	AddThreadIdToAgentCheckpoints1789717191125
275	1789995003141	AddExecutionScopesToCustomRoles1789995003141
276	1790014447117	AddAgentThreadOwnership1790014447117
277	1790054384570	PreventDeploymentKeyDeletion1790054384570
278	1790073725529	AddConcurrencyLimitToScheduledJob1790073725529
279	1790162967151	CreateWorkflowPublicationRetryStateTable1790162967151
280	1790231058977	AllowTeamsAgentChatSubscriptions1790231058977
281	1790241069212	CreateAgentMessageQueue1790241069212
282	1790319787160	AddPendingAuthorizationToCredentials1790319787160
283	1790342771626	CreateInstanceAiThreadTabsTable1790342771626
284	1790583238183	AddReportDateToInstanceMonitoringReport1790583238183
285	1790590278292	AddAgentExecutionMessages1790590278292
286	1790598807675	CreateMigrationFindingTables1790598807675
287	1790605116208	AddAgentQueueMessageReferences1790605116208
288	1790672501346	CreateTrustedSourceTables1790672501346
289	1790683443934	AddAgentMessageSteering1790683443934
290	1790689944845	AddSuspendedAgentBackgroundJobStatus1790689944845
291	1790758111050	MigrateMcpToolPermissions1790758111050
292	1790774580617	AllowSendingInstanceReportStatus1790774580617
293	1790837340960	CreateAgentThreadGrantTable1790837340960
294	1790853539575	AddAgentMessageQueuePosition1790853539575
295	1790928780672	CreateWorkflowSuggestionTables1790928780672
296	1790936314732	AddAgentMessageQueueSteeringPairCheck1790936314732
297	1790937677019	AddAgentBackgroundJobPause1790937677019
298	1791187410548	CreateAgentPlanTables1791187410548
299	1791199417265	AddOAuthSigningKeyIndexToDeploymentKey1791199417265
300	1791209478293	CreateAgentBudgetSpendTables1791209478293
301	1791276719782	AddMetadataToTrustedSource1791276719782
302	1791276719783	AllowWhatsAppAgentChatSubscriptions1791276719783
303	1791366497000	CreateMigrationWorkflowOwnerTable1791366497000
304	1791374893870	AddWorkflowSuggestionReviewState1791374893870
305	1791377741439	AllowGitLabPromotionProvider1791377741439
306	1791378361769	CreateSelfHealingResultTable1791378361769
307	1791448888000	AddVerdictToAgentEvalResult1791448888000
308	1791463714234	AddActivityEventResourceIndex1791463714234
309	1791540050944	CreateIdempotencyKeyTable1791540050944
310	1791542683581	AddTimeoutSecondsToScheduler1791542683581
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt", "isFirstParty") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt", "resource", "scope") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt", "scope", "resource") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt", "scope") FROM stdin;
\.


--
-- Data for Name: poller_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."poller_state" ("workflowId", "nodeId", "cursor", "consecutiveErrors", "backoffUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_pool_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_pool_settings" ("projectId", "defaultPool", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
EwqGLVt7WaE5lrdY	28cc310b-5ec7-4f2c-8615-b4b5ec49ee7a	project:personalOwner	2026-10-26 13:06:46.289+00	2026-10-26 13:06:46.289+00
\.


--
-- Data for Name: secrets_provider_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."secrets_provider_connection" ("id", "providerKey", "type", "encryptedSettings", "isEnabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_secrets_provider_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_secrets_provider_access" ("secretsProviderConnectionId", "projectId", "createdAt", "updatedAt", "role") FROM stdin;
\.


--
-- Data for Name: promotion_provider; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."promotion_provider" ("id", "name", "type", "authType", "config", "auth", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: promotion_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."promotion_connection" ("id", "name", "providerId", "scope", "target", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: promotion_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."promotion_config" ("id", "connectionId", "name", "direction", "settings", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: promotion_connection_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."promotion_connection_project" ("projectId", "connectionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule" ("id", "expression", "role", "type", "order", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule_project" ("roleMappingRuleId", "projectId") FROM stdin;
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
workflow:unpublish	Unpublish Workflow	Allows unpublishing workflows.
workflow:unshare	Unshare Workflow	Allows removing workflow shares.
credential:unshare	Unshare Credential	Allows removing credential shares.
project:manageMembers	Manage Project Members	Allows adding members to a project, changing a member's project role, and removing members.
execution:read	View Execution	Allows viewing executions of workflows the role can view.
execution:list	List Executions	Allows listing executions of workflows the role can view.
execution:delete	Delete Execution	Allows deleting executions of workflows in the project.
agent:create	Create Agent	Allows creating new agents in a project.
agent:read	Read Agent	Allows reading agent configuration and history.
agent:update	Update Agent	Allows updating, building, publishing, and managing integrations of agents.
agent:delete	Delete Agent	Allows deleting agents.
agent:list	List Agents	Allows listing agents in a project.
agent:execute	Execute Agent	Allows running agents in chat.
agent:publish	Publish Agent	Allows publishing agents.
agent:unpublish	Unpublish Agent	Allows unpublishing agents.
agent:manage	agent:manage	\N
agent:export	Export Agent	Allows including agents in a portable package export.
aiAssistant:manage	Manage AI Usage	Allows managing AI Usage settings.
aiPreference:create	aiPreference:create	\N
aiPreference:read	Read AI Preferences	Allows reading the AI preferences saved for the instance, the user, and their projects.
aiPreference:update	aiPreference:update	\N
aiPreference:delete	aiPreference:delete	\N
aiPreference:list	aiPreference:list	\N
projectAiPreference:create	projectAiPreference:create	\N
projectAiPreference:read	projectAiPreference:read	\N
projectAiPreference:update	projectAiPreference:update	\N
projectAiPreference:delete	projectAiPreference:delete	\N
projectAiPreference:list	projectAiPreference:list	\N
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
auditLogs:manage	auditLogs:manage	\N
banner:dismiss	banner:dismiss	\N
community:register	community:register	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:connect	Connect End-User Credential	Allows connecting an own account to an end-user credential.
credential:createEndUser	Manage End-User Credential	Allows creating, deleting, and changing the type of end-user credentials, which resolve to each user's own connection.
credential:manageInstance	Manage provider connections	Allows creating, updating, and deleting provider connections used by instance-level features. These connections are not available in workflows.
credential:use	Use Credential	Allows using any credential on the instance in a workflow, without being a member of its project. Without it, a role that can read credentials sees them but cannot select, test, or run them.
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credentialTypePolicy:manage	Manage Credential Type Policies	Allows managing which credential types are available, on the instance or in a project.
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecret:list	externalSecret:list	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
license:manage	license:manage	\N
logStreaming:manage	logStreaming:manage	\N
nodeTypePolicy:manage	Manage Node Type Policies	Allows managing which node types are available, on the instance or in a project.
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:manage	orchestration:manage	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:export	Export Project	Allows including projects in a portable package export.
saml:manage	saml:manage	\N
securityAudit:generate	securityAudit:generate	\N
securitySettings:manage	securitySettings:manage	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:read	sourceControl:read	\N
gitConnection:create	Create Git Connection	Allows creating Git connections and their authentication material.
gitConnection:read	Read Git Connection	Allows reading Git connection configuration. Secrets are never returned.
gitConnection:update	Update Git Connection	Allows updating Git connections, including their authentication material.
gitConnection:delete	Delete Git Connection	Allows deleting Git connections and their local files.
gitConnection:list	List Git Connections	Allows listing Git connections.
gitConnection:clone	Clone Git Connection	Allows cloning and removing the local working copy of a Git connection.
gitConnection:push	Push Git Connection	Allows pushing all projects linked to a Git connection to its remote repository.
gitConnection:manageProjects	Manage Git Connection Projects	Allows adding projects to and removing projects from a Git connection.
gitConnection:pull	Pull Git Connection	Allows importing all projects from a Git connection working copy into the instance.
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:generateInviteLink	user:generateInviteLink	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
workersView:manage	workersView:manage	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:execute-chat	Execute Workflow in Chat	Allows executing workflows in chat.
workflow:export	Export Workflow	Allows including workflows in a portable package export.
workflow:import	Import Workflow	Allows importing workflows from a portable package into the project.
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
insights:list	insights:list	\N
insights:read	Read Insights	Allows reading insights data.
oidc:manage	oidc:manage	\N
provisioning:manage	provisioning:manage	\N
scim:manage	scim:manage	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:readColumn	dataTable:readColumn	\N
dataTable:writeColumn	dataTable:writeColumn	\N
dataTable:listProject	dataTable:listProject	\N
execution:retry	execution:retry	\N
execution:get	execution:get	\N
execution:reveal	execution:reveal	\N
testRun:read	Read Test Run	Allows reading evaluation test runs and their per-case results.
testRun:list	List Test Runs	Allows listing evaluation test runs for a workflow.
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
role:manage	role:manage	\N
role:read	role:read	\N
role:manageProject	Manage project roles	Allows creating, editing, and deleting project role definitions.
role:list	role:list	\N
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:migrate	breakingChanges:migrate	\N
apiKey:manage	apiKey:manage	\N
apiKey:create	apiKey:create	\N
apiKey:update	apiKey:update	\N
encryptionKey:manage	Manage Encryption Keys	Allows listing and rotating instance encryption keys.
credentialResolver:create	credentialResolver:create	\N
credentialResolver:read	credentialResolver:read	\N
credentialResolver:update	credentialResolver:update	\N
credentialResolver:delete	credentialResolver:delete	\N
credentialResolver:list	credentialResolver:list	\N
instanceAi:message	instanceAi:message	\N
instanceAi:manage	instanceAi:manage	\N
instanceAi:gateway	instanceAi:gateway	\N
instanceAi:eval	instanceAi:eval	\N
roleMappingRule:create	roleMappingRule:create	\N
roleMappingRule:read	roleMappingRule:read	\N
roleMappingRule:update	roleMappingRule:update	\N
roleMappingRule:delete	roleMappingRule:delete	\N
roleMappingRule:list	roleMappingRule:list	\N
otel:manage	otel:manage	\N
workflow:publish	Publish Workflow	Allows publishing workflows.
workflow:enableRedaction	workflow:enableRedaction	\N
workflow:disableRedaction	workflow:disableRedaction	\N
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	workflow:unpublish
global:owner	workflow:unshare
global:owner	credential:unshare
global:owner	project:manageMembers
global:owner	execution:read
global:owner	execution:list
global:owner	execution:delete
global:owner	agent:create
global:owner	agent:read
global:owner	agent:update
global:owner	agent:delete
global:owner	agent:list
global:owner	agent:execute
global:owner	agent:publish
global:owner	agent:unpublish
global:owner	agent:manage
global:owner	agent:export
global:owner	aiAssistant:manage
global:owner	aiPreference:create
global:owner	aiPreference:read
global:owner	aiPreference:update
global:owner	aiPreference:delete
global:owner	aiPreference:list
global:owner	projectAiPreference:create
global:owner	projectAiPreference:read
global:owner	projectAiPreference:update
global:owner	projectAiPreference:delete
global:owner	projectAiPreference:list
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:connect
global:owner	credential:createEndUser
global:owner	credential:manageInstance
global:owner	credential:use
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	credentialTypePolicy:manage
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	nodeTypePolicy:manage
global:owner	orchestration:read
global:owner	orchestration:manage
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	project:export
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	securitySettings:manage
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	sourceControl:read
global:owner	gitConnection:create
global:owner	gitConnection:read
global:owner	gitConnection:update
global:owner	gitConnection:delete
global:owner	gitConnection:list
global:owner	gitConnection:clone
global:owner	gitConnection:push
global:owner	gitConnection:manageProjects
global:owner	gitConnection:pull
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:generateInviteLink
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:execute-chat
global:owner	workflow:export
global:owner	workflow:import
global:owner	workflow:move
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	insights:read
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	scim:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:readColumn
global:owner	dataTable:writeColumn
global:owner	dataTable:listProject
global:owner	execution:reveal
global:owner	role:manage
global:owner	role:read
global:owner	role:list
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:owner	breakingChanges:migrate
global:owner	apiKey:manage
global:owner	apiKey:create
global:owner	apiKey:update
global:owner	encryptionKey:manage
global:owner	credentialResolver:create
global:owner	credentialResolver:read
global:owner	credentialResolver:update
global:owner	credentialResolver:delete
global:owner	credentialResolver:list
global:owner	instanceAi:message
global:owner	instanceAi:manage
global:owner	instanceAi:gateway
global:owner	instanceAi:eval
global:owner	roleMappingRule:create
global:owner	roleMappingRule:read
global:owner	roleMappingRule:update
global:owner	roleMappingRule:delete
global:owner	roleMappingRule:list
global:owner	otel:manage
global:owner	workflow:publish
global:owner	workflow:enableRedaction
global:owner	workflow:disableRedaction
global:admin	workflow:unpublish
global:admin	workflow:unshare
global:admin	credential:unshare
global:admin	project:manageMembers
global:admin	execution:read
global:admin	execution:list
global:admin	execution:delete
global:admin	agent:create
global:admin	agent:read
global:admin	agent:update
global:admin	agent:delete
global:admin	agent:list
global:admin	agent:execute
global:admin	agent:publish
global:admin	agent:unpublish
global:admin	agent:manage
global:admin	agent:export
global:admin	aiAssistant:manage
global:admin	aiPreference:create
global:admin	aiPreference:read
global:admin	aiPreference:update
global:admin	aiPreference:delete
global:admin	aiPreference:list
global:admin	projectAiPreference:create
global:admin	projectAiPreference:read
global:admin	projectAiPreference:update
global:admin	projectAiPreference:delete
global:admin	projectAiPreference:list
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:shareGlobally
global:admin	credential:move
global:admin	credential:connect
global:admin	credential:createEndUser
global:admin	credential:manageInstance
global:admin	credential:use
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	credentialTypePolicy:manage
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	nodeTypePolicy:manage
global:admin	orchestration:read
global:admin	orchestration:manage
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	project:export
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	securitySettings:manage
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	sourceControl:read
global:admin	gitConnection:create
global:admin	gitConnection:read
global:admin	gitConnection:update
global:admin	gitConnection:delete
global:admin	gitConnection:list
global:admin	gitConnection:clone
global:admin	gitConnection:push
global:admin	gitConnection:manageProjects
global:admin	gitConnection:pull
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:generateInviteLink
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:execute-chat
global:admin	workflow:export
global:admin	workflow:import
global:admin	workflow:move
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	insights:read
global:admin	oidc:manage
global:admin	provisioning:manage
global:admin	scim:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:readColumn
global:admin	dataTable:writeColumn
global:admin	dataTable:listProject
global:admin	execution:reveal
global:admin	role:manage
global:admin	role:read
global:admin	role:list
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:admin	breakingChanges:migrate
global:admin	apiKey:manage
global:admin	apiKey:create
global:admin	apiKey:update
global:admin	encryptionKey:manage
global:admin	credentialResolver:create
global:admin	credentialResolver:read
global:admin	credentialResolver:update
global:admin	credentialResolver:delete
global:admin	credentialResolver:list
global:admin	instanceAi:message
global:admin	instanceAi:manage
global:admin	instanceAi:gateway
global:admin	instanceAi:eval
global:admin	roleMappingRule:create
global:admin	roleMappingRule:read
global:admin	roleMappingRule:update
global:admin	roleMappingRule:delete
global:admin	roleMappingRule:list
global:admin	otel:manage
global:admin	workflow:publish
global:admin	workflow:enableRedaction
global:admin	workflow:disableRedaction
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
global:member	breakingChanges:list
global:member	apiKey:create
global:member	apiKey:update
global:member	credentialResolver:list
global:member	instanceAi:message
global:member	instanceAi:gateway
global:chatUser	chatHub:message
global:chatUser	chatHubAgent:create
global:chatUser	chatHubAgent:read
global:chatUser	chatHubAgent:update
global:chatUser	chatHubAgent:delete
global:chatUser	chatHubAgent:list
project:admin	workflow:unpublish
project:admin	credential:unshare
project:admin	project:manageMembers
project:admin	execution:read
project:admin	execution:list
project:admin	execution:delete
project:admin	agent:create
project:admin	agent:read
project:admin	agent:update
project:admin	agent:delete
project:admin	agent:list
project:admin	agent:execute
project:admin	agent:publish
project:admin	agent:unpublish
project:admin	agent:export
project:admin	projectAiPreference:create
project:admin	projectAiPreference:read
project:admin	projectAiPreference:update
project:admin	projectAiPreference:delete
project:admin	projectAiPreference:list
project:admin	credential:share
project:admin	credential:move
project:admin	credential:connect
project:admin	credential:createEndUser
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	credentialTypePolicy:manage
project:admin	nodeTypePolicy:manage
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	project:export
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:execute-chat
project:admin	workflow:export
project:admin	workflow:import
project:admin	workflow:move
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:readColumn
project:admin	dataTable:writeColumn
project:admin	dataTable:listProject
project:admin	execution:reveal
project:admin	workflow:publish
project:admin	workflow:enableRedaction
project:admin	workflow:disableRedaction
project:personalOwner	workflow:unpublish
project:personalOwner	workflow:unshare
project:personalOwner	credential:unshare
project:personalOwner	execution:read
project:personalOwner	execution:list
project:personalOwner	execution:delete
project:personalOwner	agent:create
project:personalOwner	agent:read
project:personalOwner	agent:update
project:personalOwner	agent:delete
project:personalOwner	agent:list
project:personalOwner	agent:execute
project:personalOwner	agent:publish
project:personalOwner	agent:unpublish
project:personalOwner	agent:export
project:personalOwner	projectAiPreference:create
project:personalOwner	projectAiPreference:read
project:personalOwner	projectAiPreference:update
project:personalOwner	projectAiPreference:delete
project:personalOwner	projectAiPreference:list
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:connect
project:personalOwner	credential:createEndUser
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	project:export
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:execute-chat
project:personalOwner	workflow:export
project:personalOwner	workflow:import
project:personalOwner	workflow:move
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:readColumn
project:personalOwner	dataTable:writeColumn
project:personalOwner	dataTable:listProject
project:personalOwner	execution:reveal
project:personalOwner	workflow:publish
project:personalOwner	workflow:enableRedaction
project:personalOwner	workflow:disableRedaction
project:editor	workflow:unpublish
project:editor	execution:read
project:editor	execution:list
project:editor	execution:delete
project:editor	agent:create
project:editor	agent:read
project:editor	agent:update
project:editor	agent:delete
project:editor	agent:list
project:editor	agent:execute
project:editor	agent:publish
project:editor	agent:unpublish
project:editor	agent:export
project:editor	projectAiPreference:create
project:editor	projectAiPreference:read
project:editor	projectAiPreference:update
project:editor	projectAiPreference:delete
project:editor	projectAiPreference:list
project:editor	credential:connect
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	project:export
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:execute-chat
project:editor	workflow:export
project:editor	workflow:import
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:readColumn
project:editor	dataTable:writeColumn
project:editor	dataTable:listProject
project:editor	workflow:publish
project:viewer	execution:read
project:viewer	execution:list
project:viewer	agent:read
project:viewer	agent:list
project:viewer	agent:execute
project:viewer	agent:export
project:viewer	projectAiPreference:read
project:viewer	projectAiPreference:list
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	project:export
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:execute-chat
project:viewer	workflow:export
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:readColumn
project:viewer	dataTable:listProject
project:chatUser	agent:execute
project:chatUser	workflow:execute-chat
credential:owner	credential:unshare
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:connect
credential:owner	credential:createEndUser
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:connect
credential:user	credential:read
workflow:owner	workflow:unpublish
workflow:owner	workflow:unshare
workflow:owner	execution:read
workflow:owner	execution:list
workflow:owner	execution:delete
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:execute-chat
workflow:owner	workflow:export
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:owner	execution:reveal
workflow:owner	workflow:publish
workflow:owner	workflow:enableRedaction
workflow:owner	workflow:disableRedaction
workflow:editor	workflow:unpublish
workflow:editor	execution:read
workflow:editor	execution:list
workflow:editor	execution:delete
workflow:editor	workflow:execute
workflow:editor	workflow:execute-chat
workflow:editor	workflow:export
workflow:editor	workflow:read
workflow:editor	workflow:update
workflow:editor	workflow:publish
secretsProviderConnection:owner	externalSecretsProvider:sync
secretsProviderConnection:owner	externalSecretsProvider:read
secretsProviderConnection:owner	externalSecretsProvider:update
secretsProviderConnection:owner	externalSecretsProvider:delete
secretsProviderConnection:owner	externalSecretsProvider:list
secretsProviderConnection:owner	externalSecret:list
secretsProviderConnection:user	externalSecretsProvider:read
secretsProviderConnection:user	externalSecretsProvider:list
secretsProviderConnection:user	externalSecret:list
\.


--
-- Data for Name: scheduled_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scheduled_job" ("id", "name", "taskType", "payload", "kind", "cronExpression", "timezone", "intervalSeconds", "fireAt", "enabled", "nextRunAt", "lastFiredAt", "maxAttempts", "createdAt", "updatedAt", "recurrenceUnit", "recurrenceSize", "misfirePolicy", "misfireGraceSeconds", "ownerType", "ownerId", "ownerMemberId", "orphanedAt", "concurrencyLimit", "timeoutSeconds") FROM stdin;
\.


--
-- Data for Name: scheduled_task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scheduled_task" ("id", "jobId", "taskType", "payload", "scheduledFor", "runAt", "status", "attempts", "maxAttempts", "claimedBy", "leaseExpiresAt", "leaseEpoch", "startedAt", "finishedAt", "errorMessage", "createdAt", "dispatchedAt", "missedAfter", "timeoutSeconds") FROM stdin;
\.


--
-- Data for Name: workflow_suggestion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_suggestion" ("id", "workflowId", "projectId", "backgroundUserId", "expectedBaseline", "state", "closedReason", "closedAt", "payload", "createdAt", "updatedAt", "resultKind", "appliedVersionId", "appliedChecksum", "appliedAction", "appliedActorId") FROM stdin;
\.


--
-- Data for Name: self_healing_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."self_healing_result" ("id", "workflowId", "projectId", "backgroundUserId", "outcome", "summary", "report", "completedAt", "executionId", "suggestionId", "usage", "dismissedAt", "dismissedById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
chat.access.enabled	false	t
userManagement.authenticationMethod	email	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5wTmpuN1R3SENRUEFoRW5HZmNHcFpFODF1bGJPcElJVmdMTWg1VXZjTzMrdE53ZW45ZE9yeVNDdTVzeUV3MzJ3XG44bEJad1M1bHRaT0NvdE1kTWhKb0lYRzFqejM5RVlMeDIxdWJiajUxUkVsYmFkK0d4M1d6YkRHQWxpdHpBZlNUXG5tYnRidWI0dlNaY3JWV1BzTjdEY2Q0WnNVRGNwQ0wvMWhpQkp0RDNUcDlNMFA3RG14MkdkazZ5eENOVlU5eUt4XG4wcXZKOFlSYlZ1SUMrbmNWM3d4eWxlUGtLazJ4UHZ6Z1hNdTduWTd3SGZzSTNUdi9uYzF0WFBKNWU0cE0vTHZpXG5uZE5zb2RoTThtMzJ2R1NGTHRrOGI3Y1JSWUJ1M0FMMXpvc09OeSt0QWoxeHVsdVN6VGY2UjJFelVLNnZjWU1QXG5yZkcyclc4VzlUK2Jtcis0VmRIWTNRPT18fFUyRnNkR1ZrWDE4blc0dXgyaHJ2bkdJUW1sandpN2dhWTRQL3NnXG5xb3RwSG1oTnVEazV1K3UzNUJJQkxGelFQOGcwUjBmSm1qNXlueUx3TmNyQWJscXdVVm1DZm9uNldlRlEzZHczXG5NWXgxRE5pQUY5WU1JYjRCalgvdnNYdVNGcEdIenV5cXA2VndLRXNCeHN3dVR1ZGZEV0dTWTNuQnlTNnZ2bjB0XG5TajFpZU5SVGNEV1lwV2gwcW9ZeElxbWVlWXQ3WVVxOVdiV0VLaERFR0NYSWVoSS9YaVQrYXR5eFh3ZHp3Tm9mXG4rb0lqeVBQOWw3MWNaaUlvampscFBqR2dxeWV3dExTQUw0NWhOQjFWWEYyOXJ0cUFDeFhud0pNbkhFMXVtZUZEXG5XcXhNZDZ3ekxzeWMyUTM0eXJCdVhVZjFuVmNOVkVjbGpVcG1XWldseXZoVkZ6VWhrZFNiSmxHNWNkbTg3cWp1XG53KzBNSnZ0ZEJJeTdSNFlFcCtIeENnTGNMUkx3RTMvSUlUQnVaS2RtemhBbjFWeWtBZnBtWmhZMjBkQXJnSnpuXG5UYmJFWW0rWVFyQytpMjM5NWxqcHJ3QXpFcVVwdkJUcjFCWFg2Mi80UXUxU01qTXpMSFpUT2ZmRHJBYWgwRlJSXG4rc2ZjQkJCZk1jaHJyZWUzV1l3NzNud052cUttZ1FBQ1R6VjR0S21VSW5PdHR2ZitpK1VubnZGNkZQbnord0lqXG4rT3RYbWVWTC8rdEZIUXh6QWJ4N3dwdklHMmdrSHhsLytSRjlPYzZyRTc4ejgwbkgzcWdSdmY5V3NQS0ZhYzk2XG5QQjZVQ0FNWnhlYU9DUlY0bXJKTzU5cC93TkFCZk5iOGhWZ0N6WHJBUWo3QkFSNmNybnhDWUl5ejMzejJFUzNyXG41RTVSY2Q5QnVYelI5QTVoNDhWbXZ3eVdsdmlSVG4rV2NlQ0o5aXlpQS9TRU9aR1VUTDFkcHE5MTdxQzZmazZzXG4vTkNEQkp4MEJUUDFpYldZSEszOTVhdXhodXBmYlJ4QUh1Ri9YZ1V4cENESlczRzc3Yk0wU1A0NnpiNTdkVmdJXG5Vc2xvVlVPT1JHajhVUlRaWUl1Um14Y3dZVEtmakZsQVlybnk2ZlRTMC9TOHNFOTBnRU1pMWM5cWlnQzlsaVRpXG4wZ3hmVnpkRFVtdHJaS25ib0NoRExnbmVaazRQY2xCVk14Q3dHWklIK1lXNk1weU9OYVdZc3VQRTN4RHBueWxYXG5EeCtGS1FwQnAxQlgyQjZUc0NDYlI5dzhlcWJzTUx3Q21YSjVqVDg4QW1vZ0xVMjV3VGZCWEFMK0FTb2NHZjhkXG41V21tUGVoMStQMFpUL0p3d3ZzRDl0bG0xZDErdFMzNGNUMXBlTnZVOWdlUnlWSVhLcnlMcEh1cytwRFJtdHVVXG5US1RwZitkMWRaM0RPeWNSdUR6cGwwenBWMUVKcVROR3ZkTFk0aTllRFZUSHdXWGxBVzdpcjVaWWpvbk9jU08rXG5tRlFMVXZSYitPK2taNFZraCtBbjBCN2tPaXVoM2dnSk9SbW1aSXBzdVFnMEZRSGJLbXNZNzFTTks1T1Y4OVowXG5pUlJnQnN1RU1MNHpRNkRhVDBLZmdKV3JRamlKNnowUWMxNlRTUFJ4Mm9raUdidnAzSlhpQVpkREsrcFFicnQvXG5WYnRHcXRhU1VmUDMyd2Q2WFdUc0RQQXdtdmdVZlNGT0k0NjB3UHBjYWxSYjJZRUJQYlZJWndrK2NJWmN2bzFHXG4vUXRoK3pqNGZ4M1RWVkUvZjZRSThhWFdxdUlDbDZ1Z0hQQk5TVFpKd0trVVN6U3B6eXk1Vkc1c29Ia2FqM1JBXG56Q1plVTkrYWdUcjZ3djZ2WlAvQU01TW1qRjUycG1IVmUvN2tqdUxqYkNYbW9VTENla0liN2FQdUt5SXJDWUVOXG5PSWpmVk0rK1J5N1l2dHBDRjJxNU5sYUtqWjRMSDlEVGdwa2JpVFdscnM4U2x3Vk1ZbG4rRno0SEwrc2YrVko1XG5uRTFoeVQvaDZ1S1BMR21FVldTQytjRU9LSVJRQVRVbFgrbXNBUHlSQ0JiSWNrbFFjSHJFNUF3ZzRHei9aaitqXG54alRjeDNtZjZLdGd5S1lKR3lWTGpYbWljY1BINEJYa01YcjBteC9md1hhMXI5b0V1OVY2TzRuWFJFNXoxbDBFXG41OThUSnBxcW02bXpqWXJqQkl0YkpaTUpRVDh1aTVXSk5SbW5mOXZkQkMyMDlIV1JoQm9WZ2tSd0l5VEViL3hZXG4ySmlYRURDc0p1S0k1R1pkUSt3N3YxQUdTdk9nRkMxUGlMeUxZOS8zOW5WTlR6ZzZrUnlVbm9YcDZTdkNhZnZrXG5BZFNic1BLd29lTkkxTm1kZEZyYktYNUlSRFYvaEhMUitFaXlxc0dEdnA5Sk9QaWNSU2RnQStnQVlGVVlmb09pXG43Z2lnbWI5bjVwdjBkUitDTGtNZGo4emJPOXNNM1pweFFWWUdrYk5TMGZTVE82d1hJUVJFa0x0dUdXbW40eEpXXG5XNlNjS0czci9aUktpTXA3OXpHbEgrUnFMdG5CMHVidGx1NDJqdzBiYVRkUTFqRXd0TlJuaVJVNmNTMWdydkFXXG5PdUFObTRxbVhwNUFBUGJxYVdmVUFmd3hLUm9YUkt0Z213eHFSWWxSN3pQOHZvQzJWTHNXR3BUdlJjQk1odkk5XG5qQU5LNm5sVnozT0ZTTGFCY0hINUp2VTJsb01kakQxNmNwd3Z4bW82UFduZ0xuWGJRdlBGN0hGMi9zaHovc2FNXG4wcGNKajF0QnNkcTNUVzhRM0VMcTY4MGJhVjdZVklHeUN1eUtseUZXbE9SZ2h0RlFBUTdpR1N4WjJuYkdYTXdTXG5VYWt4WE03d3E0cVFRSUU0RnBvRjlrTHExRTMwU1daNThLVy9PdnNyQjJtNSsrSDZyWlQvaFA3S2xkNkdCU2xYXG4xVXhaQytOTEwzZlppZmg4RU5xWjlPTkpLZEQzT0xUVDZrMWRRU1JtM2tyT01GbUpKN2tGQnNSRUt4Z25QWU82XG4za3BnbE1sOE9YVWhiZmJVOFpmaGg0UXF0TGtZQjR2NThnb1BYdS9TbWlkNHNVTXc9PXx8QmxITHpFTmthNzJyXG5Ya3FGckRxRzRyUkFUa1RFejEwUGF5ZVVlejlxaWtJU25ZUWxXU0pSSzFDTkN6cjY4VjVCVFJDY3ZoNmE0VWNyXG5LdmhzZHR5bHE5cE1qRmdnRkwyUjY0ZmNNdXBkc1lUQmljbTZSRnova1J2aVZKT1YzVVdRbHF2NmluUGtpMmJoXG55SE9mc0xSNHBrdTJPSzdLZE9VNnNPbW9HMGxmMGlZQkYySFhOb2F1LzRmRmpiNHBadkY1NVZSM2d5VVZHNmd3XG5peXZRWURIRFBFZ0I1QVpxUnBLWjkrMFRhRFhVcVNTa1Zobml2Uk1kM1U3TnRUeDFQcEl3UVhHVENLeXRkWW5MXG5VUk5YZ1BLSzRuVFhiU29tOHlIM3Y0RktVR0NPdXRUNmVhUERlcmdKNy9iU0M5dGtpRGJoR2hMSDlWVkxSZXZWXG5qWlg1clpQdm5RPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
SQpg5tCQ2ypZtrfS	EwqGLVt7WaE5lrdY	credential:owner	2026-10-26 14:48:07.248+00	2026-10-26 14:48:07.248+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
EfBcINeKMWXU3GeQ	EwqGLVt7WaE5lrdY	workflow:owner	2026-10-26 14:41:21.174+00	2026-10-26 14:41:21.174+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt", "runningInstanceId", "cancelRequested", "workflowVersionId", "evaluationConfigId", "evaluationConfigSnapshot", "collectionId") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs", "runIndex") FROM stdin;
\.


--
-- Data for Name: token_exchange_jti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."token_exchange_jti" ("jti", "expiresAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_key_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key_source" ("id", "type", "config", "status", "lastError", "lastRefreshedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: trusted_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key" ("sourceId", "kid", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_source" ("id", "name", "type", "issuer", "managedBy", "status", "lastError", "lastCheckedAt", "configVersion", "config", "createdAt", "updatedAt", "metadata", "discoveryClaimedAt", "discoveryClaimToken") FROM stdin;
n8n-internal	n8n	oauth2	https://n8n-JeremyHz.onrender.com	system	healthy	\N	2026-10-27 00:30:44.664+00	1	U2FsdGVkX1+vdMVm3kroKJofyyVEQFlEkxEiNOkij7OZfKeXbuc9cXhJr3MywYPnKU2Y3tpyK8MzzQdT3VFl/19R99iQGnDvFGb2LMRdONzg1t963FuiWn5TOCGMCtEF84UkClkTJnlAJ1SlXAtlOm8dTf+z3ydVd8ZlGqQWHC5eMfxb+5i7n/YFiuCv40mliTXNo0KtKYNaydRX9Sfup/5s6K5X7MpKOPeRNFD7YKK6uxooFyRSLqh0cFTw2nCB0+opLeu5XwJ/xq3acCfJVonO6Hc9DGlLiiUVrL5tkFV3BejkVygmLUWgwesaDbRwMRyUw0GAenFiurW9JDJj6gLX+ikRmQajLk3gSBJlF13DROocnzpipZNyXPRQFTpxesyf5vl1uRV43BDJbbvXAVsCMSCe2IDU3Egjlc+C/pK/ZfarJq7OzmfBrvcj1viEjaW1bE6R0wCB5CXOPV9qHxQJvnuASER0swjQFpOLlcFJCmNYooNtJPXg2CVajxLtJiZ8lIoiSYTVOO6a6g2KY7AEAfhFEQEsQweQ+WEtvn6vokvGqbgFFBqnZK794sWPImTkn048rzWJQgWTG5XE+ZazDLh+/x/wrP2IRdJehpWtcFzmmVIlVVHjAtCaxheSmn2Mw/cHewelSH0i6ezna8DNbVF1jmCEGA/s6sOIJAJUzKwhUv4WzxCVVoXb7tzeZUDZ9Kw+0Jcv8DgmMby+K4m0W0RF/DpV3PA4xBwkfFKu1nT+KkBzCOrRur7+QDQQrjI87Twyl0US8gmN5MYSdLYSq2rwukMAkNav7eWWAihchSk4TTpYr+6fi3nKSJFtK4qwa8V6ZK9loD2XJbpJcw6/KxVAeVph3TIXV3naFxQ5CVYyO1HsM0HRLgb1vLzVUl0jg6UY8fV2VvwitlYeF1o4S265vNQ6AxZrnUdTHl1aIp0u72TFcwd5pZWr0oz2K6ExNAz3Kr19zQqlq+HGKaXd1IRnqZKIEdYK2E9nijs=	2026-10-26 13:17:41.346+00	2026-10-27 00:30:44.664+00	{"version":1,"documents":[{"kind":"oauth2-authorization-server","fetchedAt":"2026-10-27T00:30:41.093Z","document":{"issuer":"https://n8n-JeremyHz.onrender.com","jwks_uri":"https://n8n-JeremyHz.onrender.com/rest/.well-known/jwks.json","authorization_endpoint":"https://n8n-JeremyHz.onrender.com/mcp-oauth/authorize","token_endpoint":"https://n8n-JeremyHz.onrender.com/mcp-oauth/token","registration_endpoint":"https://n8n-JeremyHz.onrender.com/mcp-oauth/register","revocation_endpoint":"https://n8n-JeremyHz.onrender.com/mcp-oauth/revoke","response_types_supported":["code"],"grant_types_supported":["authorization_code","refresh_token"],"token_endpoint_auth_methods_supported":["none","client_secret_post","client_secret_basic"],"code_challenge_methods_supported":["S256"],"authorization_response_iss_parameter_supported":true,"scopes_supported":["workflow:read","workflow:write","workflow:execute","execution:read","agent:read","agent:write","agent:execute","credential:read","dataTable:read","dataTable:write","project:read","project:write","tag:read","communityPackage:install","aiPreference:read","aiPreference:write"]}},{"kind":"jwks","fetchedAt":"2026-10-27T00:30:41.093Z","url":"https://n8n-JeremyHz.onrender.com/rest/.well-known/jwks.json","keys":[{"kid":"pmQjeb6VQKr3ZYqI","kty":"EC","use":"sig","alg":"ES256","crv":"P-256","x":"oKEyQqr9e6_vqwxmh1G2gOqAV6PlAckJNero_W411zg","y":"jiuWV1_kKD0-suQbzuxFFicFXmsrasvmbnfC08W_ZnU"}]}]}	\N	\N
\.


--
-- Data for Name: trusted_source_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_source_identity" ("sourceId", "subject", "userId", "provenance", "status", "lastSeenAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: type_availability_policy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."type_availability_policy" ("id", "kind", "rules", "version", "updatedBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: type_availability_policy_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."type_availability_policy_scope" ("id", "kind", "projectId", "defaultAction", "version", "updatedBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: type_availability_policy_attachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."type_availability_policy_attachment" ("scopeId", "policyId", "priority", "isFloor", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience", "lastUsedAt") FROM stdin;
\.


--
-- Data for Name: user_favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_favorites" ("id", "userId", "resourceId", "resourceType") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_builder_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_builder_session" ("id", "workflowId", "userId", "messages", "previousSummary", "createdAt", "updatedAt", "activeVersionCardId", "resumeAfterRestoreMessageId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt", "publishedVersionId") FROM stdin;
75	EfBcINeKMWXU3GeQ	11	nodeType	n8n-nodes-base.scheduleTrigger	{"nodeId":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","nodeVersion":1.4}	2	2026-10-26 15:15:05.177+00	\N
76	EfBcINeKMWXU3GeQ	11	nodeType	n8n-nodes-base.airtable	{"nodeId":"684f4356-62b3-4a32-b1af-e17950ba35e8","nodeVersion":2.2}	2	2026-10-26 15:15:05.177+00	\N
77	EfBcINeKMWXU3GeQ	11	credentialId	SQpg5tCQ2ypZtrfS	{"nodeId":"684f4356-62b3-4a32-b1af-e17950ba35e8","nodeVersion":2.2}	2	2026-10-26 15:15:05.177+00	\N
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description", "nodeGroups") FROM stdin;
265ca7e6-d3af-47a7-9bf7-1532fdfbab42	EfBcINeKMWXU3GeQ	Jeremy Hz	2026-10-26 14:46:30.177+00	2026-10-26 14:46:30.177+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vrrTmzIDDecrbinU","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N	[]
3737227c-af00-442e-b4a9-146ecd3de24b	EfBcINeKMWXU3GeQ	Jeremy Hz	2026-10-26 14:48:51.722+00	2026-10-26 14:48:51.722+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"upsert","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create or update a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create or update a record","type":"main","index":0}]]}}	\N	t	\N	[]
33d0ad3d-6460-4b1c-892c-88317a6c45d4	EfBcINeKMWXU3GeQ	Jeremy Hz	2026-10-26 15:01:57.976+00	2026-10-26 15:01:57.976+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"upsert","base":{"__rl":true,"value":"appwCekjl5LFtOTyQ","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ"},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"autoMapInputData","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create or update a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create or update a record","type":"main","index":0}]]}}	\N	f	\N	[]
8f899d94-6ef6-4e7c-8eaa-315b52f648f9	EfBcINeKMWXU3GeQ	Jeremy Hz	2026-10-26 14:46:01.285+00	2026-10-26 14:46:01.285+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vrrTmzIDDecrbinU","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N	[]
210b5445-945b-4c50-958e-ec595abfab21	EfBcINeKMWXU3GeQ	Jeremy Hz	2026-10-26 15:01:28.43+00	2026-10-26 15:01:28.43+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"upsert","base":{"__rl":true,"value":"appwCekjl5LFtOTyQ","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ"},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":null,"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create or update a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create or update a record","type":"main","index":0}]]}}	\N	t	\N	[]
521c3081-1d78-47df-bc8c-aad183eafea0	EfBcINeKMWXU3GeQ	Jeremy Hz	2026-10-26 15:01:44.691+00	2026-10-26 15:01:44.691+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"upsert","base":{"__rl":true,"value":"appwCekjl5LFtOTyQ","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ"},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create or update a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create or update a record","type":"main","index":0}]]}}	\N	t	\N	[]
952b5ff3-06b8-4f80-ae67-42575b0a94ee	EfBcINeKMWXU3GeQ	Jeremy Hz	2026-10-26 15:05:07.091+00	2026-10-26 15:05:07.091+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appwCekjl5LFtOTyQ","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ"},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"autoMapInputData","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N	[]
cb4030fb-19f9-42bd-bcad-eadeb36ee29a	EfBcINeKMWXU3GeQ	Jeremy Hz	2026-10-26 15:07:38.378+00	2026-10-26 15:07:38.378+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appwCekjl5LFtOTyQ","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ"},"table":{"__rl":true,"value":"tblUZQGiY3QMfIcKj","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ/tblUZQGiY3QMfIcKj"},"columns":{"mappingMode":"autoMapInputData","value":null,"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N	[]
f51b2b51-eb64-45dd-8c68-973285fc1e63	EfBcINeKMWXU3GeQ	Jeremy Hz	2026-10-26 15:07:53.085+00	2026-10-26 15:07:53.085+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appwCekjl5LFtOTyQ","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ"},"table":{"__rl":true,"value":"tblUZQGiY3QMfIcKj","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ/tblUZQGiY3QMfIcKj"},"columns":{"mappingMode":"autoMapInputData","value":{},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Critical","value":"Critical"},{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Project Type","displayName":"Project Type","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Model Training","value":"Model Training"},{"name":"LLM Application","value":"LLM Application"},{"name":"Data Pipeline","value":"Data Pipeline"},{"name":"Research","value":"Research"},{"name":"Deployment / MLOps","value":"Deployment / MLOps"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Project Lead","displayName":"Project Lead","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Resource Allocations","displayName":"Resource Allocations","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Overall Progress","displayName":"Overall Progress","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Next Milestone Due","displayName":"Next Milestone Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Weekly Hours Allocated","displayName":"Total Weekly Hours Allocated","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N	[]
68f46f8e-6b00-4500-b350-68b3ae00514e	EfBcINeKMWXU3GeQ	Jeremy Hz	2026-10-26 15:15:01.138+00	2026-10-26 15:15:01.138+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"53bdf3a4-24a0-4aa7-b3a3-4bd19151ffd7","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"appwCekjl5LFtOTyQ","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ"},"table":{"__rl":true,"value":"tblUZQGiY3QMfIcKj","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/appwCekjl5LFtOTyQ/tblUZQGiY3QMfIcKj"},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Critical","value":"Critical"},{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Project Type","displayName":"Project Type","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Model Training","value":"Model Training"},{"name":"LLM Application","value":"LLM Application"},{"name":"Data Pipeline","value":"Data Pipeline"},{"name":"Research","value":"Research"},{"name":"Deployment / MLOps","value":"Deployment / MLOps"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Project Lead","displayName":"Project Lead","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Resource Allocations","displayName":"Resource Allocations","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Overall Progress","displayName":"Overall Progress","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Next Milestone Due","displayName":"Next Milestone Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Weekly Hours Allocated","displayName":"Total Weekly Hours Allocated","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[224,0],"id":"684f4356-62b3-4a32-b1af-e17950ba35e8","name":"Create a record","credentials":{"airtableTokenApi":{"id":"SQpg5tCQ2ypZtrfS","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	t	\N	[]
\.


--
-- Data for Name: workflow_publication_outbox; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publication_outbox" ("id", "workflowId", "publishedVersionId", "status", "errorMessage", "createdAt", "updatedAt", "reason") FROM stdin;
\.


--
-- Data for Name: workflow_publication_retry_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publication_retry_state" ("workflowId", "targetVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_publication_trigger_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publication_trigger_status" ("workflowId", "nodeId", "versionId", "status", "errorMessage", "createdAt", "updatedAt", "triggerKind") FROM stdin;
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publish_history" ("id", "workflowId", "versionId", "event", "userId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_published_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_published_version" ("workflowId", "publishedVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_review_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request" ("id", "projectId", "state", "decision", "title", "description", "createdById", "updatedById", "closedById", "approvedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_review_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_activity" ("id", "workflowReviewRequestId", "type", "typeVersion", "data", "createdById", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_review_activity_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_activity_comment" ("id", "activityId", "createdById", "body", "history", "updatedAt", "deletedAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_review_request_authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request_authors" ("workflowReviewRequestId", "userId") FROM stdin;
\.


--
-- Data for Name: workflow_review_request_reviewers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request_reviewers" ("workflowReviewRequestId", "userId") FROM stdin;
\.


--
-- Data for Name: workflow_review_request_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request_workflow" ("id", "workflowReviewRequestId", "workflowId", "workflowVersionId", "baselineVersionId") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount", "id", "workflowName") FROM stdin;
3	2026-10-26 14:06:29.73+00	manual_success	lDaxwRGo2xgvrz22	0	1	My workflow
3	2026-10-26 14:33:55.295+00	manual_error	lDaxwRGo2xgvrz22	0	3	My workflow
2	2026-10-26 15:02:26.142+00	manual_error	EfBcINeKMWXU3GeQ	0	6	My workflow 2
1	2026-10-26 15:55:06.929+00	data_loaded	EfBcINeKMWXU3GeQ	1	8	\N
2	2026-10-26 15:55:11.59+00	manual_success	EfBcINeKMWXU3GeQ	0	5	My workflow 2
\.


--
-- Data for Name: workflow_statistics_delta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics_delta" ("id", "workflowId", "name", "rootCountDelta", "createdAt", "workflowName") FROM stdin;
\.


--
-- Data for Name: workflow_suggestion_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_suggestion_activity" ("id", "suggestionId", "action", "author", "createdAt", "updatedAt", "actorId") FROM stdin;
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type", "versioning_status", "lifecycle_configuration", "lifecycle_configuration_generation") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "archived_at", "is_delete_marker", "is_versioned") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: activity_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."activity_event_id_seq"', 1, false);


--
-- Name: agent_message_queue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."agent_message_queue_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: credential_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."credential_dependency_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 10, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: instance_version_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."instance_version_history_id_seq"', 1, true);


--
-- Name: migration_finding_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migration_finding_id_seq"', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 310, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: scheduled_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."scheduled_job_id_seq"', 1, false);


--
-- Name: scheduled_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."scheduled_task_id_seq"', 1, false);


--
-- Name: secrets_provider_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."secrets_provider_connection_id_seq"', 1, false);


--
-- Name: user_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."user_favorites_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_dependency_id_seq"', 77, true);


--
-- Name: workflow_publication_outbox_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publication_outbox_id_seq"', 1, false);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publish_history_id_seq"', 1, false);


--
-- Name: workflow_review_activity_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_review_activity_comment_id_seq"', 1, false);


--
-- Name: workflow_review_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_review_activity_id_seq"', 1, false);


--
-- Name: workflow_statistics_delta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_delta_id_seq"', 10, true);


--
-- Name: workflow_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_id_seq"', 9, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict GouI2F91iUcK4YtD6M7LMnAvAxhK6Pqr1JxljURfEpYe4ip2K64V2V4EAuWiww8

RESET ALL;
