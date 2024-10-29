local inst_Message = api_net.Message.new()
inst_Message:setType(os_constants.MESSAGE_HELLO)
inst_Message:setNetwork("default")
inst_Message:setSender(os.getComputerID())

if inst_Message:broadcastAll() then

else
    print "Failed to broadcast"
end