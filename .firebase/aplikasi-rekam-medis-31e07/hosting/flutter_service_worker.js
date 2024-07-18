'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "0a4ff9db56629d97ee4e0e95a81de01a",
"assets/AssetManifest.bin.json": "f811c217f57db463be34f478f3c394b2",
"assets/AssetManifest.json": "5b19f6d647455c0e734040d6ced6520d",
"assets/assets/icons/ellipse_1_x2.svg": "a880c9957183568d2417c3a6b272c5db",
"assets/assets/icons/ellipse_2_x2.svg": "a880c9957183568d2417c3a6b272c5db",
"assets/assets/icons/ellipse_3_x2.svg": "a880c9957183568d2417c3a6b272c5db",
"assets/assets/icons/ellipse_4_x2.svg": "24583449afa2b736e70bd326cc1daf36",
"assets/assets/icons/tombol_daftar_1_x2.svg": "4f627a6248dc511cd93c887bcbbc6a61",
"assets/assets/icons/tombol_daftar_x2.svg": "4f627a6248dc511cd93c887bcbbc6a61",
"assets/assets/images/amoxicillin_1.png": "0841d52afe912c1454ee2e7cbc777ce8",
"assets/assets/images/berobat.png": "c9c9045247b161032479e4687eb97ba7",
"assets/assets/images/cart_1.png": "ace5324ce4ee5646f084de2b8c5a7889",
"assets/assets/images/cart_11.png": "16c373c57ba3687465a7952d5dc668b6",
"assets/assets/images/ceklis_removebg_preview_1.png": "4d848ce8476928872d19cee35233ec9f",
"assets/assets/images/data_pasien.png": "da1ba94209027c5422b5c2085c3381c3",
"assets/assets/images/home_1.png": "8dd5a259031ba8cc154ec891ba6c18bb",
"assets/assets/images/imun_1.png": "5f89c08eada41e512367f4bd6dd18e5b",
"assets/assets/images/logobidanku_1.png": "733253bc08698bc7da9dcca2de642203",
"assets/assets/images/logoku_1.png": "05e3c8616dde87248848891e644c431a",
"assets/assets/images/mefinal_1.png": "3fd26f5e044770479adbd5b0134928f3",
"assets/assets/images/metformin_1.png": "0f52cfada71be7294156dd26cda8fddb",
"assets/assets/images/obat_1.png": "68577efb75eaf8baab5464c1e5a41817",
"assets/assets/images/pamol_1.png": "cd6ce962ff9683b1b2682265b3db3b75",
"assets/assets/images/profile_2.png": "98af4baa8ee2e5719f1a747b0a242fb2",
"assets/assets/images/promag_1.png": "6c6801a866ecace63f66e344c22b438b",
"assets/assets/images/riwayat_berobat_1.png": "d44a0bbd1e5ef886cf4735a12672a8ea",
"assets/assets/images/suntikan_1.png": "41c3a0f181abfb9292621bbbbcde3220",
"assets/assets/images/ventolin_1.png": "32a176966861069739fb69c53ebb4ebf",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0e8fd7b7118610ba86ed74a3cca6123a",
"assets/NOTICES": "27d5bc3ec8b77b7edaf14b20057188bb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "8862aee033b4a7da76d9ef957f14fbef",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e0dc990d7f11bd549090e99643d05816",
"/": "e0dc990d7f11bd549090e99643d05816",
"main.dart.js": "2bab1564ffe559f5d469e60fee48ae6b",
"manifest.json": "71e0154c18320c9ca4cbf26c3e30935d",
"version.json": "389a6e6e6f34312743ca5f36467c84b5"};
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
