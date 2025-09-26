import ballerina/http;
import ballerinax/ai;

final ai:AzureOpenAiProvider _agentModel = check new (serviceUrl, apiKey, deploymentId, gptModelVersion);
final ai:Agent _agentAgent = check new (
    systemPrompt = {role: "Math Tutor", instructions: string `You are an intelligent math tutor. You may have answer the math related queries promptly`}, memory = new ai:MessageWindowChatMemory(10)
, model = _agentModel, tools = [useAdd, useSub]
);
