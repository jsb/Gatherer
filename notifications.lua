-- Inspired by python logging
--

GATHERER_NOTIFICATION_PREFIX = 'Gatherer: '


Gatherer_ENotificationType = {
	error = 10,
	warning = 20,
	info = 30, sending = 23, receiving = 27,
	debug = 40
}


GATHERER_NOTIFICATION_COLORS = {
	[Gatherer_ENotificationType.error] = {0.9, 0, 0},
	[Gatherer_ENotificationType.warning] = {0.9, 0.9, 0},
	[Gatherer_ENotificationType.info] = {0.235, 0.78, 0.9},
	[Gatherer_ENotificationType.sending] = {0.11, 0.32, 0.9},
	[Gatherer_ENotificationType.receiving] = {0.11, 0.9, 0.11},
	[Gatherer_ENotificationType.debug] = {1.0, 0.5, 0.25},
}


function Gatherer_ChatNotify(str, notificationType)
	notificationType = notificationType or Gatherer_ENotificationType.info

	-- by default print info messages and more serious
	local notificationLevel = Gatherer_ENotificationType.info
	if Gatherer_Settings.debug then
		notificationLevel = Gatherer_ENotificationType.debug
	end

	if notificationType > notificationLevel then
		return
	end

	local prefix = GATHERER_NOTIFICATION_PREFIX
	if notificationType == Gatherer_ENotificationType.sending then
		prefix = prefix..'> '
	end
	if notificationType == Gatherer_ENotificationType.receiving then
		prefix = prefix..'< '
	end

	-- usually DEFAULT_CHAT_FRAME is the default "General" chat window
	if ( DEFAULT_CHAT_FRAME ) then
		DEFAULT_CHAT_FRAME:AddMessage(
			prefix..str, unpack(GATHERER_NOTIFICATION_COLORS[notificationType])
		);
	end
end

