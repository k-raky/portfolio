'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"version.json": "009c9e65172e010890f7f65fde438006",
"flutter_bootstrap.js": "9f713e4ffe8a1216fcd5ebd81d9deaeb",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"main.dart.js": "6e3b5755a0409bcd345d2c7602bbb63e",
"index.html": "df92217e37dafd3aa70a9330d9a601ca",
"/": "df92217e37dafd3aa70a9330d9a601ca",
"assets/AssetManifest.json": "3bf48e25beb6166af077ce3b3e2362cd",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/AssetManifest.bin": "0ae81352c0a1036e8ba8232e0d5a86ec",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "ad05d8e7c4ae901922ca1114cf654d65",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b17b305d3195f2faf295b77afae0fe06",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/FontManifest.json": "2e96b8b3d1c41add2f477360565b43c3",
"assets/AssetManifest.bin.json": "9335eba3a84b53ef3908295bef295917",
"assets/NOTICES": "32e95019c94f9c724ad221d11795bd10",
"assets/assets/files/RakyKane_CV.pdf": "e23e284c2d82b945a446675fc44df83c",
"assets/assets/images/canvaLogo.png": "ba9d0be566ccc46a25c59e7e10333492",
"assets/assets/images/flflowLogo.png": "8fe29588be20720c4feb147fc8f8ad32",
"assets/assets/images/jeeName.png": "0ee1e8bb55dc10bb06cd7d860f1ec192",
"assets/assets/images/mongoName.png": "9901196314ca955dce569227bec901b1",
"assets/assets/images/rnName.png": "bf43b5da0d22eed765ca7e08bdca35d3",
"assets/assets/images/jairy.png": "b71693357bdf9343b1df6875bddb307a",
"assets/assets/images/loopAlarm.png": "d32369471363058e121ff3ff19c831f2",
"assets/assets/images/figmaName.png": "a1b2b103de4020214c86be3a34405384",
"assets/assets/images/portfolio.png": "ec564b27ea2beb628ff239793e3a2a60",
"assets/assets/images/wosto.png": "4d0b7e8839fbd2e91b32295f03cb7c08",
"assets/assets/images/firebaseLogo.png": "b5f16a04bf7968f60d294cfd8f277742",
"assets/assets/images/phpName.png": "6f9208f4c38b8539cbeb7509970aa7d7",
"assets/assets/images/phpLogo.png": "8586c9dbc2d2040225c230369d380dc9",
"assets/assets/images/laravelLogo.png": "c6282d729de68755d4be2755fd087400",
"assets/assets/images/bootstrapLogo.png": "d1b378e7ece87e2d06aac1f15324b840",
"assets/assets/images/jsit.png": "44dff4408b527a10eb45ff6f9aa82af3",
"assets/assets/images/firebaseName.png": "b7449a7fdf3c37a92da51104dbc2d168",
"assets/assets/images/framerName.png": "412fdd329b0a0baf6d884808983e197b",
"assets/assets/images/linkedin.png": "11bd1e271b796223baec4e85a730162c",
"assets/assets/images/reactName.png": "8b02ce531c1efc7cdbd565ddd824276d",
"assets/assets/images/pgadminName.png": "6edd92ddec25400483d5a5a71db630a7",
"assets/assets/images/gmail.png": "e173bb4a9c6ad25e846efe3172949f28",
"assets/assets/images/springLogo.png": "ce1302aa426291522bd99496fb099ce3",
"assets/assets/images/framerLogo.png": "53bc550df0386ad9e107a879ba50078d",
"assets/assets/images/reactLogo.png": "b519e26b769bf77afd55ec162352525f",
"assets/assets/images/lebal3.png": "1abb22d4d5169a54410bdb9805a14fcf",
"assets/assets/images/lebal.png": "e07423765f8e3afdfd620898a27ed231",
"assets/assets/images/mongoLogo.png": "4223ad7455a1bc8d2c735e2bd3e01392",
"assets/assets/images/postgresName.png": "a08ed7a38a69f9027d06a3ab8cd4fbe8",
"assets/assets/images/postgresLogo.png": "3a0ec50de00eab7741e7ed00d3f3b7c0",
"assets/assets/images/myadminName.png": "16150716bd4861f25f405ec9ab77487f",
"assets/assets/images/flutterLogo.png": "3f52af9376e450e653fd4d8b1b00e98d",
"assets/assets/images/bye.png": "484ba7d58c27a8cc1421d20ceadd5d5b",
"assets/assets/images/figmaLogo.png": "f8416e84fb62bfbdb54922af4bd9995c",
"assets/assets/images/bootstrapName.png": "df052297af6fc3272f7b0e280087a5a7",
"assets/assets/images/mysqlName.png": "539ebdbf7fa65e1dee9fb7d9b7c34a66",
"assets/assets/images/niokomom.png": "ae3866edad53c255b86e714c9cef05b0",
"assets/assets/images/memoji.png": "28fa93a3ed4e096cd113861f7bd4e55b",
"assets/assets/images/mysqlLogo.png": "b625b91a75fe5d57653f71046df35060",
"assets/assets/images/flutterName.png": "346877ff55a6505fb8d61858e1f8af50",
"assets/assets/images/springName.png": "482034229f2225db23c8ec60672988a1",
"assets/assets/images/lebal2.png": "7eb02788d642c57fa3fe6e8a2c861f87",
"assets/assets/images/laravelName.png": "d89a59d51a7c7ad1014da158d905c06d",
"assets/assets/images/memojiCallme.png": "5bc096745f1926fce808a0bb001383dd",
"assets/assets/images/flflowName.png": "9e13b5a67ca8737ff3900fc2ad36eab0",
"assets/assets/images/jeeLogo.png": "2a55066184892ea06c978fe2c267e2fc",
"assets/assets/images/canvaName.png": "7cebae02734cd16b9d0a023b3c33be48",
"assets/assets/fonts/Montserrat-ExtraLight.ttf": "fca7947b08333e5ffcb80c069755b5c9",
"assets/assets/fonts/CormorantGaramond-Italic.ttf": "6f96488d4a6352608c20b2621e5b2227",
"assets/assets/fonts/Montserrat-Medium.ttf": "b3ba703c591edd4aad57f8f4561a287b",
"assets/assets/fonts/Quicksand-Light.ttf": "34d0d3091e4f3de26ff0f2c4a4f6bfb7",
"assets/assets/fonts/CinzelDecorative-Regular.ttf": "82162fab2e5b2e53e84c1f6762f33012",
"assets/assets/fonts/Montserrat-BoldItalic.ttf": "9d216a715551da3b92a4a9b0e8994868",
"assets/assets/fonts/Montserrat-Light.ttf": "e65ae7ed560da1a63db603bd8584cfdb",
"assets/assets/fonts/Quicksand-Medium.ttf": "890d9ed927bb7f0c6b9eed04f9c329e5",
"assets/assets/fonts/Montserrat-Thin.ttf": "4b73d125bab54f94ed2510590c237f73",
"assets/assets/fonts/Montserrat-ExtraBold.ttf": "bd8fb30c6473177cfb9a5544c9ad8fdb",
"assets/assets/fonts/CormorantGaramond-Light.ttf": "23e4d6b7457958d1023e5f26b3f3d5d2",
"assets/assets/fonts/CormorantGaramond-MediumItalic.ttf": "7babb6914ac2320e91adec11ecabb54a",
"assets/assets/fonts/Montserrat-Italic.ttf": "761177c558bb3a0084aa85704315b990",
"assets/assets/fonts/Quicksand-SemiBold.ttf": "60683c595c4de500713906b9ccf1e2ab",
"assets/assets/fonts/Montserrat-LightItalic.ttf": "e70e5d8d5129f35418fe2cfaa6132c1d",
"assets/assets/fonts/Montserrat-ThinItalic.ttf": "59cdce8fbd384a39ab0fd14b9f693de5",
"assets/assets/fonts/Montserrat-BlackItalic.ttf": "a943ff860cf7bda5ce3722cad5c1dc06",
"assets/assets/fonts/CormorantGaramond-SemiBold.ttf": "7a44ea381bbb72965efb8d515d558621",
"assets/assets/fonts/CormorantGaramond-Medium.ttf": "5e7d2ba2f6b625a7cbfcc293d2ec247b",
"assets/assets/fonts/CormorantGaramond-Regular.ttf": "8d38bcc84080a67c9d1630fd3141f7f3",
"assets/assets/fonts/CormorantGaramond-LightItalic.ttf": "50347e073ffa8d55ff58d03e41baa266",
"assets/assets/fonts/Montserrat-Regular.ttf": "3fe868a1a9930b59d94d2c1d79461e3c",
"assets/assets/fonts/Quicksand-Bold.ttf": "517b4a8fa3577cc7066e9bcfebe4beff",
"assets/assets/fonts/Montserrat-SemiBoldItalic.ttf": "d41c0a341637c2e35ae019730b2d45a5",
"assets/assets/fonts/CormorantGaramond-BoldItalic.ttf": "634124fb5152b8db4773cab0894cb5c2",
"assets/assets/fonts/Montserrat-SemiBold.ttf": "fb428a00b04d4e93deb4d7180814848b",
"assets/assets/fonts/Montserrat-MediumItalic.ttf": "2e7c02a0a4a5fd318b0625d120ad2033",
"assets/assets/fonts/Montserrat-ExtraBoldItalic.ttf": "e07b3f35e3e0073b2cde4c5a951cc24e",
"assets/assets/fonts/Montserrat-Bold.ttf": "1f023b349af1d79a72740f4cc881a310",
"assets/assets/fonts/CinzelDecorative-Bold.ttf": "a388d4f6e855b334da95b975bb30bf4d",
"assets/assets/fonts/CinzelDecorative-Black.ttf": "9a2d88fdd78655d13ff1c93e62b998da",
"assets/assets/fonts/CormorantGaramond-Bold.ttf": "d2f41939e8d24b563077bdc4a8137e91",
"assets/assets/fonts/Montserrat-ExtraLightItalic.ttf": "e4d0c1f4d67a7f3d23a1f2f78d24ea57",
"assets/assets/fonts/CormorantGaramond-SemiBoldItalic.ttf": "ac1eb755211b8c89fb45e556f1b8eb9e",
"assets/assets/fonts/Montserrat-Black.ttf": "9c1278c56276b018109f295c1a751a69",
"assets/assets/fonts/Quicksand-Regular.ttf": "3dfedd2b3e7b35ec3ac8a295a166a880",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
