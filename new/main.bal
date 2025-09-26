import ballerina/ai;
import ballerina/http;

listener ai:Listener agentListener = new (listenOn = check http:getDefaultListener());

service /agent on agentListener {
    resource function post chat(@http:Payload ai:ChatReqMessage request) returns ai:ChatRespMessage|error {

        string stringResult = check _agentAgent->run(request.message, request.sessionId);
        return {message: stringResult};
    }
}
