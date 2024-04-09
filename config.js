const localConfig = {
  shortName: "logboek-dataverwerkingen",
  publishDate: "2024-03-01",
  publishVersion: "0.1.0",
  github: "MinBZK/Logboek-Dataverwerkingen",

  license: "cc-by",
  specStatus: "wv",
  specType: "st",
  pubDomain: "",
  useLogo: true,
  useLabel: true,
  maxTocLevel: 3,

  postProcess: [window.respecMermaid.createFigures],

  editors: [
    {
      name: "Logius Standaarden",
      company: "Logius",
      companyURL: "https://github.com/Logius-standaarden",
    },
  ],
  authors: [
    {
      name: "Ministerie van Binnenlandse Zaken en Koninkrijksrelaties",
      company: "Ministerie van Binnenlandse Zaken en Koninkrijksrelaties",
      companyURL: "https://wwww.minbzk.nl/",
    },
  ],

  lint: {
    "local-refs-exist": true,
    "no-http-props": true,
    "no-unused-vars": true,
  },
};

const respecConfig = {...organisationConfig, ...localConfig}
