import ballerina/log;

public function main() returns error? {
    do {
        log:printInfo("Hello Devant");
    } on fail error e {
        log:printError("Error occurred", 'error = e);
        return e;
    }
}
