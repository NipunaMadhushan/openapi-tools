import ballerina/http;

listener http:Listener ep0 = new (80, config = {host: "petstore.openapi.io"});

service /v1 on ep0 {
    resource function get .() returns Pets {
    }
    # List all pets
    #
    # + 'limit - How many items to return at one time (max 100)
    # + return - An paged array of pets or unexpected error
    resource function get pets(int? 'limit) returns Pets|http:Response {
    }
    # Create a pet
    #
    # + return - Null response or unexpected error
    resource function post pets() returns http:Created|http:Response {
    }
    # Info for a specific pet
    #
    # + petId - The id of the pet to retrieve
    # + return - Expected response to a valid request or unexpected error
    resource function get pets/[string petId]() returns Pets|http:Response {
    }
    resource function get admin/api/'2021\-10/customers/[string customer_idJson](string? fields) returns  http: Ok|error {
        if !customer_idJson.endsWith(".json") {
            return error("bad URL");
        }
        string customer_id = customer_idJson.substring(0, customer_idJson.length() - 4);
    }
}
