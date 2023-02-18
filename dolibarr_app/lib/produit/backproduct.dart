// Postman Echo is service you can use to test your REST clients and make sample API calls.
// It provides endpoints for `GET`, `POST`, `PUT`, various auth mechanisms and other utility
// endpoints.
//
// The documentation for the endpoints as well as example responses can be found at
// [https://postman-echo.com](https://postman-echo.com/?source=echo-collection-app-onboarding)
// To parse this JSON data, do
//
//     final digestAuthSuccess = digestAuthSuccessFromJson(jsonString);
//     final basicAuth = basicAuthFromJson(jsonString);
//     final oAuth10VerifySignature = oAuth10VerifySignatureFromJson(jsonString);
//     final hawkAuth = hawkAuthFromJson(jsonString);
//     final setCookies = setCookiesFromJson(jsonString);
//     final getCookies = getCookiesFromJson(jsonString);
//     final deleteCookies = deleteCookiesFromJson(jsonString);
//     final requestHeaders = requestHeadersFromJson(jsonString);
//     final responseHeaders = responseHeadersFromJson(jsonString);
//     final responseStatusCode = responseStatusCodeFromJson(jsonString);
//     final delayResponse = delayResponseFromJson(jsonString);
//     final timestampValidity = timestampValidityFromJson(jsonString);
//     final transformCollectionFromFormatV1ToV2 = transformCollectionFromFormatV1ToV2FromJson(jsonString);
//     final transformCollectionFromFormatV2ToV1 = transformCollectionFromFormatV2ToV1FromJson(jsonString);

import 'dart:convert';
const api =
'http://dolibarrproject-001-site1.ftempurl.com/htdocs/api/index.php/products';


List<DigestAuthSuccess> digestAuthSuccessFromJson(String str) => List<DigestAuthSuccess>.from(json.decode(str).map((x) => DigestAuthSuccess.fromJson(x)));

String digestAuthSuccessToJson(List<DigestAuthSuccess> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

BasicAuth basicAuthFromJson(String str) => BasicAuth.fromJson(json.decode(str));

String basicAuthToJson(BasicAuth data) => json.encode(data.toJson());

OAuth10VerifySignature oAuth10VerifySignatureFromJson(String str) => OAuth10VerifySignature.fromJson(json.decode(str));

String oAuth10VerifySignatureToJson(OAuth10VerifySignature data) => json.encode(data.toJson());

HawkAuth hawkAuthFromJson(String str) => HawkAuth.fromJson(json.decode(str));

String hawkAuthToJson(HawkAuth data) => json.encode(data.toJson());

SetCookies setCookiesFromJson(String str) => SetCookies.fromJson(json.decode(str));

String setCookiesToJson(SetCookies data) => json.encode(data.toJson());

GetCookies getCookiesFromJson(String str) => GetCookies.fromJson(json.decode(str));

String getCookiesToJson(GetCookies data) => json.encode(data.toJson());

DeleteCookies deleteCookiesFromJson(String str) => DeleteCookies.fromJson(json.decode(str));

String deleteCookiesToJson(DeleteCookies data) => json.encode(data.toJson());

RequestHeaders requestHeadersFromJson(String str) => RequestHeaders.fromJson(json.decode(str));

String requestHeadersToJson(RequestHeaders data) => json.encode(data.toJson());

ResponseHeaders responseHeadersFromJson(String str) => ResponseHeaders.fromJson(json.decode(str));

String responseHeadersToJson(ResponseHeaders data) => json.encode(data.toJson());

ResponseStatusCode responseStatusCodeFromJson(String str) => ResponseStatusCode.fromJson(json.decode(str));

String responseStatusCodeToJson(ResponseStatusCode data) => json.encode(data.toJson());

DelayResponse delayResponseFromJson(String str) => DelayResponse.fromJson(json.decode(str));

String delayResponseToJson(DelayResponse data) => json.encode(data.toJson());

TimestampValidity timestampValidityFromJson(String str) => TimestampValidity.fromJson(json.decode(str));

String timestampValidityToJson(TimestampValidity data) => json.encode(data.toJson());

TransformCollectionFromFormatV1ToV2 transformCollectionFromFormatV1ToV2FromJson(String str) => TransformCollectionFromFormatV1ToV2.fromJson(json.decode(str));

String transformCollectionFromFormatV1ToV2ToJson(TransformCollectionFromFormatV1ToV2 data) => json.encode(data.toJson());

TransformCollectionFromFormatV2ToV1 transformCollectionFromFormatV2ToV1FromJson(String str) => TransformCollectionFromFormatV2ToV1.fromJson(json.decode(str));

String transformCollectionFromFormatV2ToV1ToJson(TransformCollectionFromFormatV2ToV1 data) => json.encode(data.toJson());

class DigestAuthSuccess {
    DigestAuthSuccess({
        required this.id,
        required this.entity,
        required this.validateFieldsErrors,
        this.importKey,
        required this.arrayOptions,
        this.arrayLanguages,
        this.contactsIds,
        this.linkedObjects,
        this.linkedObjectsIds,
        required this.linkedObjectsFullLoaded,
        required this.canvas,
        this.fkProjet,
        required this.ref,
        this.refExt,
        required this.status,
        this.countryId,
        required this.countryCode,
        this.stateId,
        this.regionId,
        this.barcodeType,
        this.barcodeTypeCoder,
        this.lastMainDoc,
        this.notePublic,
        required this.notePrivate,
        this.totalHt,
        this.totalTva,
        this.totalLocaltax1,
        this.totalLocaltax2,
        this.totalTtc,
        required this.dateCreation,
        this.dateValidation,
        required this.dateModification,
        this.dateCloture,
        this.userAuthor,
        this.userCreation,
        this.userCreationId,
        this.userValid,
        this.userValidation,
        this.userValidationId,
        this.userClosingId,
        this.userModification,
        this.userModificationId,
        required this.specimen,
        required this.label,
        required this.description,
        this.other,
        required this.type,
        required this.price,
        required this.priceTtc,
        required this.priceMin,
        required this.priceMinTtc,
        required this.priceBaseType,
        required this.multiprices,
        required this.multipricesTtc,
        required this.multipricesBaseType,
        required this.multipricesMin,
        required this.multipricesMinTtc,
        required this.multipricesTvaTx,
        required this.pricesByQty,
        required this.pricesByQtyList,
        required this.multilangs,
        this.defaultVatCode,
        required this.tvaTx,
        required this.localtax1Tx,
        required this.localtax2Tx,
        required this.localtax1Type,
        required this.localtax2Type,
        this.lifetime,
        this.qcFrequency,
        this.costPrice,
        required this.pmp,
        required this.seuilStockAlerte,
        required this.desiredstock,
        required this.durationValue,
        required this.durationUnit,
        required this.statusBuy,
        required this.finished,
        this.fkDefaultBom,
        required this.statusBatch,
        required this.batchMask,
        required this.customcode,
        this.url,
        this.weight,
        required this.weightUnits,
        this.length,
        required this.lengthUnits,
        this.width,
        required this.widthUnits,
        this.height,
        required this.heightUnits,
        this.surface,
        required this.surfaceUnits,
        this.volume,
        required this.volumeUnits,
        this.netMeasure,
        this.netMeasureUnits,
        required this.accountancyCodeSell,
        required this.accountancyCodeSellIntra,
        required this.accountancyCodeSellExport,
        required this.accountancyCodeBuy,
        required this.accountancyCodeBuyIntra,
        required this.accountancyCodeBuyExport,
        this.barcode,
        this.fkDefaultWarehouse,
        this.fkPriceExpression,
        this.fkUnit,
        required this.priceAutogen,
        this.isObjectUsed,
        required this.mandatoryPeriod,
        required this.duration,
    });

    String id;
    String entity;
    List<dynamic> validateFieldsErrors;
    dynamic importKey;
    List<dynamic> arrayOptions;
    dynamic arrayLanguages;
    dynamic contactsIds;
    dynamic linkedObjects;
    dynamic linkedObjectsIds;
    List<dynamic> linkedObjectsFullLoaded;
    String canvas;
    dynamic fkProjet;
    String ref;
    dynamic refExt;
    String status;
    dynamic countryId;
    String countryCode;
    dynamic stateId;
    dynamic regionId;
    dynamic barcodeType;
    dynamic barcodeTypeCoder;
    dynamic lastMainDoc;
    dynamic notePublic;
    String notePrivate;
    dynamic totalHt;
    dynamic totalTva;
    dynamic totalLocaltax1;
    dynamic totalLocaltax2;
    dynamic totalTtc;
    DateTime dateCreation;
    dynamic dateValidation;
    DateTime dateModification;
    dynamic dateCloture;
    dynamic userAuthor;
    dynamic userCreation;
    dynamic userCreationId;
    dynamic userValid;
    dynamic userValidation;
    dynamic userValidationId;
    dynamic userClosingId;
    dynamic userModification;
    dynamic userModificationId;
    int specimen;
    String label;
    String description;
    dynamic other;
    String type;
    String price;
    String priceTtc;
    String priceMin;
    String priceMinTtc;
    String priceBaseType;
    List<dynamic> multiprices;
    List<dynamic> multipricesTtc;
    List<dynamic> multipricesBaseType;
    List<dynamic> multipricesMin;
    List<dynamic> multipricesMinTtc;
    List<dynamic> multipricesTvaTx;
    List<dynamic> pricesByQty;
    List<dynamic> pricesByQtyList;
    List<dynamic> multilangs;
    dynamic defaultVatCode;
    String tvaTx;
    String localtax1Tx;
    String localtax2Tx;
    String localtax1Type;
    String localtax2Type;
    dynamic lifetime;
    dynamic qcFrequency;
    dynamic costPrice;
    String pmp;
    String seuilStockAlerte;
    String desiredstock;
    String durationValue;
    String durationUnit;
    String statusBuy;
    String finished;
    dynamic fkDefaultBom;
    String statusBatch;
    String batchMask;
    String customcode;
    dynamic url;
    dynamic weight;
    String weightUnits;
    dynamic length;
    String lengthUnits;
    dynamic width;
    String widthUnits;
    dynamic height;
    String heightUnits;
    dynamic surface;
    String surfaceUnits;
    dynamic volume;
    String volumeUnits;
    dynamic netMeasure;
    dynamic netMeasureUnits;
    String accountancyCodeSell;
    String accountancyCodeSellIntra;
    String accountancyCodeSellExport;
    String accountancyCodeBuy;
    String accountancyCodeBuyIntra;
    String accountancyCodeBuyExport;
    dynamic barcode;
    dynamic fkDefaultWarehouse;
    dynamic fkPriceExpression;
    dynamic fkUnit;
    String priceAutogen;
    dynamic isObjectUsed;
    String mandatoryPeriod;
    String duration;

    factory DigestAuthSuccess.fromJson(Map<String, dynamic> json) => DigestAuthSuccess(
        id: json["id"],
        entity: json["entity"],
        validateFieldsErrors: List<dynamic>.from(json["validateFieldsErrors"].map((x) => x)),
        importKey: json["import_key"],
        arrayOptions: List<dynamic>.from(json["array_options"].map((x) => x)),
        arrayLanguages: json["array_languages"],
        contactsIds: json["contacts_ids"],
        linkedObjects: json["linked_objects"],
        linkedObjectsIds: json["linkedObjectsIds"],
        linkedObjectsFullLoaded: List<dynamic>.from(json["linkedObjectsFullLoaded"].map((x) => x)),
        canvas: json["canvas"],
        fkProjet: json["fk_projet"],
        ref: json["ref"],
        refExt: json["ref_ext"],
        status: json["status"],
        countryId: json["country_id"],
        countryCode: json["country_code"],
        stateId: json["state_id"],
        regionId: json["region_id"],
        barcodeType: json["barcode_type"],
        barcodeTypeCoder: json["barcode_type_coder"],
        lastMainDoc: json["last_main_doc"],
        notePublic: json["note_public"],
        notePrivate: json["note_private"],
        totalHt: json["total_ht"],
        totalTva: json["total_tva"],
        totalLocaltax1: json["total_localtax1"],
        totalLocaltax2: json["total_localtax2"],
        totalTtc: json["total_ttc"],
        dateCreation: DateTime.parse(json["date_creation"]),
        dateValidation: json["date_validation"],
        dateModification: DateTime.parse(json["date_modification"]),
        dateCloture: json["date_cloture"],
        userAuthor: json["user_author"],
        userCreation: json["user_creation"],
        userCreationId: json["user_creation_id"],
        userValid: json["user_valid"],
        userValidation: json["user_validation"],
        userValidationId: json["user_validation_id"],
        userClosingId: json["user_closing_id"],
        userModification: json["user_modification"],
        userModificationId: json["user_modification_id"],
        specimen: json["specimen"],
        label: json["label"],
        description: json["description"],
        other: json["other"],
        type: json["type"],
        price: json["price"],
        priceTtc: json["price_ttc"],
        priceMin: json["price_min"],
        priceMinTtc: json["price_min_ttc"],
        priceBaseType: json["price_base_type"],
        multiprices: List<dynamic>.from(json["multiprices"].map((x) => x)),
        multipricesTtc: List<dynamic>.from(json["multiprices_ttc"].map((x) => x)),
        multipricesBaseType: List<dynamic>.from(json["multiprices_base_type"].map((x) => x)),
        multipricesMin: List<dynamic>.from(json["multiprices_min"].map((x) => x)),
        multipricesMinTtc: List<dynamic>.from(json["multiprices_min_ttc"].map((x) => x)),
        multipricesTvaTx: List<dynamic>.from(json["multiprices_tva_tx"].map((x) => x)),
        pricesByQty: List<dynamic>.from(json["prices_by_qty"].map((x) => x)),
        pricesByQtyList: List<dynamic>.from(json["prices_by_qty_list"].map((x) => x)),
        multilangs: List<dynamic>.from(json["multilangs"].map((x) => x)),
        defaultVatCode: json["default_vat_code"],
        tvaTx: json["tva_tx"],
        localtax1Tx: json["localtax1_tx"],
        localtax2Tx: json["localtax2_tx"],
        localtax1Type: json["localtax1_type"],
        localtax2Type: json["localtax2_type"],
        lifetime: json["lifetime"],
        qcFrequency: json["qc_frequency"],
        costPrice: json["cost_price"],
        pmp: json["pmp"],
        seuilStockAlerte: json["seuil_stock_alerte"],
        desiredstock: json["desiredstock"],
        durationValue: json["duration_value"],
        durationUnit: json["duration_unit"],
        statusBuy: json["status_buy"],
        finished: json["finished"],
        fkDefaultBom: json["fk_default_bom"],
        statusBatch: json["status_batch"],
        batchMask: json["batch_mask"],
        customcode: json["customcode"],
        url: json["url"],
        weight: json["weight"],
        weightUnits: json["weight_units"],
        length: json["length"],
        lengthUnits: json["length_units"],
        width: json["width"],
        widthUnits: json["width_units"],
        height: json["height"],
        heightUnits: json["height_units"],
        surface: json["surface"],
        surfaceUnits: json["surface_units"],
        volume: json["volume"],
        volumeUnits: json["volume_units"],
        netMeasure: json["net_measure"],
        netMeasureUnits: json["net_measure_units"],
        accountancyCodeSell: json["accountancy_code_sell"],
        accountancyCodeSellIntra: json["accountancy_code_sell_intra"],
        accountancyCodeSellExport: json["accountancy_code_sell_export"],
        accountancyCodeBuy: json["accountancy_code_buy"],
        accountancyCodeBuyIntra: json["accountancy_code_buy_intra"],
        accountancyCodeBuyExport: json["accountancy_code_buy_export"],
        barcode: json["barcode"],
        fkDefaultWarehouse: json["fk_default_warehouse"],
        fkPriceExpression: json["fk_price_expression"],
        fkUnit: json["fk_unit"],
        priceAutogen: json["price_autogen"],
        isObjectUsed: json["is_object_used"],
        mandatoryPeriod: json["mandatory_period"],
        duration: json["duration"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "entity": entity,
        "validateFieldsErrors": List<dynamic>.from(validateFieldsErrors.map((x) => x)),
        "import_key": importKey,
        "array_options": List<dynamic>.from(arrayOptions.map((x) => x)),
        "array_languages": arrayLanguages,
        "contacts_ids": contactsIds,
        "linked_objects": linkedObjects,
        "linkedObjectsIds": linkedObjectsIds,
        "linkedObjectsFullLoaded": List<dynamic>.from(linkedObjectsFullLoaded.map((x) => x)),
        "canvas": canvas,
        "fk_projet": fkProjet,
        "ref": ref,
        "ref_ext": refExt,
        "status": status,
        "country_id": countryId,
        "country_code": countryCode,
        "state_id": stateId,
        "region_id": regionId,
        "barcode_type": barcodeType,
        "barcode_type_coder": barcodeTypeCoder,
        "last_main_doc": lastMainDoc,
        "note_public": notePublic,
        "note_private": notePrivate,
        "total_ht": totalHt,
        "total_tva": totalTva,
        "total_localtax1": totalLocaltax1,
        "total_localtax2": totalLocaltax2,
        "total_ttc": totalTtc,
        "date_creation": dateCreation.toIso8601String(),
        "date_validation": dateValidation,
        "date_modification": dateModification.toIso8601String(),
        "date_cloture": dateCloture,
        "user_author": userAuthor,
        "user_creation": userCreation,
        "user_creation_id": userCreationId,
        "user_valid": userValid,
        "user_validation": userValidation,
        "user_validation_id": userValidationId,
        "user_closing_id": userClosingId,
        "user_modification": userModification,
        "user_modification_id": userModificationId,
        "specimen": specimen,
        "label": label,
        "description": description,
        "other": other,
        "type": type,
        "price": price,
        "price_ttc": priceTtc,
        "price_min": priceMin,
        "price_min_ttc": priceMinTtc,
        "price_base_type": priceBaseType,
        "multiprices": List<dynamic>.from(multiprices.map((x) => x)),
        "multiprices_ttc": List<dynamic>.from(multipricesTtc.map((x) => x)),
        "multiprices_base_type": List<dynamic>.from(multipricesBaseType.map((x) => x)),
        "multiprices_min": List<dynamic>.from(multipricesMin.map((x) => x)),
        "multiprices_min_ttc": List<dynamic>.from(multipricesMinTtc.map((x) => x)),
        "multiprices_tva_tx": List<dynamic>.from(multipricesTvaTx.map((x) => x)),
        "prices_by_qty": List<dynamic>.from(pricesByQty.map((x) => x)),
        "prices_by_qty_list": List<dynamic>.from(pricesByQtyList.map((x) => x)),
        "multilangs": List<dynamic>.from(multilangs.map((x) => x)),
        "default_vat_code": defaultVatCode,
        "tva_tx": tvaTx,
        "localtax1_tx": localtax1Tx,
        "localtax2_tx": localtax2Tx,
        "localtax1_type": localtax1Type,
        "localtax2_type": localtax2Type,
        "lifetime": lifetime,
        "qc_frequency": qcFrequency,
        "cost_price": costPrice,
        "pmp": pmp,
        "seuil_stock_alerte": seuilStockAlerte,
        "desiredstock": desiredstock,
        "duration_value": durationValue,
        "duration_unit": durationUnit,
        "status_buy": statusBuy,
        "finished": finished,
        "fk_default_bom": fkDefaultBom,
        "status_batch": statusBatch,
        "batch_mask": batchMask,
        "customcode": customcode,
        "url": url,
        "weight": weight,
        "weight_units": weightUnits,
        "length": length,
        "length_units": lengthUnits,
        "width": width,
        "width_units": widthUnits,
        "height": height,
        "height_units": heightUnits,
        "surface": surface,
        "surface_units": surfaceUnits,
        "volume": volume,
        "volume_units": volumeUnits,
        "net_measure": netMeasure,
        "net_measure_units": netMeasureUnits,
        "accountancy_code_sell": accountancyCodeSell,
        "accountancy_code_sell_intra": accountancyCodeSellIntra,
        "accountancy_code_sell_export": accountancyCodeSellExport,
        "accountancy_code_buy": accountancyCodeBuy,
        "accountancy_code_buy_intra": accountancyCodeBuyIntra,
        "accountancy_code_buy_export": accountancyCodeBuyExport,
        "barcode": barcode,
        "fk_default_warehouse": fkDefaultWarehouse,
        "fk_price_expression": fkPriceExpression,
        "fk_unit": fkUnit,
        "price_autogen": priceAutogen,
        "is_object_used": isObjectUsed,
        "mandatory_period": mandatoryPeriod,
        "duration": duration,
    };
}


///Basic Auth
///
///GET https://postman-echo.com/basic-auth
///
///This endpoint simulates a **basic-auth** protected endpoint.
///The endpoint accepts a default username and password and returns a status code of `200
///ok` only if the same is provided.
///Otherwise it will return a status code `401 unauthorized`.
///
///> Username: `postman`
///>
///> Password: `password`
///
///To use this endpoint, send a request with the header `Authorization: Basic
///cG9zdG1hbjpwYXNzd29yZA==`.
///The cryptic latter half of the header value is a base64 encoded concatenation of the
///default username and password.
///Using Postman, to send this request, you can simply fill in the username and password in
///the "Authorization" tab and Postman will do the rest for you.
///
///To know more about basic authentication, refer to the [Basic Access
///Authentication](https://en.wikipedia.org/wiki/Basic_access_authentication) wikipedia
///article.
///The article on [authentication
///
///helpers](https://www.getpostman.com/docs/helpers#basic-auth?source=echo-collection-app-onboarding)
///elaborates how to use the same within the Postman app.
class BasicAuth {
    BasicAuth({
        required this.authenticated,
    });

    bool authenticated;

    factory BasicAuth.fromJson(Map<String, dynamic> json) => BasicAuth(
        authenticated: json["authenticated"],
    );

    Map<String, dynamic> toJson() => {
        "authenticated": authenticated,
    };
}


///OAuth1.0 Verify Signature
///
///GET https://postman-echo.com/oauth1
///
///OAuth1.0a is a specification that defines a protocol that can be used by one
///service to access "protected" resources (endpoints) on another service. A
///major part of OAuth1.0 is HTTP Request Signing. This endpoint allows you to
///check whether the request calculation works properly in the client.
///
///The endpoint supports the HTTP ``Authorization`` header. In case the signature
///verification fails, the endpoint provides the four debug values,
///
///* ``base_uri``
///* ``normalized_param_string``
///* ``base_string``
///* ``signing_key``
///
///For more details about these parameters, check the [OAuth1.0a
///Specification](http://oauth.net/core/1.0a/)
///
///In order to use this endpoint, you can set the following values:
///
///> Consumer Key: ``RKCGzna7bv9YD57c``
///>
///> Consumer Secret: ``D+EdQ-gs$-%@2Nu7``
///
///If you are using Postman, also check the "Add params to header" and
///"Auto add parameters" boxes.
class OAuth10VerifySignature {
    OAuth10VerifySignature({
        required this.status,
        required this.message,
        this.baseUri,
        this.normalizedParamString,
        this.baseString,
        this.signingKey,
    });

    String status;
    String message;
    String? baseUri;
    String? normalizedParamString;
    String? baseString;
    String? signingKey;

    factory OAuth10VerifySignature.fromJson(Map<String, dynamic> json) => OAuth10VerifySignature(
        status: json["status"],
        message: json["message"],
        baseUri: json["base_uri"],
        normalizedParamString: json["normalized_param_string"],
        baseString: json["base_string"],
        signingKey: json["signing_key"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "base_uri": baseUri,
        "normalized_param_string": normalizedParamString,
        "base_string": baseString,
        "signing_key": signingKey,
    };
}


///Hawk Auth
///
///GET https://postman-echo.com/auth/hawk
///
///This endpoint is a Hawk Authentication protected endpoint. [Hawk
///authentication](https://github.com/hueniverse/hawk) is a widely used protocol for
///protecting API endpoints. One of Hawk's main goals is to enable HTTP authentication for
///services that do not use TLS (although it can be used in conjunction with TLS as well).
///
///In order to use this endpoint, select the "Hawk Auth" helper inside Postman, and set the
///following values:
///
///Hawk Auth ID: `dh37fgj492je`
///
///Hawk Auth Key: `werxhqb98rpaxn39848xrunpaw3489ruxnpa98w4rxn`
///
///Algorithm: `sha256`
///
///The rest of the values are optional, and can be left blank. Hitting send should give you
///a response with a status code of 200 OK.
class HawkAuth {
    HawkAuth({
        required this.status,
        required this.message,
    });

    String status;
    String message;

    factory HawkAuth.fromJson(Map<String, dynamic> json) => HawkAuth(
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
    };
}


///Set Cookies
///
///GET https://postman-echo.com/cookies/set?foo1=bar1&foo2=bar2
///
///The cookie setter endpoint accepts a list of cookies and their values as part of URL
///parameters of a `GET` request. These cookies are saved and can be subsequently retrieved
///or deleted. The response of this request returns a JSON with all cookies listed.
///
///To set your own set of cookies, simply replace the URL parameters "foo1=bar1&foo2=bar2"
///with your own set of key-value pairs.
class SetCookies {
    SetCookies({
        required this.cookies,
    });

    SetCookiesCookies cookies;

    factory SetCookies.fromJson(Map<String, dynamic> json) => SetCookies(
        cookies: SetCookiesCookies.fromJson(json["cookies"]),
    );

    Map<String, dynamic> toJson() => {
        "cookies": cookies.toJson(),
    };
}

class SetCookiesCookies {
    SetCookiesCookies({
        required this.foo1,
        required this.foo2,
    });

    String foo1;
    String foo2;

    factory SetCookiesCookies.fromJson(Map<String, dynamic> json) => SetCookiesCookies(
        foo1: json["foo1"],
        foo2: json["foo2"],
    );

    Map<String, dynamic> toJson() => {
        "foo1": foo1,
        "foo2": foo2,
    };
}


///Get Cookies
///
///GET https://postman-echo.com/cookies
///
///Use this endpoint to get a list of all cookies that are stored with respect to this
///domain. Whatever key-value pairs that has been previously set by calling the "Set
///Cookies" endpoint, will be returned as response JSON.
class GetCookies {
    GetCookies({
        required this.cookies,
    });

    GetCookiesCookies cookies;

    factory GetCookies.fromJson(Map<String, dynamic> json) => GetCookies(
        cookies: GetCookiesCookies.fromJson(json["cookies"]),
    );

    Map<String, dynamic> toJson() => {
        "cookies": cookies.toJson(),
    };
}

class GetCookiesCookies {
    GetCookiesCookies({
        required this.foo2,
    });

    String foo2;

    factory GetCookiesCookies.fromJson(Map<String, dynamic> json) => GetCookiesCookies(
        foo2: json["foo2"],
    );

    Map<String, dynamic> toJson() => {
        "foo2": foo2,
    };
}


///Delete Cookies
///
///GET https://postman-echo.com/cookies/delete?foo1&foo2
///
///One or more cookies that has been set for this domain can be deleted by providing the
///cookie names as part of the URL parameter. The response of this request is a JSON
///containing the list of currently set cookies.
class DeleteCookies {
    DeleteCookies({
        required this.cookies,
    });

    GetCookiesCookies cookies;

    factory DeleteCookies.fromJson(Map<String, dynamic> json) => DeleteCookies(
        cookies: GetCookiesCookies.fromJson(json["cookies"]),
    );

    Map<String, dynamic> toJson() => {
        "cookies": cookies.toJson(),
    };
}


///Request Headers
///
///GET https://postman-echo.com/headers
///
///A `GET` request to this endpoint returns the list of all request headers as part of the
///response JSON.
///In Postman, sending your own set of headers through the [Headers
///
///tab](https://www.getpostman.com/docs/requests#headers?source=echo-collection-app-onboarding)
///will reveal the headers as part of the response.
class RequestHeaders {
    RequestHeaders({
        required this.headers,
    });

    Headers headers;

    factory RequestHeaders.fromJson(Map<String, dynamic> json) => RequestHeaders(
        headers: Headers.fromJson(json["headers"]),
    );

    Map<String, dynamic> toJson() => {
        "headers": headers.toJson(),
    };
}

class Headers {
    Headers({
        required this.host,
        required this.accept,
        required this.acceptEncoding,
        required this.acceptLanguage,
        required this.cacheControl,
        required this.mySampleHeader,
        required this.postmanToken,
        required this.userAgent,
        required this.xForwardedPort,
        required this.xForwardedProto,
    });

    String host;
    String accept;
    String acceptEncoding;
    String acceptLanguage;
    String cacheControl;
    String mySampleHeader;
    String postmanToken;
    String userAgent;
    String xForwardedPort;
    String xForwardedProto;

    factory Headers.fromJson(Map<String, dynamic> json) => Headers(
        host: json["host"],
        accept: json["accept"],
        acceptEncoding: json["accept-encoding"],
        acceptLanguage: json["accept-language"],
        cacheControl: json["cache-control"],
        mySampleHeader: json["my-sample-header"],
        postmanToken: json["postman-token"],
        userAgent: json["user-agent"],
        xForwardedPort: json["x-forwarded-port"],
        xForwardedProto: json["x-forwarded-proto"],
    );

    Map<String, dynamic> toJson() => {
        "host": host,
        "accept": accept,
        "accept-encoding": acceptEncoding,
        "accept-language": acceptLanguage,
        "cache-control": cacheControl,
        "my-sample-header": mySampleHeader,
        "postman-token": postmanToken,
        "user-agent": userAgent,
        "x-forwarded-port": xForwardedPort,
        "x-forwarded-proto": xForwardedProto,
    };
}


///Response Headers
///
///GET
///https://postman-echo.com/response-headers?Content-Type=text/html&test=response_headers
///
///This endpoint causes the server to send custom set of response headers. Providing header
///values as part of the URL parameters of a `GET` request to this endpoint returns the same
///as part of response header.
///
///To send your own set of headers, simply add or replace the the URL parameters with your
///own set.
class ResponseHeaders {
    ResponseHeaders({
        required this.contentType,
        required this.test,
    });

    String contentType;
    String test;

    factory ResponseHeaders.fromJson(Map<String, dynamic> json) => ResponseHeaders(
        contentType: json["Content-Type"],
        test: json["test"],
    );

    Map<String, dynamic> toJson() => {
        "Content-Type": contentType,
        "test": test,
    };
}


///Response Status Code
///
///GET https://postman-echo.com/status/200
///
///This endpoint allows one to instruct the server which status code to respond with.
///
///Every response is accompanied by a status code. The status code provides a summary of the
///nature of response sent by the server. For example, a status code of `200` means
///everything is okay with the response and a code of `404` implies that the requested URL
///does not exist on server.
///A list of all valid HTTP status code can be found at the [List of Status
///Codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) wikipedia article. When
///using Postman, the response status code is described for easy reference.
///
///Note that if an invalid status code is requested to be sent, the server returns a status
///code of `400 Bad Request`.
class ResponseStatusCode {
    ResponseStatusCode({
        required this.status,
    });

    int status;

    factory ResponseStatusCode.fromJson(Map<String, dynamic> json) => ResponseStatusCode(
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
    };
}


///Delay Response
///
///GET https://postman-echo.com/delay/3
///
///Using this endpoint one can configure how long it takes for the server to come back with
///a response. Appending a number to the URL defines the time (in seconds) the server will
///wait before responding.
///
///Note that a maximum delay of 10 seconds is accepted by the server.
class DelayResponse {
    DelayResponse({
        required this.delay,
    });

    String delay;

    factory DelayResponse.fromJson(Map<String, dynamic> json) => DelayResponse(
        delay: json["delay"],
    );

    Map<String, dynamic> toJson() => {
        "delay": delay,
    };
}


///Timestamp validity
///
///GET https://postman-echo.com/time/valid?timestamp=2016-10-10
///
///A simple `GET` request to `/time/valid` to determine the validity of the timestamp,
///(current by default).
///This endpoint accepts `timestamp`, `locale`, `format`, and `strict` query parameters to
///construct the date time instance to check against.
///
///Responses are provided in JSON format, with a valid key to indicate the result. The
///response code is `200`.
///
///```
///{
///valid: true/false
///}
///```
class TimestampValidity {
    TimestampValidity({
        required this.valid,
    });

    bool valid;

    factory TimestampValidity.fromJson(Map<String, dynamic> json) => TimestampValidity(
        valid: json["valid"],
    );

    Map<String, dynamic> toJson() => {
        "valid": valid,
    };
}


///Transform collection from format v1 to v2
///
///POST https://postman-echo.com/transform/collection?from=1&to=2
class TransformCollectionFromFormatV1ToV2 {
    TransformCollectionFromFormatV1ToV2({
        required this.variables,
        required this.info,
        required this.item,
    });

    List<dynamic> variables;
    Info info;
    List<Item> item;

    factory TransformCollectionFromFormatV1ToV2.fromJson(Map<String, dynamic> json) => TransformCollectionFromFormatV1ToV2(
        variables: List<dynamic>.from(json["variables"].map((x) => x)),
        info: Info.fromJson(json["info"]),
        item: List<Item>.from(json["item"].map((x) => Item.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "variables": List<dynamic>.from(variables.map((x) => x)),
        "info": info.toJson(),
        "item": List<dynamic>.from(item.map((x) => x.toJson())),
    };
}

class Info {
    Info({
        required this.name,
        required this.postmanId,
        required this.description,
        required this.schema,
    });

    String name;
    String postmanId;
    String description;
    String schema;

    factory Info.fromJson(Map<String, dynamic> json) => Info(
        name: json["name"],
        postmanId: json["_postman_id"],
        description: json["description"],
        schema: json["schema"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "_postman_id": postmanId,
        "description": description,
        "schema": schema,
    };
}

class Item {
    Item({
        required this.name,
        this.event,
        required this.request,
        required this.response,
    });

    String name;
    List<Event>? event;
    ItemRequest request;
    List<dynamic> response;

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        event: json["event"] == null ? [] : List<Event>.from(json["event"]!.map((x) => Event.fromJson(x))),
        request: ItemRequest.fromJson(json["request"]),
        response: List<dynamic>.from(json["response"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "event": event == null ? [] : List<dynamic>.from(event!.map((x) => x.toJson())),
        "request": request.toJson(),
        "response": List<dynamic>.from(response.map((x) => x)),
    };
}

class Event {
    Event({
        required this.listen,
        required this.script,
    });

    String listen;
    Script script;

    factory Event.fromJson(Map<String, dynamic> json) => Event(
        listen: json["listen"],
        script: Script.fromJson(json["script"]),
    );

    Map<String, dynamic> toJson() => {
        "listen": listen,
        "script": script.toJson(),
    };
}

class Script {
    Script({
        required this.type,
        required this.exec,
    });

    String type;
    List<String> exec;

    factory Script.fromJson(Map<String, dynamic> json) => Script(
        type: json["type"],
        exec: List<String>.from(json["exec"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "exec": List<dynamic>.from(exec.map((x) => x)),
    };
}

class ItemRequest {
    ItemRequest({
        required this.url,
        required this.method,
        required this.header,
        required this.body,
    });

    String url;
    String method;
    List<Header> header;
    Body body;

    factory ItemRequest.fromJson(Map<String, dynamic> json) => ItemRequest(
        url: json["url"],
        method: json["method"],
        header: List<Header>.from(json["header"].map((x) => Header.fromJson(x))),
        body: Body.fromJson(json["body"]),
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "method": method,
        "header": List<dynamic>.from(header.map((x) => x.toJson())),
        "body": body.toJson(),
    };
}

class Body {
    Body({
        required this.mode,
        required this.raw,
    });

    String mode;
    String raw;

    factory Body.fromJson(Map<String, dynamic> json) => Body(
        mode: json["mode"],
        raw: json["raw"],
    );

    Map<String, dynamic> toJson() => {
        "mode": mode,
        "raw": raw,
    };
}

class Header {
    Header({
        required this.key,
        required this.value,
        required this.description,
    });

    String key;
    String value;
    String description;

    factory Header.fromJson(Map<String, dynamic> json) => Header(
        key: json["key"],
        value: json["value"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
        "description": description,
    };
}


///Transform collection from format v2 to v1
///
///POST https://postman-echo.com/transform/collection?from=2&to=1
class TransformCollectionFromFormatV2ToV1 {
    TransformCollectionFromFormatV2ToV1({
        required this.id,
        required this.name,
        required this.description,
        required this.order,
        required this.folders,
        required this.requests,
    });

    String id;
    String name;
    String description;
    List<String> order;
    List<dynamic> folders;
    List<RequestElement> requests;

    factory TransformCollectionFromFormatV2ToV1.fromJson(Map<String, dynamic> json) => TransformCollectionFromFormatV2ToV1(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        order: List<String>.from(json["order"].map((x) => x)),
        folders: List<dynamic>.from(json["folders"].map((x) => x)),
        requests: List<RequestElement>.from(json["requests"].map((x) => RequestElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "order": List<dynamic>.from(order.map((x) => x)),
        "folders": List<dynamic>.from(folders.map((x) => x)),
        "requests": List<dynamic>.from(requests.map((x) => x.toJson())),
    };
}

class RequestElement {
    RequestElement({
        required this.id,
        required this.name,
        required this.collectionId,
        required this.method,
        required this.headers,
        required this.data,
        required this.rawModeData,
        this.tests,
        this.preRequestScript,
        required this.url,
        this.dataMode,
    });

    String id;
    String name;
    String collectionId;
    String method;
    String headers;
    List<dynamic> data;
    String rawModeData;
    String? tests;
    String? preRequestScript;
    String url;
    String? dataMode;

    factory RequestElement.fromJson(Map<String, dynamic> json) => RequestElement(
        id: json["id"],
        name: json["name"],
        collectionId: json["collectionId"],
        method: json["method"],
        headers: json["headers"],
        data: List<dynamic>.from(json["data"].map((x) => x)),
        rawModeData: json["rawModeData"],
        tests: json["tests"],
        preRequestScript: json["preRequestScript"],
        url: json["url"],
        dataMode: json["dataMode"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "collectionId": collectionId,
        "method": method,
        "headers": headers,
        "data": List<dynamic>.from(data.map((x) => x)),
        "rawModeData": rawModeData,
        "tests": tests,
        "preRequestScript": preRequestScript,
        "url": url,
        "dataMode": dataMode,
    };
}
