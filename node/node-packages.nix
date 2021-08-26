# This file has been generated by node2nix 1.9.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@types/marked-2.0.4" = {
      name = "_at_types_slash_marked";
      packageName = "@types/marked";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/marked/-/marked-2.0.4.tgz";
        sha512 = "L9VRSe0Id8xbPL99mUo/4aKgD7ZoRwFZqUQScNKHi2pFjF9ZYSMNShUHD6VlMT6J/prQq0T1mxuU25m3R7dFzg==";
      };
    };
    "ansi-styles-4.3.0" = {
      name = "ansi-styles";
      packageName = "ansi-styles";
      version = "4.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-4.3.0.tgz";
        sha512 = "zbB9rCJAT1rbjiVDb2hqKFHNYLxgtk8NURxZ3IZwD3F6NtxbXZQCnnSi1Lkx+IDohdPlFp222wVALIheZJQSEg==";
      };
    };
    "chalk-4.1.2" = {
      name = "chalk";
      packageName = "chalk";
      version = "4.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/chalk/-/chalk-4.1.2.tgz";
        sha512 = "oKnbhFyRIXpUuez8iBMmyEa4nbj4IOQyuhc/wy9kY7/WVPcwIO9VA668Pu8RkO7+0G76SLROeyw9CpQ061i4mA==";
      };
    };
    "color-convert-2.0.1" = {
      name = "color-convert";
      packageName = "color-convert";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-convert/-/color-convert-2.0.1.tgz";
        sha512 = "RRECPsj7iu/xb5oKYcsFHSppFNnsj/52OVTRKb4zP5onXwVF3zVmmToNcOfGC+CRDpfK/U584fMg38ZHCaElKQ==";
      };
    };
    "color-name-1.1.4" = {
      name = "color-name";
      packageName = "color-name";
      version = "1.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz";
        sha512 = "dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA==";
      };
    };
    "enhanced-resolve-5.8.2" = {
      name = "enhanced-resolve";
      packageName = "enhanced-resolve";
      version = "5.8.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-5.8.2.tgz";
        sha512 = "F27oB3WuHDzvR2DOGNTaYy0D5o0cnrv8TeI482VM4kYgQd/FT9lUQwuNsJ0oOHtBUq7eiW5ytqzp7nBFknL+GA==";
      };
    };
    "graceful-fs-4.2.8" = {
      name = "graceful-fs";
      packageName = "graceful-fs";
      version = "4.2.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.8.tgz";
        sha512 = "qkIilPUYcNhJpd33n0GBXTB1MMPp14TxEsEs0pTrsSVucApsYzW5V+Q8Qxhik6KU3evy+qkAAowTByymK0avdg==";
      };
    };
    "has-flag-4.0.0" = {
      name = "has-flag";
      packageName = "has-flag";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-flag/-/has-flag-4.0.0.tgz";
        sha512 = "EykJT/Q1KjTWctppgIAgfSO0tKVuZUjhgMr17kqTumMl6Afv3EISleU7qZUzoXDFTAHTDC4NOoG/ZxU3EvlMPQ==";
      };
    };
    "json5-2.2.0" = {
      name = "json5";
      packageName = "json5";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/json5/-/json5-2.2.0.tgz";
        sha512 = "f+8cldu7X/y7RAJurMEJmdoKXGB/X550w2Nr3tTbezL6RwEE/iMcm+tZnXeoZtKuOq6ft8+CqzEkrIgx1fPoQA==";
      };
    };
    "marked-2.1.3" = {
      name = "marked";
      packageName = "marked";
      version = "2.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/marked/-/marked-2.1.3.tgz";
        sha512 = "/Q+7MGzaETqifOMWYEA7HVMaZb4XbcRfaOzcSsHZEith83KGlvaSG33u0SKu89Mj5h+T8V2hM+8O45Qc5XTgwA==";
      };
    };
    "minimist-1.2.5" = {
      name = "minimist";
      packageName = "minimist";
      version = "1.2.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimist/-/minimist-1.2.5.tgz";
        sha512 = "FM9nNUYrRBAELZQT3xeZQ7fmMOBg6nWNmJKTcgsJeaLstP/UODVpGsr5OhXhhXg6f+qtJ8uiZ+PUxkDWcgIXLw==";
      };
    };
    "mitt-2.1.0" = {
      name = "mitt";
      packageName = "mitt";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mitt/-/mitt-2.1.0.tgz";
        sha512 = "ILj2TpLiysu2wkBbWjAmww7TkZb65aiQO+DkVdUTBpBXq+MHYiETENkKFMtsJZX1Lf4pe4QOrTSjIfUwN5lRdg==";
      };
    };
    "primeflex-2.0.0" = {
      name = "primeflex";
      packageName = "primeflex";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/primeflex/-/primeflex-2.0.0.tgz";
        sha512 = "t6AG3iRI1rh04uI+9nC4JSlbKfA8PnpRDFtjyqi3rDSLRgdfOuhIiunJbjVQ4alnnCfuQAAbVyde1AKN9QxT/w==";
      };
    };
    "primeicons-4.1.0" = {
      name = "primeicons";
      packageName = "primeicons";
      version = "4.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/primeicons/-/primeicons-4.1.0.tgz";
        sha512 = "uEv2pSPk1zQCfaB2VgnUfnUxxlGryYi+5rbdxmZBBt5v9S/pscIQYS5YDLxsQZ7D9jn5c76+Tx5wX/2J1nK6sA==";
      };
    };
    "primevue-2.5.1" = {
      name = "primevue";
      packageName = "primevue";
      version = "2.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/primevue/-/primevue-2.5.1.tgz";
        sha512 = "U/z/jXGgN1CKijKonPORRaQK9OnvcrpB3lX4P/ktVqL56hmWWAEvkjBO7UZyUGHWfK0jGDQg6Hk1Mmdeufwnlw==";
      };
    };
    "strip-bom-3.0.0" = {
      name = "strip-bom";
      packageName = "strip-bom";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/strip-bom/-/strip-bom-3.0.0.tgz";
        sha1 = "2334c18e9c759f7bdd56fdef7e9ae3d588e68ed3";
      };
    };
    "supports-color-7.2.0" = {
      name = "supports-color";
      packageName = "supports-color";
      version = "7.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-7.2.0.tgz";
        sha512 = "qpCAvRl9stuOHveKsn7HncJRvv501qIacKzQlO/+Lwxc9+0q2wLyv4Dfvt80/DPn2pqOBsJdDiogXGR9+OvwRw==";
      };
    };
    "tapable-2.2.0" = {
      name = "tapable";
      packageName = "tapable";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/tapable/-/tapable-2.2.0.tgz";
        sha512 = "FBk4IesMV1rBxX2tfiK8RAmogtWn53puLOQlvO8XuwlgxcYbP4mVPS9Ph4aeamSyyVjOl24aYWAuc8U5kCVwMw==";
      };
    };
    "tsconfig-paths-3.10.1" = {
      name = "tsconfig-paths";
      packageName = "tsconfig-paths";
      version = "3.10.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/tsconfig-paths/-/tsconfig-paths-3.10.1.tgz";
        sha512 = "rETidPDgCpltxF7MjBZlAFPUHv5aHH2MymyPvh+vEyWAED4Eb/WeMbsnD/JDr4OKPOA1TssDHgIcpTN5Kh0p6Q==";
      };
    };
    "tsconfig-paths-webpack-plugin-3.5.1" = {
      name = "tsconfig-paths-webpack-plugin";
      packageName = "tsconfig-paths-webpack-plugin";
      version = "3.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/tsconfig-paths-webpack-plugin/-/tsconfig-paths-webpack-plugin-3.5.1.tgz";
        sha512 = "n5CMlUUj+N5pjBhBACLq4jdr9cPTitySCjIosoQm0zwK99gmrcTGAfY9CwxRFT9+9OleNWXPRUcxsKP4AYExxQ==";
      };
    };
    "vue-2.6.14" = {
      name = "vue";
      packageName = "vue";
      version = "2.6.14";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue/-/vue-2.6.14.tgz";
        sha512 = "x2284lgYvjOMj3Za7kqzRcUSxBboHqtgRE2zlos1qWaOye5yUmHn42LB1250NJBLRwEcdrB0JRwyPTEPhfQjiQ==";
      };
    };
    "vue-class-component-7.2.6" = {
      name = "vue-class-component";
      packageName = "vue-class-component";
      version = "7.2.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue-class-component/-/vue-class-component-7.2.6.tgz";
        sha512 = "+eaQXVrAm/LldalI272PpDe3+i4mPis0ORiMYxF6Ae4hyuCh15W8Idet7wPUEs4N4YptgFHGys4UrgNQOMyO6w==";
      };
    };
    "vue-property-decorator-8.5.1" = {
      name = "vue-property-decorator";
      packageName = "vue-property-decorator";
      version = "8.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue-property-decorator/-/vue-property-decorator-8.5.1.tgz";
        sha512 = "O6OUN2OMsYTGPvgFtXeBU3jPnX5ffQ9V4I1WfxFQ6dqz6cOUbR3Usou7kgFpfiXDvV7dJQSFcJ5yUPgOtPPm1Q==";
      };
    };
  };
  args = {
    name = "search-and-displace";
    packageName = "search-and-displace";
    version = "dev";
    src = ../searchanddisplace-core;
    dependencies = [
      sources."@types/marked-2.0.4"
      sources."ansi-styles-4.3.0"
      sources."chalk-4.1.2"
      sources."color-convert-2.0.1"
      sources."color-name-1.1.4"
      sources."enhanced-resolve-5.8.2"
      sources."graceful-fs-4.2.8"
      sources."has-flag-4.0.0"
      sources."json5-2.2.0"
      sources."marked-2.1.3"
      sources."minimist-1.2.5"
      sources."mitt-2.1.0"
      sources."primeflex-2.0.0"
      sources."primeicons-4.1.0"
      sources."primevue-2.5.1"
      sources."strip-bom-3.0.0"
      sources."supports-color-7.2.0"
      sources."tapable-2.2.0"
      sources."tsconfig-paths-3.10.1"
      sources."tsconfig-paths-webpack-plugin-3.5.1"
      sources."vue-2.6.14"
      sources."vue-class-component-7.2.6"
      sources."vue-property-decorator-8.5.1"
    ];
    buildInputs = globalBuildInputs;
    meta = {
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}