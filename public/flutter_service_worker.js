'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "13a7ac6a26b046ef1483f8c7cf8227dc",
"assets/assets/about/advise/comp.png": "986e2e67a34c36bcbdccd7fc763637a3",
"assets/assets/about/awards/cdpo.png": "8654c7aa2a3b1839d616c85c586bdf9f",
"assets/assets/about/awards/coso.png": "cda85e3f8b52fb09289f6559d6cc5b51",
"assets/assets/about/awards/csa.png": "7fba87fe6ff520723289eea568faa6ea",
"assets/assets/about/awards/iso20000.png": "a06aedc4c87c47ec453afbd3f43f6d6f",
"assets/assets/about/awards/iso22301.png": "9a0662b47e971a83b3e33daf4745f961",
"assets/assets/about/awards/iso27001.png": "12a13f4d0664f12b5156831b8989dd26",
"assets/assets/about/awards/iso27005.png": "7684ab02441518dd7c4da820cd0e8846",
"assets/assets/about/awards/iso27017.png": "1d979011fae82d5011dab017a9b8c847",
"assets/assets/about/awards/iso27018.png": "87177e0dbf6b69962e647d80efd4df9b",
"assets/assets/about/awards/iso27701.png": "28182e778e672c0d11f5408525fd15c9",
"assets/assets/about/awards/iso31000.png": "03824a42ae3422f35db4de9220d12e4f",
"assets/assets/about/awards/iso9001.png": "4c9445cd432da696ad6f7ac3a2ba8d15",
"assets/assets/about/banner/banner.png": "51fdc7fad7bfffc33706d968941e458c",
"assets/assets/about/banner/bg-banner.png": "b6a4b064a03dfdf34d2be542e004421e",
"assets/assets/about/banner/mobile.png": "573b73c29ad4c2bdb72e2c37b69d6d05",
"assets/assets/about/banner/tablet.png": "e4a148cae8d5804aefa5f475253d573c",
"assets/assets/about/who/comp.png": "986e2e67a34c36bcbdccd7fc763637a3",
"assets/assets/about/who/computer.png": "66908b8726abc9f7443404e806d24a06",
"assets/assets/about/who/diagram.png": "87aaa1eefb83a60a7fdff9e678b5d287",
"assets/assets/about/who/right.png": "d1f63ff463590a9044f68ade81e75adf",
"assets/assets/about/who/top.png": "27af6b65529c5021509e8dc1b4fdc3ef",
"assets/assets/about/who/union.png": "92029dc2f57e203b5ffaefd6ccecefd3",
"assets/assets/about/why/check.png": "0e00f3eab7e8c204e0bd587baa8ee92c",
"assets/assets/about/why/successful.png": "544c145a1ab15334c2443186d1aa659c",
"assets/assets/about/why/wisework.png": "f071ef25e790facdc8ca706cc9a01a8a",
"assets/assets/carousel/crs.png": "0b01401468e93c32ad27bcd5b8a5f45c",
"assets/assets/carousel/med_crs.png": "94fb92f0dd3cfb7337fee15ce8984dec",
"assets/assets/carousel/min_crs.png": "3909292c34ec5c69015a91fa030ca50d",
"assets/assets/contact/facebook.png": "4e1ca8ac982606d9feab7db592606b35",
"assets/assets/contact/instagram.png": "8b89cb8518297a07a00e10f8079b47ab",
"assets/assets/contact/mail.png": "5d6fffc34a5a24710699451d04d4ec74",
"assets/assets/contact/map.png": "7a7b4213f38eb8980ec8df2bcd8c461e",
"assets/assets/contact/phone.png": "8abf71dc004007ff1d15322806c02883",
"assets/assets/contact/plane.png": "df4ca4dcc6e5d0e9b953a409abb7ef6e",
"assets/assets/contact/route.png": "7409ffda3c16dfdf01b48f631be88bd8",
"assets/assets/contact/tiktok.png": "7465b0cfa91fa4b1811c515807a71421",
"assets/assets/contact/youtube.png": "264bf71299ca717a1a2213f4f5336c55",
"assets/assets/customer/advice-logo.png": "41f55252037063c50fda9a6632addc84",
"assets/assets/customer/advice.png": "e0d7114310015b00ed9f5012d770a6ad",
"assets/assets/customer/Amorn.png": "a3250aca28bcf48c65714406377adf2f",
"assets/assets/customer/Anan.png": "c5a3bf9a1bf9a5ab8668fca50bd5f798",
"assets/assets/customer/Ann.png": "4a5d12373144a8232980ab0237610bf8",
"assets/assets/customer/bdms.png": "5872de41d810ae820855b8c205687f36",
"assets/assets/customer/bitkub.png": "da8c5c7a804a036d513f3893da1cbbd2",
"assets/assets/customer/black-check.png": "e65bdbe75a5fae9a2462a87201f64a24",
"assets/assets/customer/boonrawd.png": "830acb72e08a8d6b4406f9ca4aa62160",
"assets/assets/customer/brr.png": "01e0edd57523030a6c6403c985b52460",
"assets/assets/customer/click.png": "50a521e0a49ffbe1a55f200369f07d4f",
"assets/assets/customer/comma.png": "805c9c26f8980f99449cdb2c3cfacda5",
"assets/assets/customer/daiichi.png": "22b7926d6bc735f65e1b06bd59297832",
"assets/assets/customer/ichitan.png": "419258390ca3b524919460e49dedfc25",
"assets/assets/customer/intrarat.png": "3906484628960df4d5f49501016aaeb6",
"assets/assets/customer/Ipad.png": "c6e54dd5230451ae444e0d51057b9bce",
"assets/assets/customer/Iphone.png": "30f3d459a0adc51c57b27adcc11cd37c",
"assets/assets/customer/Jirayuth.png": "8c3d53bb340b0db6348633d5f544f29c",
"assets/assets/customer/kdn.png": "4b3d5b4a65741e8b0734f2eeeb562591",
"assets/assets/customer/ku.png": "ac9a9b44c9259ac2a37fd53907363d57",
"assets/assets/customer/kyocera.png": "91b245a7a284173dfb61f3d68d3dd321",
"assets/assets/customer/laptop.png": "3a83f3f43afc165c9d2021d2f7a1afed",
"assets/assets/customer/lotus.png": "460671ac717a9504cff68686fd63a2a7",
"assets/assets/customer/meng.png": "ee0292b741a97347dd647e8a86872b02",
"assets/assets/customer/mobiles.png": "542dafa63dec3a9c344a059667a7df66",
"assets/assets/customer/muzik.png": "69bf7e9bd7695babb62657d7f0670c0a",
"assets/assets/customer/national-economic.png": "0ffda89c792a8b70016a3c09b5fca896",
"assets/assets/customer/nia.png": "aa6d72f3bc0d3c74c055416fe55992a8",
"assets/assets/customer/Nikhom.png": "0cb0cd490dde984213a05f1bcbc39b05",
"assets/assets/customer/notebook.png": "e1bf5f4aca1e9aab44193bb86551f2a4",
"assets/assets/customer/Nutt.png": "ad7cde64f8908484282510dfa3037ad7",
"assets/assets/customer/p-pat.png": "b1278e099602210360d159dd46ec5fb1",
"assets/assets/customer/Pachai.png": "a49a99e3ca31940485b185e712fb1d69",
"assets/assets/customer/pat.png": "f01663bb7dad404527b648aefd79110d",
"assets/assets/customer/process.png": "3fd3d49a4f31a1bf257c9964321be32b",
"assets/assets/customer/right.png": "d1f63ff463590a9044f68ade81e75adf",
"assets/assets/customer/rise-consulting.png": "f7cb3cc9ccbf095611fcf907e07aeb2c",
"assets/assets/customer/royalTH.png": "a36961d8511a350a17ef64fc2dc8f136",
"assets/assets/customer/santafe.png": "c98fa07a0b38ac8f605dc91a845aa828",
"assets/assets/customer/sbp.png": "953d76f31a51c97079f37528ea0f53f1",
"assets/assets/customer/singha-beer.png": "c79b2daa6aa54bf22e66341e78ed4602",
"assets/assets/customer/singha-park.png": "b02f5e66afac4cb7ed98681a601211bf",
"assets/assets/customer/singha.png": "3e96f2be64f93b06d09c5b0f147ba599",
"assets/assets/customer/team.png": "f47778a9eb912535138509c518070859",
"assets/assets/customer/top.png": "27af6b65529c5021509e8dc1b4fdc3ef",
"assets/assets/customer/tvo-th.png": "59a29c5493d716cdefffcd5ef01f39a8",
"assets/assets/customer/tvo.png": "a42ade941c21d6d63025f7ba8a49c928",
"assets/assets/customer/union.png": "92029dc2f57e203b5ffaefd6ccecefd3",
"assets/assets/customer/viriya-logo.png": "86124de39af825f50c2395bace4b937f",
"assets/assets/customer/viriya.png": "9e7d17f94cc9aa23ede837480fd7ece4",
"assets/assets/customer/win.png": "979081ba184bc4c76cdf27fdcc6a720c",
"assets/assets/demo/colab.png": "fdfceac789c2396c53c02e1f0c7f5f85",
"assets/assets/demo/dashboard.png": "f67552baf2574e4f3767ddf98ea4a4cd",
"assets/assets/demo/dot.png": "8f5a70724ab4a8d4d0882f4f8656fb10",
"assets/assets/demo/goal.png": "d4538ba03a2899888defb6ba7cde0300",
"assets/assets/demo/google.png": "a0de9ba32419dd0996c7b8b697c06754",
"assets/assets/demo/pic1.png": "b40d6f7fb91ad241849f53c531f3091a",
"assets/assets/demo/pic2.png": "7efc3bb4ebf4134a824b898325ad0c76",
"assets/assets/demo/pic3.png": "67d4743841c9aaf5310c4878425ccf96",
"assets/assets/demo/team.png": "d2b3da99400092a6f305603bf051a04d",
"assets/assets/faq/faq-bg.png": "a9ca67b10a1fb5be14b7499a80a3fa75",
"assets/assets/faq/faq-pic.png": "6a11395adf2350271ff58534595613ba",
"assets/assets/faq/half.png": "d4393ede126a75c0f4824172aa733bf6",
"assets/assets/faq/qa.png": "95c0e2fd97aa64609ad81e806e6ed767",
"assets/assets/faq/Union.png": "a34f1da4d13c3a5008310b47e7422a2e",
"assets/assets/features/AD01.png": "0b388b8b68bec4ff152bbc7667cba7a0",
"assets/assets/features/AD02.png": "6239540148ed3a25f9eada5bbae9bbdd",
"assets/assets/features/AD03.png": "d26b158ae7414ffed50f18e49f594dfa",
"assets/assets/features/AD04.png": "f9479051c9d75394667563a29a2b9758",
"assets/assets/features/audit.png": "3dd395726dfb52ff1e46d9577ef103e6",
"assets/assets/features/auditcard.png": "da93aba338b86724250a119c29aeaab8",
"assets/assets/features/blue-check.png": "617ed5d9a1dda2cb8d145b8606d6fe0a",
"assets/assets/features/breach.png": "597e5b43fde21a4fcd7529bfd0bd73ae",
"assets/assets/features/breachcard.png": "1dca86830e2ea75a9ce99662b653cedf",
"assets/assets/features/consent.png": "8a059717c09dad5c3e0484842bfdc142",
"assets/assets/features/cookie.png": "8a059717c09dad5c3e0484842bfdc142",
"assets/assets/features/cookiecard.png": "d6e4b634b8f7a0e0c0b7cad10ad795c3",
"assets/assets/features/CS01.png": "d5b15daa7d4d65d1cab833069654ec0c",
"assets/assets/features/CS02.png": "00f9d878b10ae50915baa3378c96f4b0",
"assets/assets/features/CS031.png": "aa37ad0875e77738bb2a33c3cda0ba46",
"assets/assets/features/data.png": "c79ac11b267bef3de84849751859308c",
"assets/assets/features/datacard.png": "c221f18939027cbb64dddfeb8aaf6b6d",
"assets/assets/features/DB01.png": "4d4f9b5ef71b002ac49f4506387cda10",
"assets/assets/features/DB02.png": "3fe112da97ecb3c5c88e70102351da31",
"assets/assets/features/DB03.png": "21d5eb83343b57e7616262d7e24c15b0",
"assets/assets/features/DB04.png": "f3049ad4a05aa68ca753b94da718aa4b",
"assets/assets/features/DD01.png": "a15cf72fc9d5cfc20a460b54556da8db",
"assets/assets/features/DD021.png": "24a4eb04573a0d214e9ebd13f5e595d6",
"assets/assets/features/DD03.png": "1456e6758709124c31f1509b90081197",
"assets/assets/features/discovery.png": "3781da04c2f245a330f1a5d24cc2c026",
"assets/assets/features/discoverycard.png": "1a80c3282764083cf52f3497aa5dc1c0",
"assets/assets/features/DPIA01.png": "2a16b7702ea3ee68d7499cc5f85b5e5f",
"assets/assets/features/DPIA02-1.png": "ecbdf7a8580d205289b23d37c0d35cf6",
"assets/assets/features/DPIA02.png": "05aadc8540390cc388e3b8e456b421b8",
"assets/assets/features/DPIA03.png": "006340cac4a253e4af6b4bdfa091e86a",
"assets/assets/features/DPIA04.png": "7c21c1302e07544a20e424381512f169",
"assets/assets/features/dpiacard.png": "48ff641ba878cb992dedd280f256b94f",
"assets/assets/features/DSR011.png": "0484f758dcd16cdfe19501e93883e8cb",
"assets/assets/features/DSR02.png": "826e0d2a1c6d767d2bddc689a7b04e71",
"assets/assets/features/DSR03.png": "de054712bf4cf238e28d76d086b4fe71",
"assets/assets/features/DSR04.png": "5029d67bcd86d010ef0ae667ccf7598d",
"assets/assets/features/DSR05.png": "bf8ce184b5d651a11a8867e8eef6cd05",
"assets/assets/features/ES01.png": "d900dc16492e53c4a8546a78602bf26d",
"assets/assets/features/ES02.png": "f824be4d8912614187686038eb78ef6c",
"assets/assets/features/ES03.png": "9e2a65a6d754d216e2587f08811f40da",
"assets/assets/features/ES04.png": "e58bd13132725c5b0f12c46cb14f43d5",
"assets/assets/features/executive.png": "edd5eac4303403f4072104f903c5ff2e",
"assets/assets/features/executivecard.png": "91a0162e3e3891bdab5b6a25d6fccba0",
"assets/assets/features/folder.png": "275f75b03c52a01ebe630d9ebe119c63",
"assets/assets/features/legi.png": "4db879a2cc49b263883959a60816bd3c",
"assets/assets/features/legicard.png": "b72b99b62f0012cb9581f81d9a094053",
"assets/assets/features/LIA01.png": "ce901ac149528a3ae1d4b3b61177627d",
"assets/assets/features/LIA02.png": "ad4d3a4ec58ec21126f42cec7a6abef8",
"assets/assets/features/LIA03.png": "cd17a17fbe84b3e6539934dc2729ac04",
"assets/assets/features/LIA04.png": "4bfc5edb3b6f95736c7d509d9e48dda3",
"assets/assets/features/PAN01.png": "9d8e677af48aea20bae16879dd88d5f6",
"assets/assets/features/PAN02.png": "e7075a8271c029d838ec18245d310247",
"assets/assets/features/pd00.png": "f8db68ca7b11f56367e15182af9d81e5",
"assets/assets/features/pd01.png": "460d75b35c35c4d7f403240ce04a946a",
"assets/assets/features/pd02.png": "5627d00dfa3ae8e714e24ec1738536da",
"assets/assets/features/pd03.png": "7ba95af40e13f2b26b69a46ff4c7c1ee",
"assets/assets/features/pdcard.png": "d41fad32091c71e38baab941124fb936",
"assets/assets/features/policy.png": "dcb75b1e6df0a4e70a3858c35cb9ee51",
"assets/assets/features/policycard.png": "cd48307185432c6267693f9ec1c4ed5e",
"assets/assets/features/risk.png": "9e55e3b989165c012373c3339487de3b",
"assets/assets/features/ST011.png": "4ec56b8984f0b5b4b75689f1f4576bc4",
"assets/assets/features/ST02.png": "925631955968889a170ff8782bef3e1e",
"assets/assets/features/ST03.png": "c7ee38a2cc90e46e77ded6b3eb30be8a",
"assets/assets/features/ST041.png": "82f5734107cf3575b1d71f14294c7ffa",
"assets/assets/features/system.png": "6cfb6fdaa7221301804ed318819ab26a",
"assets/assets/features/systemcard.png": "ace030a6c0768587f4fc22f5c3cf2c60",
"assets/assets/features/white-check.png": "15302e3ad15b814b51e6c8530eea20a9",
"assets/assets/featuresData.json": "115ff09faefdac28c6de0d6c9465a5bd",
"assets/assets/footer/call-icon.png": "a14fb6077a8c49610eff6cc2cfea42fd",
"assets/assets/footer/email-icon.png": "2c674a6f1832907809ee4d06d9f083b7",
"assets/assets/footer/fb.png": "a432ab19f7211fb8244b1b74e4a34a0d",
"assets/assets/footer/ig.png": "073d67651fe89c5c751dde4ba94b04ca",
"assets/assets/footer/location.png": "bd2ede533ac82b7d39270bc6f57f2607",
"assets/assets/footer/logo.png": "e238644ed85d47e7798985ed7172b62e",
"assets/assets/footer/mail.png": "37dff61a58317db692fd86bd950a90af",
"assets/assets/footer/send.png": "4f8a7b879257033ab05b18a084bc71af",
"assets/assets/footer/tel.png": "343205707853144b7956111f31de5ad3",
"assets/assets/footer/tiktok.png": "c22c864e97216627ac398aec2d612af3",
"assets/assets/footer/yt.png": "9ea2be2f1ae80e3a202b28e6afec4783",
"assets/assets/logo.png": "e238644ed85d47e7798985ed7172b62e",
"assets/assets/packages/check.png": "30925a906411381cda89c6207e643b70",
"assets/assets/packages/cloud.png": "2dca28bd052ec2d3d37324fc7f0ab7aa",
"assets/assets/packages/clouds.png": "cd11b58d1ebf5d6d1252d6778885d6c1",
"assets/assets/packages/cross.png": "fd9da9f340f567f322b7e0839ec33f7d",
"assets/assets/packages/lock.png": "75d279d67747e6b508ffd43365027650",
"assets/assets/packages/rainbow_cloud.png": "a961f907cc7474131dd2d6760c47fc5a",
"assets/assets/packages/record.png": "7e002bcc6a43b281989b40b0ef77cd67",
"assets/assets/packagesData.json": "475d0bb64e7468e58ccb51a46b675f8b",
"assets/assets/pdpa/check.png": "e5f0697437fa9926d275fc2937642225",
"assets/assets/pdpa/mobile.png": "0d2962439a74ef0b33497266f855f835",
"assets/assets/pdpa/pdpa.png": "438017c90ea237128122a45439348754",
"assets/assets/pdpa/phone.png": "6acd9fa4097285695068a36a53c7c802",
"assets/assets/product/blue_cloud.png": "c66b06358bc74fa5c07e1f97a1a5e50e",
"assets/assets/product/blue_clouds.png": "0cedf3f38947eb923aeb32c0e30866d0",
"assets/assets/product/blue_rainbow.png": "a98a363959a8f3e8f735dd949bfd4106",
"assets/assets/product/check.png": "3f28f9f1c672f84732f4911bd812ef7b",
"assets/assets/product/choices.png": "e1394ddfb16981bd705bc265a3f71c82",
"assets/assets/product/creative.png": "4086781f95f2fe920fc92f0c2863cac8",
"assets/assets/product/enterprise.png": "2e2a0b522cdefe7a81b9d0137cef12fb",
"assets/assets/product/express.png": "ab145934e8d07e49f1f8060ee0cbbe29",
"assets/assets/product/mobile_creative.png": "25a714ae7a30441daa8c9ae5e46dbb42",
"assets/assets/product/select.png": "6c336db5a3228872e3a40d6440c92ea5",
"assets/assets/product/standard.png": "830a26dd196504401998790bf25f062f",
"assets/assets/story/record.png": "578d1fd4318f120fb16465b340bc4a4a",
"assets/assets/story/storybg.png": "bfe43ca2eaeb159078506fc1a402c59f",
"assets/assets/story/storypic.png": "a657df9dd8a2e7309a3b59a51ff0f0b7",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "49bf1d40b6cd97099295deffddccf66a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"assets/shaders/ink_sparkle.frag": "72a83ced9f2d46d2f890cb387d80e2bb",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "61a5734a3c3b56a057ef45de5d09fd76",
"/": "61a5734a3c3b56a057ef45de5d09fd76",
"main.dart.js": "b459be42264a66daa251da727ad7c8c9",
"manifest.json": "26afcf623e5cd36909b9cc815c07ac76",
"version.json": "419e865cc3a264e6063a854d83f30bfe"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
