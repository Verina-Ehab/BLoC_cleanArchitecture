// ! 1
// Features: are the functions that my app will provide
// every feature has (data, domain, presentation) layers


// ! 2
// DOMAIN: entities, repository, use_case
    // ENTITY: it's a layer seems like model layer(at data_source) but won't contaIn constructors like from/to json
        // but will contain equatable.
        //(It will check if the new data from the internet equal to local data I saved lately)
        //(If different will change local data to new data)
    // REPOSITORY: it will connect between DATA and DOMAIN layer
        // and contains functions that we'll implement in data_repo_layer
    // USE_CASE: contains what my feature/function will do in my case(posts only) it will be
        // add, update, delete

// DATA: model, repository, data_source/API
    // DATA_SOURCE: web_services/API layer/ http requests
    // MODEL: layer to handel my json (convert from json to dart_object/map and vice versa..)
    // REPOSITORY: container to contain data I get from data_source layer
        // and implement functions in (domain repo)

// PRESENTATION: business_logic(Bloc), screens, widgets
    // BUSINESS_LOGIC: contains my bloc
        // in my case i seperated my use_cases to 2 blocs
        // the first one to *****get_refresh***** posts
        // the second one to *****add_delete_update***** posts
        // It could be divided it into different way :)
            // every bloc contains (event -> state -> bloc)    #the flow willbe like this
            // in my case will contain
            // event: (getAllPosts, refresh) (Add, update, delete)
            // state: (initial, error, loading, loaded) (initial, error, loading, message_IFSUCCESS)    #I think this like enum
            // bloc: In it I will handel every event with states, I mean that 
            // (if this event happen, then return/emit specific **state_and_action** both)
    // Screens:
        // I will handel in it some actions/functions like
        // When I pressed this button do this...


// ! 3
// Flow of writting code will be like the following:
    // DOMAIN(entities, repository, use_case)
    // DATA(model, repository, data_source/API)
    // PRESENTATION(business_logic/Bloc, screens, widgets)


// ! 4
// Videos flow was like this
    // 1. Handle pubspec.yaml -> packages, assets,...
    // 2. Set File Structure
    // 3. Domain_Entity
    // 4. Domain_Repo
    // 5. Domain_UseCases

    // 6. Data_Model
    // 7. Data_Repo
    // 8. Data_WebServices

    // 9. Presentation_Bloc
    // 10. Presentation_Screens



// need to commit

