// AUTO-GENERATED FILE.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/http;

listener http:Listener ep0 = new (80, config = {host: "petstore.openapi.io"});

service /v1 on ep0 {
    resource function get pets(http:Caller caller, http:Request request) returns error? {
    }
    resource function post pets(http:Caller caller, http:Request request) returns error? {
    }
    resource function get pets/[string petId](http:Caller caller, http:Request request) returns error? {
    }
}
