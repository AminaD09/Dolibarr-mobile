// To parse this JSON data, do
//
//     final contact = contactFromJson(jsonString);

import 'dart:convert';

List<Contact> contactFromJson(String str) =>
    List<Contact>.from(json.decode(str).map((x) => Contact.fromJson(x)));

String contactToJson(List<Contact> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Contact {
  Contact({
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
    required this.statut,
    this.status,
    required this.countryId,
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
    this.modelPdf,
    this.lastMainDoc,
    this.fkBank,
    this.fkAccount,
    required this.notePublic,
    required this.notePrivate,
    this.name,
    required this.lastname,
    required this.firstname,
    this.civilityId,
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
    required this.civilityCode,
    required this.civility,
    this.civilite,
    required this.address,
    required this.zip,
    required this.town,
    required this.poste,
    required this.socid,
    required this.fkSoc,
    this.code,
    required this.email,
    this.url,
    this.noEmail,
    required this.socialnetworks,
    this.skype,
    this.twitter,
    this.facebook,
    this.linkedin,
    this.jabberid,
    this.photo,
    required this.phonePro,
    required this.phonePerso,
    required this.phoneMobile,
    required this.fax,
    required this.priv,
    required this.birthday,
    this.defaultLang,
    this.refFacturation,
    this.refContrat,
    this.refCommande,
    this.refPropal,
    this.userId,
    this.userLogin,
    required this.roles,
    required this.cacheprospectstatus,
    required this.fkProspectlevel,
    required this.stcommId,
    required this.statutCommercial,
    this.stcommPicto,
    required this.field,
    required this.socname,
    required this.mail,
    required this.gender,
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
  String statut;
  dynamic status;
  String countryId;
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
  dynamic modelPdf;
  dynamic lastMainDoc;
  dynamic fkBank;
  dynamic fkAccount;
  String notePublic;
  String notePrivate;
  dynamic name;
  String lastname;
  String firstname;
  dynamic civilityId;
  int dateCreation;
  dynamic dateValidation;
  int dateModification;
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
  String civilityCode;
  String civility;
  dynamic civilite;
  String address;
  String zip;
  String town;
  String poste;
  String socid;
  String fkSoc;
  dynamic code;
  String email;
  dynamic url;
  dynamic noEmail;
  List<dynamic> socialnetworks;
  dynamic skype;
  dynamic twitter;
  dynamic facebook;
  dynamic linkedin;
  dynamic jabberid;
  dynamic photo;
  String phonePro;
  String phonePerso;
  String phoneMobile;
  String fax;
  String priv;
  String birthday;
  dynamic defaultLang;
  dynamic refFacturation;
  dynamic refContrat;
  dynamic refCommande;
  dynamic refPropal;
  dynamic userId;
  dynamic userLogin;
  List<dynamic> roles;
  List<dynamic> cacheprospectstatus;
  String fkProspectlevel;
  String stcommId;
  String statutCommercial;
  dynamic stcommPicto;
  Field field;
  String socname;
  String mail;
  String gender;

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
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
        civilityCode: json["civility_code"],
        civility: json["civility"],
        civilite: json["civilite"],
        address: json["address"],
        zip: json["zip"],
        town: json["town"],
        poste: json["poste"],
        socid: json["socid"],
        fkSoc: json["fk_soc"],
        code: json["code"],
        email: json["email"],
        url: json["url"],
        noEmail: json["no_email"],
        socialnetworks:
            List<dynamic>.from(json["socialnetworks"].map((x) => x)),
        skype: json["skype"],
        twitter: json["twitter"],
        facebook: json["facebook"],
        linkedin: json["linkedin"],
        jabberid: json["jabberid"],
        photo: json["photo"],
        phonePro: json["phone_pro"],
        phonePerso: json["phone_perso"],
        phoneMobile: json["phone_mobile"],
        fax: json["fax"],
        priv: json["priv"],
        birthday: json["birthday"],
        defaultLang: json["default_lang"],
        refFacturation: json["ref_facturation"],
        refContrat: json["ref_contrat"],
        refCommande: json["ref_commande"],
        refPropal: json["ref_propal"],
        userId: json["user_id"],
        userLogin: json["user_login"],
        roles: List<dynamic>.from(json["roles"].map((x) => x)),
        cacheprospectstatus:
            List<dynamic>.from(json["cacheprospectstatus"].map((x) => x)),
        fkProspectlevel: json["fk_prospectlevel"],
        stcommId: json["stcomm_id"],
        statutCommercial: json["statut_commercial"],
        stcommPicto: json["stcomm_picto"],
        field: Field.fromJson(json["field"]),
        socname: json["socname"],
        mail: json["mail"],
        gender: json["gender"],
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
        "civility_code": civilityCode,
        "civility": civility,
        "civilite": civilite,
        "address": address,
        "zip": zip,
        "town": town,
        "poste": poste,
        "socid": socid,
        "fk_soc": fkSoc,
        "code": code,
        "email": email,
        "url": url,
        "no_email": noEmail,
        "socialnetworks": List<dynamic>.from(socialnetworks.map((x) => x)),
        "skype": skype,
        "twitter": twitter,
        "facebook": facebook,
        "linkedin": linkedin,
        "jabberid": jabberid,
        "photo": photo,
        "phone_pro": phonePro,
        "phone_perso": phonePerso,
        "phone_mobile": phoneMobile,
        "fax": fax,
        "priv": priv,
        "birthday": birthday,
        "default_lang": defaultLang,
        "ref_facturation": refFacturation,
        "ref_contrat": refContrat,
        "ref_commande": refCommande,
        "ref_propal": refPropal,
        "user_id": userId,
        "user_login": userLogin,
        "roles": List<dynamic>.from(roles.map((x) => x)),
        "cacheprospectstatus":
            List<dynamic>.from(cacheprospectstatus.map((x) => x)),
        "fk_prospectlevel": fkProspectlevel,
        "stcomm_id": stcommId,
        "statut_commercial": statutCommercial,
        "stcomm_picto": stcommPicto,
        "field": field.toJson(),
        "socname": socname,
        "mail": mail,
        "gender": gender,
      };
}

class Field {
  Field({
    required this.fkStcommcontact,
    required this.fkProspectcontactlevel,
  });

  Fk fkStcommcontact;
  Fk fkProspectcontactlevel;

  factory Field.fromJson(Map<String, dynamic> json) => Field(
        fkStcommcontact: Fk.fromJson(json["fk_stcommcontact"]),
        fkProspectcontactlevel: Fk.fromJson(json["fk_prospectcontactlevel"]),
      );

  Map<String, dynamic> toJson() => {
        "fk_stcommcontact": fkStcommcontact.toJson(),
        "fk_prospectcontactlevel": fkProspectcontactlevel.toJson(),
      };
}

class Fk {
  Fk({
    required this.enabled,
  });

  int enabled;

  factory Fk.fromJson(Map<String, dynamic> json) => Fk(
        enabled: json["enabled"],
      );

  Map<String, dynamic> toJson() => {
        "enabled": enabled,
      };
}
