-- 027: sending through an SMTP mailbox (Google Workspace) keeps under its
-- daily limit, so the queue counts what that mailbox sent in the last 24 hours.
--
-- Additive: one index. Nothing existing changes.

CREATE INDEX IF NOT EXISTS mkt_messages_smtp_sent_idx ON mkt_messages (sent_at) WHERE provider = 'smtp';
