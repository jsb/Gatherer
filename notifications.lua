-- Inspired by python logging
--


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
	-- usually DEFAULT_CHAT_FRAME is the default "General" chat window
	if ( DEFAULT_CHAT_FRAME ) then
		DEFAULT_CHAT_FRAME:AddMessage(
			GATHERER_NOTIFICATION_PREFIX..str, unpack(GATHERER_NOTIFICATION_COLORS[notificationType])
		);
	end
end

