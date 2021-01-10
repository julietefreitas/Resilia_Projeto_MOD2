// you will need to install via 'npm install jsonwebtoken' or in your package.jsonwebtoken


geradorDashboard(id){
    var jwt = require("jsonwebtoken");

    var METABASE_SITE_URLL = "localhost:3000"
    var METABASE_SECRET_KEY = "******"

    var payload = {
        resource: { dashboard: 1},
        params: {
            "id": "12946-y78-912d-1cxa-uc21"
        },
        exp: Math.round(Date.now() / 1000)+ (10*60) // 10 minutos expira
    };
    var token = jwt.sign(payload, METABASE_SECRET_KEY);

    var iframeUrl = METABASE_SITE_URL + "/embed/dashboard/" + token + "#theme=night&bordered=true&titled=true";

    return {'url': iframeUrl}
}
