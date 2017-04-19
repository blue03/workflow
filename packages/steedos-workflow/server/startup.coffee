Meteor.startup ->
	if Meteor.settings.cron?.mailqueue_interval
		MailQueue.Configure
			sendInterval: Meteor.settings.cron.mailqueue_interval
			sendBatchSize: 10
			keepMails: false

	if Meteor.settings.cron?.sms?.smsqueue_interval
		SMSQueue.Configure
			sendInterval: Meteor.settings.cron.sms.smsqueue_interval
			sendBatchSize: 10
			keepSMS: true
			accessKeyId: Meteor.settings.cron.sms.accessKeyId
			accessKeySecret: Meteor.settings.cron.sms.accessKeySecret

	if Meteor.settings.cron?.webhookqueue_interval
		WebhookQueue.Configure
			sendInterval: Meteor.settings.cron.webhookqueue_interval
			sendBatchSize: 10
			keepWebhooks: true