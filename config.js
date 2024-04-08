let localConfig = {
  shortName: "Logboek dataverwerkingen",
  publishDate: "2024-03-01",
  publishVersion: "0.1.0",
  github: "MinBZK/Logboek-Dataverwerkingen",

  license: "cc-by",
  specStatus: "WV",
  specType: "HR",
  pubDomain: "",
  useLogo: true,
  useLabel: true,

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
      name: "Logius Standaarden",
      company: "Logius",
      companyURL: "https://github.com/Logius-standaarden",
    },
  ],

  lint: {
    "local-refs-exist": true,
    "no-http-props": true,
    "no-unused-vars": true,
  },
};

let respecConfig = {...organisationConfig, ...localConfig}
