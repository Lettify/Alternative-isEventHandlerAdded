-- Códigozinho de KronoS Lettify

local _Events = {}
_addEventHandler = addEventHandler
_removeEventHandler = removeEventHandler

function addEventHandler(eventName, attachedTo, theFunction, propagate, priority)
	local stt = _addEventHandler(eventName, attachedTo, theFunction, propagate, priority)
	if stt then
		table.insert(_Events, {eventName = eventName, attachedTo = attachedTo, theFunction = theFunction})
		return true
	else
		error('HOUVE UM IMPREVISTO AO EXECUTAR A FUNÇÃO, CHEQUE A LINHA ACIMA', 2)
	end
	return false
end

function removeEventHandler(eventName, attachedTo, theFunction)
	local stt = _removeEventHandler(eventName, attachedTo, theFunction)
	if (stt) then
		for i, evento in ipairs(_Events) do
			if (evento.eventName == eventName and evento.attachedTo == attachedTo and evento.theFunction == theFunction) then
				table.remove(_Events, i)
				return true
			end
		end
	else
		error('HOUVE UM IMPREVISTO AO EXECUTAR A FUNÇÃO, CHEQUE A LINHA ACIMA', 2)
	end
	return false
end

function isEventHandlerAdded(eventName, attachedTo, theFunction)
	for i, evento in ipairs(_Events) do
		if (evento.eventName == eventName and evento.attachedTo == attachedTo and evento.theFunction == theFunction) then
			return true
		end
	end
	return false
end