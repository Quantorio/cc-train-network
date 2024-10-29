function os_url(url)
    if url:sub(-4)~=".lua" then url=url+".lua" end
    return "https://github.com/Quantorio/cc-train-network/raw/refs/heads/master/" .. url
end

STATUS_HAS_TRAIN = 1;
STATUS_NO_TRAIN = 0;

MESSAGE_PREFIX = "intranet:"
MESSAGE_RELEASE_TRAIN = "free_train"
MESSAGE_STATUS = "status"
MESSAGE_REBOOT = "reboot"
MESSAGE_HELLO = "hello"
MESSAGE_CONTROL_ANNOUNCE = "control_pulse"

function prefix(message)
    return MESSAGE_PREFIX + message
end
function isTrainNet(message)
    return message:sub(#MESSAGE_PREFIX) == MESSAGE_PREFIX
end
function remove_prefix(message)
    return message:sub(-#message+#MESSAGE_PREFIX)
end