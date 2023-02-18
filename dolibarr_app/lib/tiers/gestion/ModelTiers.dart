// To parse this JSON data, do
//
//     final tiers = tiersFromJson(jsonString);

import 'dart:convert';

List<Tiers> tiersFromJson(String str) =>
    List<Tiers>.from(json.decode(str).map((x) => Tiers.fromJson(x)));

String tiersToJson(List<Tiers> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Tiers {
  Tiers({
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
    this.canvas,
    this.fkProject,
    this.fkProjet,
    this.contactId,
    this.user,
    this.origin,
    this.originId,
    required this.ref,
    this.refExt,
    this.statut,
    required this.status,
    this.countryId,
    required this.countryCode,
    this.stateId,
    this.regionId,
    this.barcodeType,
    this.barcodeTypeCoder,
    this.modeReglementId,
    this.condReglementId,
    this.demandReasonId,
    this.transportModeId,
    this.shippingMethodId,
    required this.modelPdf,
    this.lastMainDoc,
    this.fkBank,
    required this.fkAccount,
    this.notePublic,
    this.notePrivate,
    required this.name,
    this.lastname,
    this.firstname,
    this.civilityId,
    required this.dateCreation,
    this.dateValidation,
    required this.dateModification,
    this.dateCloture,
    this.userAuthor,
    required this.userCreation,
    this.userCreationId,
    this.userValid,
    this.userValidation,
    this.userValidationId,
    this.userClosingId,
    required this.userModification,
    this.userModificationId,
    required this.specimen,
    required this.nameAlias,
    required this.address,
    this.zip,
    this.town,
    this.phone,
    this.fax,
    this.email,
    required this.socialnetworks,
    this.url,
    this.barcode,
    required this.idprof1,
    this.siren,
    required this.idprof2,
    this.siret,
    required this.idprof3,
    this.ape,
    required this.idprof4,
    required this.idprof5,
    required this.idprof6,
    required this.tvaAssuj,
    required this.tvaIntra,
    this.localtax1Assuj,
    required this.localtax1Value,
    this.localtax2Assuj,
    required this.localtax2Value,
    this.managers,
    this.capital,
    required this.typentId,
    this.typentCode,
    required this.effectif,
    this.effectifId,
    this.formeJuridiqueCode,
    required this.formeJuridique,
    required this.remisePercent,
    required this.remiseSupplierPercent,
    this.depositPercent,
    this.modeReglementSupplierId,
    this.condReglementSupplierId,
    this.transportModeSupplierId,
    required this.fkProspectlevel,
    required this.client,
    required this.prospect,
    required this.fournisseur,
    this.codeClient,
    this.codeFournisseur,
    this.codeComptaClient,
    this.codeCompta,
    this.accountancyCodeCustomer,
    this.codeComptaFournisseur,
    this.accountancyCodeSupplier,
    this.codeComptaProduct,
    required this.stcommId,
    this.stcommPicto,
    required this.statusProspectLabel,
    this.priceLevel,
    this.outstandingLimit,
    this.orderMinAmount,
    this.supplierOrderMinAmount,
    this.parent,
    this.defaultLang,
    this.webservicesUrl,
    this.webservicesKey,
    this.logo,
    this.logoSmall,
    this.logoMini,
    this.logoSquarred,
    this.logoSquarredSmall,
    this.logoSquarredMini,
    required this.accountancyCodeSell,
    required this.accountancyCodeBuy,
    required this.fkMulticurrency,
    this.fkWarehouse,
    required this.multicurrencyCode,
    required this.partnerships,
    this.bankAccount,
    required this.fkIncoterms,
    this.labelIncoterms,
    this.locationIncoterms,
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
  dynamic canvas;
  dynamic fkProject;
  dynamic fkProjet;
  dynamic contactId;
  dynamic user;
  dynamic origin;
  dynamic originId;
  String ref;
  dynamic refExt;
  dynamic statut;
  String status;
  dynamic countryId;
  String countryCode;
  dynamic stateId;
  dynamic regionId;
  dynamic barcodeType;
  dynamic barcodeTypeCoder;
  dynamic modeReglementId;
  dynamic condReglementId;
  dynamic demandReasonId;
  dynamic transportModeId;
  dynamic shippingMethodId;
  String modelPdf;
  dynamic lastMainDoc;
  dynamic fkBank;
  String fkAccount;
  dynamic notePublic;
  dynamic notePrivate;
  String name;
  dynamic lastname;
  dynamic firstname;
  dynamic civilityId;
  int dateCreation;
  dynamic dateValidation;
  int dateModification;
  dynamic dateCloture;
  dynamic userAuthor;
  String userCreation;
  dynamic userCreationId;
  dynamic userValid;
  dynamic userValidation;
  dynamic userValidationId;
  dynamic userClosingId;
  String userModification;
  dynamic userModificationId;
  int specimen;
  String nameAlias;
  String address;
  dynamic zip;
  dynamic town;
  dynamic phone;
  dynamic fax;
  dynamic email;
  List<dynamic> socialnetworks;
  dynamic url;
  dynamic barcode;
  String idprof1;
  dynamic siren;
  String idprof2;
  dynamic siret;
  String idprof3;
  dynamic ape;
  String idprof4;
  String idprof5;
  String idprof6;
  String tvaAssuj;
  String tvaIntra;
  dynamic localtax1Assuj;
  String localtax1Value;
  dynamic localtax2Assuj;
  String localtax2Value;
  dynamic managers;
  dynamic capital;
  String typentId;
  dynamic typentCode;
  String effectif;
  dynamic effectifId;
  dynamic formeJuridiqueCode;
  String formeJuridique;
  int remisePercent;
  String remiseSupplierPercent;
  dynamic depositPercent;
  dynamic modeReglementSupplierId;
  dynamic condReglementSupplierId;
  dynamic transportModeSupplierId;
  String fkProspectlevel;
  String client;
  int prospect;
  String fournisseur;
  dynamic codeClient;
  dynamic codeFournisseur;
  dynamic codeComptaClient;
  dynamic codeCompta;
  dynamic accountancyCodeCustomer;
  dynamic codeComptaFournisseur;
  dynamic accountancyCodeSupplier;
  dynamic codeComptaProduct;
  String stcommId;
  dynamic stcommPicto;
  String statusProspectLabel;
  dynamic priceLevel;
  dynamic outstandingLimit;
  dynamic orderMinAmount;
  dynamic supplierOrderMinAmount;
  dynamic parent;
  dynamic defaultLang;
  dynamic webservicesUrl;
  dynamic webservicesKey;
  dynamic logo;
  dynamic logoSmall;
  dynamic logoMini;
  dynamic logoSquarred;
  dynamic logoSquarredSmall;
  dynamic logoSquarredMini;
  String accountancyCodeSell;
  String accountancyCodeBuy;
  String fkMulticurrency;
  dynamic fkWarehouse;
  String multicurrencyCode;
  List<dynamic> partnerships;
  dynamic bankAccount;
  String fkIncoterms;
  dynamic labelIncoterms;
  dynamic locationIncoterms;

  factory Tiers.fromJson(Map<String, dynamic> json) => Tiers(
        id: json["id"],
        entity: json["entity"],
        validateFieldsErrors:
            List<dynamic>.from(json["validateFieldsErrors"].map((x) => x)),
        importKey: json["import_key"],
        arrayOptions: List<dynamic>.from(json["array_options"].map((x) => x)),
        arrayLanguages: json["array_languages"],
        contactsIds: json["contacts_ids"],
        linkedObjects: json["linked_objects"],
        linkedObjectsIds: json["linkedObjectsIds"],
        linkedObjectsFullLoaded:
            List<dynamic>.from(json["linkedObjectsFullLoaded"].map((x) => x)),
        canvas: json["canvas"],
        fkProject: json["fk_project"],
        fkProjet: json["fk_projet"],
        contactId: json["contact_id"],
        user: json["user"],
        origin: json["origin"],
        originId: json["origin_id"],
        ref: json["ref"],
        refExt: json["ref_ext"],
        statut: json["statut"],
        status: json["status"],
        countryId: json["country_id"],
        countryCode: json["country_code"],
        stateId: json["state_id"],
        regionId: json["region_id"],
        barcodeType: json["barcode_type"],
        barcodeTypeCoder: json["barcode_type_coder"],
        modeReglementId: json["mode_reglement_id"],
        condReglementId: json["cond_reglement_id"],
        demandReasonId: json["demand_reason_id"],
        transportModeId: json["transport_mode_id"],
        shippingMethodId: json["shipping_method_id"],
        modelPdf: json["model_pdf"],
        lastMainDoc: json["last_main_doc"],
        fkBank: json["fk_bank"],
        fkAccount: json["fk_account"],
        notePublic: json["note_public"],
        notePrivate: json["note_private"],
        name: json["name"],
        lastname: json["lastname"],
        firstname: json["firstname"],
        civilityId: json["civility_id"],
        dateCreation: json["date_creation"],
        dateValidation: json["date_validation"],
        dateModification: json["date_modification"],
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
        nameAlias: json["name_alias"],
        address: json["address"],
        zip: json["zip"],
        town: json["town"],
        phone: json["phone"],
        fax: json["fax"],
        email: json["email"],
        socialnetworks:
            List<dynamic>.from(json["socialnetworks"].map((x) => x)),
        url: json["url"],
        barcode: json["barcode"],
        idprof1: json["idprof1"],
        siren: json["siren"],
        idprof2: json["idprof2"],
        siret: json["siret"],
        idprof3: json["idprof3"],
        ape: json["ape"],
        idprof4: json["idprof4"],
        idprof5: json["idprof5"],
        idprof6: json["idprof6"],
        tvaAssuj: json["tva_assuj"],
        tvaIntra: json["tva_intra"],
        localtax1Assuj: json["localtax1_assuj"],
        localtax1Value: json["localtax1_value"],
        localtax2Assuj: json["localtax2_assuj"],
        localtax2Value: json["localtax2_value"],
        managers: json["managers"],
        capital: json["capital"],
        typentId: json["typent_id"],
        typentCode: json["typent_code"],
        effectif: json["effectif"],
        effectifId: json["effectif_id"],
        formeJuridiqueCode: json["forme_juridique_code"],
        formeJuridique: json["forme_juridique"],
        remisePercent: json["remise_percent"],
        remiseSupplierPercent: json["remise_supplier_percent"],
        depositPercent: json["deposit_percent"],
        modeReglementSupplierId: json["mode_reglement_supplier_id"],
        condReglementSupplierId: json["cond_reglement_supplier_id"],
        transportModeSupplierId: json["transport_mode_supplier_id"],
        fkProspectlevel: json["fk_prospectlevel"],
        client: json["client"],
        prospect: json["prospect"],
        fournisseur: json["fournisseur"],
        codeClient: json["code_client"],
        codeFournisseur: json["code_fournisseur"],
        codeComptaClient: json["code_compta_client"],
        codeCompta: json["code_compta"],
        accountancyCodeCustomer: json["accountancy_code_customer"],
        codeComptaFournisseur: json["code_compta_fournisseur"],
        accountancyCodeSupplier: json["accountancy_code_supplier"],
        codeComptaProduct: json["code_compta_product"],
        stcommId: json["stcomm_id"],
        stcommPicto: json["stcomm_picto"],
        statusProspectLabel: json["status_prospect_label"],
        priceLevel: json["price_level"],
        outstandingLimit: json["outstanding_limit"],
        orderMinAmount: json["order_min_amount"],
        supplierOrderMinAmount: json["supplier_order_min_amount"],
        parent: json["parent"],
        defaultLang: json["default_lang"],
        webservicesUrl: json["webservices_url"],
        webservicesKey: json["webservices_key"],
        logo: json["logo"],
        logoSmall: json["logo_small"],
        logoMini: json["logo_mini"],
        logoSquarred: json["logo_squarred"],
        logoSquarredSmall: json["logo_squarred_small"],
        logoSquarredMini: json["logo_squarred_mini"],
        accountancyCodeSell: json["accountancy_code_sell"],
        accountancyCodeBuy: json["accountancy_code_buy"],
        fkMulticurrency: json["fk_multicurrency"],
        fkWarehouse: json["fk_warehouse"],
        multicurrencyCode: json["multicurrency_code"],
        partnerships: List<dynamic>.from(json["partnerships"].map((x) => x)),
        bankAccount: json["bank_account"],
        fkIncoterms: json["fk_incoterms"],
        labelIncoterms: json["label_incoterms"],
        locationIncoterms: json["location_incoterms"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "entity": entity,
        "validateFieldsErrors":
            List<dynamic>.from(validateFieldsErrors.map((x) => x)),
        "import_key": importKey,
        "array_options": List<dynamic>.from(arrayOptions.map((x) => x)),
        "array_languages": arrayLanguages,
        "contacts_ids": contactsIds,
        "linked_objects": linkedObjects,
        "linkedObjectsIds": linkedObjectsIds,
        "linkedObjectsFullLoaded":
            List<dynamic>.from(linkedObjectsFullLoaded.map((x) => x)),
        "canvas": canvas,
        "fk_project": fkProject,
        "fk_projet": fkProjet,
        "contact_id": contactId,
        "user": user,
        "origin": origin,
        "origin_id": originId,
        "ref": ref,
        "ref_ext": refExt,
        "statut": statut,
        "status": status,
        "country_id": countryId,
        "country_code": countryCode,
        "state_id": stateId,
        "region_id": regionId,
        "barcode_type": barcodeType,
        "barcode_type_coder": barcodeTypeCoder,
        "mode_reglement_id": modeReglementId,
        "cond_reglement_id": condReglementId,
        "demand_reason_id": demandReasonId,
        "transport_mode_id": transportModeId,
        "shipping_method_id": shippingMethodId,
        "model_pdf": modelPdf,
        "last_main_doc": lastMainDoc,
        "fk_bank": fkBank,
        "fk_account": fkAccount,
        "note_public": notePublic,
        "note_private": notePrivate,
        "name": name,
        "lastname": lastname,
        "firstname": firstname,
        "civility_id": civilityId,
        "date_creation": dateCreation,
        "date_validation": dateValidation,
        "date_modification": dateModification,
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
        "name_alias": nameAlias,
        "address": address,
        "zip": zip,
        "town": town,
        "phone": phone,
        "fax": fax,
        "email": email,
        "socialnetworks": List<dynamic>.from(socialnetworks.map((x) => x)),
        "url": url,
        "barcode": barcode,
        "idprof1": idprof1,
        "siren": siren,
        "idprof2": idprof2,
        "siret": siret,
        "idprof3": idprof3,
        "ape": ape,
        "idprof4": idprof4,
        "idprof5": idprof5,
        "idprof6": idprof6,
        "tva_assuj": tvaAssuj,
        "tva_intra": tvaIntra,
        "localtax1_assuj": localtax1Assuj,
        "localtax1_value": localtax1Value,
        "localtax2_assuj": localtax2Assuj,
        "localtax2_value": localtax2Value,
        "managers": managers,
        "capital": capital,
        "typent_id": typentId,
        "typent_code": typentCode,
        "effectif": effectif,
        "effectif_id": effectifId,
        "forme_juridique_code": formeJuridiqueCode,
        "forme_juridique": formeJuridique,
        "remise_percent": remisePercent,
        "remise_supplier_percent": remiseSupplierPercent,
        "deposit_percent": depositPercent,
        "mode_reglement_supplier_id": modeReglementSupplierId,
        "cond_reglement_supplier_id": condReglementSupplierId,
        "transport_mode_supplier_id": transportModeSupplierId,
        "fk_prospectlevel": fkProspectlevel,
        "client": client,
        "prospect": prospect,
        "fournisseur": fournisseur,
        "code_client": codeClient,
        "code_fournisseur": codeFournisseur,
        "code_compta_client": codeComptaClient,
        "code_compta": codeCompta,
        "accountancy_code_customer": accountancyCodeCustomer,
        "code_compta_fournisseur": codeComptaFournisseur,
        "accountancy_code_supplier": accountancyCodeSupplier,
        "code_compta_product": codeComptaProduct,
        "stcomm_id": stcommId,
        "stcomm_picto": stcommPicto,
        "status_prospect_label": statusProspectLabel,
        "price_level": priceLevel,
        "outstanding_limit": outstandingLimit,
        "order_min_amount": orderMinAmount,
        "supplier_order_min_amount": supplierOrderMinAmount,
        "parent": parent,
        "default_lang": defaultLang,
        "webservices_url": webservicesUrl,
        "webservices_key": webservicesKey,
        "logo": logo,
        "logo_small": logoSmall,
        "logo_mini": logoMini,
        "logo_squarred": logoSquarred,
        "logo_squarred_small": logoSquarredSmall,
        "logo_squarred_mini": logoSquarredMini,
        "accountancy_code_sell": accountancyCodeSell,
        "accountancy_code_buy": accountancyCodeBuy,
        "fk_multicurrency": fkMulticurrency,
        "fk_warehouse": fkWarehouse,
        "multicurrency_code": multicurrencyCode,
        "partnerships": List<dynamic>.from(partnerships.map((x) => x)),
        "bank_account": bankAccount,
        "fk_incoterms": fkIncoterms,
        "label_incoterms": labelIncoterms,
        "location_incoterms": locationIncoterms,
      };
}

class Conf {
  Conf();

  factory Conf.fromJson(Map<String, dynamic> json) => Conf();

  Map<String, dynamic> toJson() => {};
}

class Rights {
  Rights({
    required this.tiers,
  });

  Tiers tiers;

  factory Rights.fromJson(Map<String, dynamic> json) => Rights(
        tiers: Tiers.fromJson(json["tiers"]),
      );

  Map<String, dynamic> toJson() => {
        "tiers": tiers.toJson(),
      };
}

class TiersClass {
  TiersClass({
    required this.tiers,
    required this.self,
    required this.tiersAdvance,
    required this.selfAdvance,
    required this.groupAdvance,
  });

  Conf tiers;
  Conf self;
  Conf tiersAdvance;
  Conf selfAdvance;
  Conf groupAdvance;

  factory TiersClass.fromJson(Map<String, dynamic> json) => TiersClass(
        tiers: Conf.fromJson(json["tiers"]),
        self: Conf.fromJson(json["self"]),
        tiersAdvance: Conf.fromJson(json["tiers_advance"]),
        selfAdvance: Conf.fromJson(json["self_advance"]),
        groupAdvance: Conf.fromJson(json["group_advance"]),
      );

  Map<String, dynamic> toJson() => {
        "tiers": tiers.toJson(),
        "self": self.toJson(),
        "tiers_advance": tiersAdvance.toJson(),
        "self_advance": selfAdvance.toJson(),
        "group_advance": groupAdvance.toJson(),
      };
}

Addtier addtiersFromJson(String str) => Addtier.fromJson(json.decode(str));

String addtierToJson(Addtier data) => json.encode(data.toJson());

class Addtier {
  Addtier({
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.client,
    required this.fournisseur,
  });

  String name;
  String address;
  String phone;
  String email;
  String client;
  String fournisseur;

  factory Addtier.fromJson(Map<String, dynamic> json) => Addtier(
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        email: json["email"],
        client: json["client"],
        fournisseur: json["fournisseur"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
        "phone": phone,
        "email": email,
        "client": client,
        "fournisseur": fournisseur,
      };
}
