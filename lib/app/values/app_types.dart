enum FileUploadType {
  USER_IMAGE,
  ATTACHMENT,
  CERTIFICATE,
  CLAIM,
  POLICY,
}

enum DocType {
  CERTIFICATE,
  POLICY,
}

enum PolicyDocReqestType {
  REQUESTED,
  POLICY_CREATED,
}

enum AddressType {
  USER_ADDRESS,
}

enum SortByType {
  ascending,
  desc,
}

enum UserType {
  CUSTOMER,
}

enum CertificateStatus {
  REQUESTED,
  SENT,
}

enum NotificationType {
  CLAIM_REQUEST,
  OPPORTUNITY_CREATED,
  POLICY_CREATED,
  POLICY_EXPIRING,
  POLICY_EXPIRED,
}

enum SupportTicketStatus {
  ALL,
  OPEN,
  IN_PROGRESS,
  COMPLETED,
  IRRELEVANT,
  CLOSED,
}

enum PolicyStatus {
  ALL,
  ACTIVE_NEW,
  ACTIVE_RENEW,
  PENDING,
  PENDING_CANCELLATION,
  IN_REVIEW,
  MISSING_INFO,
  EXPIRING,
  EXPIRED,
}

enum OpportunityStatus {
  ALL,
  NEW,
  CONTACTED,
  QUOTED,
  POLICIED,
}

enum QuoteStatus {
  ALL,
  ACTIVE,
  CANCELLED,
  EXPIRED,
  PENDING,
  PENDING_CANCEL,
  QUOTED,
}

const imageTypes = [
  ".jpg",
  ".png",
  ".jpeg",
];

enum ClaimSortType {
  All,
  Product,
  Policy_No,
  Agency,
  Carrier,
  Accident_At,
}

extension ClaimSortTypeExt on ClaimSortType {
  String get nameValue {
    return [
      "All",
      "productName",
      "policyNumber",
      "agencyName",
      "carrierName",
      "dateOfAccident",
    ][index];
  }
}
