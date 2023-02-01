enum Environment {
  STAGING,
  PRODUCTION,
}

const Environment activeProfile = Environment.STAGING;

String getBaseUrl() {
  switch (activeProfile) {
    case Environment.STAGING:
      return "https://api.thrive.minawill.com/api";

    case Environment.PRODUCTION:
      return "https://api.thrive.minawill.com/api";
  }
}