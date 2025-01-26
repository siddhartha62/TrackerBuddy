; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [355 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [704 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 210
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 275
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 309
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 7: Newtonsoft.Json.dll => 0x254c520 => 230
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 9: System.Threading.Thread => 0x28aa24d => 145
	i32 65960268, ; 10: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 229
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 350
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 228
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 293
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 293
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 123514077, ; 20: EPPlus.dll => 0x75cacdd => 178
	i32 134690465, ; 21: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 313
	i32 142721839, ; 22: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 23: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 24: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 25: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 249
	i32 176265551, ; 26: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 27: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 295
	i32 184328833, ; 28: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 29: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 347
	i32 199333315, ; 30: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 348
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 247
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 269
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 39: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 196
	i32 261689757, ; 40: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 252
	i32 262645399, ; 41: Blazorise => 0xfa7a697 => 173
	i32 276479776, ; 42: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 271
	i32 280482487, ; 44: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 268
	i32 280992041, ; 45: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 319
	i32 291076382, ; 46: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 47: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 48: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 347
	i32 318968648, ; 49: Xamarin.AndroidX.Activity.dll => 0x13031348 => 238
	i32 321597661, ; 50: System.Numerics => 0x132b30dd => 83
	i32 325726901, ; 51: Blazorise.Bootstrap.dll => 0x136a32b5 => 174
	i32 336156722, ; 52: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 332
	i32 342366114, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 270
	i32 356389973, ; 54: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 331
	i32 360082299, ; 55: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 56: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 57: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 58: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 59: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 60: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 61: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 62: _Microsoft.Android.Resource.Designer => 0x17969339 => 351
	i32 403441872, ; 63: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 64: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 343
	i32 441335492, ; 65: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 253
	i32 442565967, ; 66: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 67: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 266
	i32 451504562, ; 68: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 69: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 70: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 71: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 72: System.dll => 0x1bff388e => 164
	i32 476646585, ; 73: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 268
	i32 486930444, ; 74: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 281
	i32 498788369, ; 75: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 76: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 330
	i32 503918385, ; 77: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 324
	i32 513247710, ; 78: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 220
	i32 526420162, ; 79: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 80: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 313
	i32 530272170, ; 81: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 82: Microsoft.Extensions.Logging => 0x20216150 => 216
	i32 540030774, ; 83: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 84: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 85: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 86: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 87: Jsr305Binding => 0x213954e7 => 306
	i32 569601784, ; 88: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 304
	i32 571435654, ; 89: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 213
	i32 577335427, ; 90: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 91: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 338
	i32 601371474, ; 92: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 93: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 606421715, ; 94: itext.layout => 0x242542d3 => 187
	i32 613668793, ; 95: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 96: Xamarin.AndroidX.CustomView => 0x2568904f => 258
	i32 627931235, ; 97: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 336
	i32 639843206, ; 98: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 264
	i32 643868501, ; 99: System.Net => 0x2660a755 => 81
	i32 662205335, ; 100: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 101: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 300
	i32 666292255, ; 102: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 245
	i32 672442732, ; 103: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 104: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 105: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 318
	i32 690569205, ; 106: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 107: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 315
	i32 693804605, ; 108: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 109: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 110: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 310
	i32 700358131, ; 111: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 112: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 333
	i32 709152836, ; 113: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 233
	i32 709557578, ; 114: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 321
	i32 720511267, ; 115: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 314
	i32 722857257, ; 116: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 117: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 118: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 119: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 235
	i32 759454413, ; 120: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 121: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 122: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 123: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 342
	i32 789151979, ; 124: Microsoft.Extensions.Options => 0x2f0980eb => 219
	i32 790371945, ; 125: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 259
	i32 794464650, ; 126: EPPlus.Interfaces => 0x2f5a918a => 179
	i32 804008546, ; 127: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 200
	i32 804715423, ; 128: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 273
	i32 809851609, ; 130: System.Drawing.Common.dll => 0x30455ad9 => 231
	i32 823281589, ; 131: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 132: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 133: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 134: System.Net.Quic => 0x31b69d60 => 71
	i32 836426454, ; 135: Blazorise.Icons.FontAwesome => 0x31dadad6 => 176
	i32 843511501, ; 136: Xamarin.AndroidX.Print => 0x3246f6cd => 286
	i32 873119928, ; 137: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 138: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 139: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 140: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 141: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 911441577, ; 142: Blazorise.Licensing.dll => 0x36537ea9 => 177
	i32 917108320, ; 143: itext.io => 0x36a9f660 => 185
	i32 926902833, ; 144: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 345
	i32 928116545, ; 145: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 309
	i32 952186615, ; 146: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 147: Newtonsoft.Json => 0x38f24a24 => 230
	i32 956575887, ; 148: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 314
	i32 966729478, ; 149: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 307
	i32 967690846, ; 150: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 270
	i32 971744099, ; 151: itext.barcodes.dll => 0x39eba363 => 182
	i32 975236339, ; 152: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 153: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 154: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 155: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 156: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 157: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 158: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 215
	i32 1001831731, ; 159: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 160: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 290
	i32 1019214401, ; 161: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 162: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 209
	i32 1029334545, ; 163: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 320
	i32 1031528504, ; 164: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 308
	i32 1035644815, ; 165: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 243
	i32 1036536393, ; 166: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 167: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 168: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 277
	i32 1067306892, ; 169: GoogleGson => 0x3f9dcf8c => 181
	i32 1067609627, ; 170: itext.forms => 0x3fa26e1b => 184
	i32 1074246011, ; 171: itext.kernel.dll => 0x4007b17b => 186
	i32 1082857460, ; 172: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 173: Xamarin.Kotlin.StdLib => 0x409e66d8 => 311
	i32 1098259244, ; 174: System => 0x41761b2c => 164
	i32 1099692271, ; 175: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 202
	i32 1106973742, ; 176: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 206
	i32 1118262833, ; 177: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 333
	i32 1121599056, ; 178: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 276
	i32 1127624469, ; 179: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 218
	i32 1149092582, ; 180: Xamarin.AndroidX.Window => 0x447dc2e6 => 303
	i32 1168523401, ; 181: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 339
	i32 1170634674, ; 182: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 183: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 211
	i32 1175144683, ; 184: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 299
	i32 1178241025, ; 185: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 284
	i32 1203215381, ; 186: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 337
	i32 1204270330, ; 187: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 245
	i32 1208641965, ; 188: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1216319277, ; 189: Blazorise.Icons.FontAwesome.dll => 0x487f8f2d => 176
	i32 1219128291, ; 190: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1222247595, ; 191: itext.pdfua.dll => 0x48da04ab => 189
	i32 1234928153, ; 192: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 335
	i32 1243150071, ; 193: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 304
	i32 1245460359, ; 194: itext.svg => 0x4a3c3787 => 192
	i32 1250430400, ; 195: itext.commons.dll => 0x4a880dc0 => 193
	i32 1253011324, ; 196: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 197: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 319
	i32 1264511973, ; 198: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 294
	i32 1267360935, ; 199: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 298
	i32 1273260888, ; 200: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 250
	i32 1275534314, ; 201: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 315
	i32 1278448581, ; 202: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 242
	i32 1278779541, ; 203: itext.pdfa.dll => 0x4c38a095 => 188
	i32 1293217323, ; 204: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 261
	i32 1309188875, ; 205: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 206: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 303
	i32 1324164729, ; 207: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 208: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 209: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 210: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 349
	i32 1376866003, ; 211: Xamarin.AndroidX.SavedState => 0x52114ed3 => 290
	i32 1379779777, ; 212: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1392045092, ; 213: Lambda2Js => 0x52f8ec24 => 194
	i32 1402170036, ; 214: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 215: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 254
	i32 1408764838, ; 216: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 217: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 218: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 219: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 317
	i32 1434145427, ; 220: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 221: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 307
	i32 1439761251, ; 222: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 223: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 224: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 225: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 212
	i32 1457743152, ; 226: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 227: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 228: es\Microsoft.Maui.Controls.resources => 0x57152abe => 323
	i32 1461234159, ; 229: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 230: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 231: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 232: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 244
	i32 1470490898, ; 233: Microsoft.Extensions.Primitives => 0x57a5e912 => 220
	i32 1479011226, ; 234: EPPlus => 0x5827eb9a => 178
	i32 1479771757, ; 235: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 236: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 237: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1488664300, ; 238: itext.bouncy-castle-connector.dll => 0x58bb36ec => 183
	i32 1490025113, ; 239: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 291
	i32 1493001747, ; 240: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 327
	i32 1514721132, ; 241: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 322
	i32 1521091094, ; 242: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 215
	i32 1536373174, ; 243: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 244: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 245: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 246: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 200
	i32 1550322496, ; 247: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 248: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 342
	i32 1551954004, ; 249: Microsoft.IO.RecyclableMemoryStream.dll => 0x5c80f054 => 221
	i32 1565862583, ; 250: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 251: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 252: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 253: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 254: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 260
	i32 1592978981, ; 255: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 256: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 308
	i32 1599460131, ; 257: TrackerBuddy.dll => 0x5f55d323 => 0
	i32 1601112923, ; 258: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 259: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 260: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 261: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 280
	i32 1622358360, ; 262: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 263: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 302
	i32 1631539578, ; 264: EPPlus.System.Drawing.dll => 0x613f517a => 180
	i32 1632842087, ; 265: Microsoft.Extensions.Configuration.Json => 0x61533167 => 207
	i32 1635184631, ; 266: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 264
	i32 1636350590, ; 267: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 257
	i32 1639515021, ; 268: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 269: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 270: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 271: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 199
	i32 1657153582, ; 272: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 273: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 296
	i32 1658251792, ; 274: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 305
	i32 1670060433, ; 275: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 252
	i32 1672083785, ; 276: itext.pdfa => 0x63a9f949 => 188
	i32 1675553242, ; 277: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 278: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 279: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 280: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 281: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 282: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 283: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 312
	i32 1701541528, ; 284: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 285: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 273
	i32 1726116996, ; 286: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 287: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 288: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 248
	i32 1736233607, ; 289: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 340
	i32 1743415430, ; 290: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 318
	i32 1744735666, ; 291: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 292: System.IO.Pipelines.dll => 0x68139a0d => 232
	i32 1746316138, ; 293: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 294: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 295: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 296: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 198
	i32 1763938596, ; 297: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 298: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 299: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 295
	i32 1770582343, ; 300: Microsoft.Extensions.Logging.dll => 0x6988f147 => 216
	i32 1776026572, ; 301: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 302: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 303: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 304: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 334
	i32 1788241197, ; 305: Xamarin.AndroidX.Fragment => 0x6a96652d => 266
	i32 1793755602, ; 306: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 326
	i32 1808609942, ; 307: Xamarin.AndroidX.Loader => 0x6bcd3296 => 280
	i32 1813058853, ; 308: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 311
	i32 1813201214, ; 309: Xamarin.Google.Android.Material => 0x6c13413e => 305
	i32 1818569960, ; 310: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 285
	i32 1818787751, ; 311: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 312: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 313: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 314: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 217
	i32 1842015223, ; 315: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 346
	i32 1847515442, ; 316: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 235
	i32 1853025655, ; 317: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 343
	i32 1858542181, ; 318: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 319: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 320: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 325
	i32 1879696579, ; 321: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 322: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 246
	i32 1888955245, ; 323: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 324: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1894524299, ; 325: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 202
	i32 1898237753, ; 326: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 327: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 328: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 329: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 330: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 331: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 292
	i32 1968388702, ; 332: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 203
	i32 1983156543, ; 333: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 312
	i32 1985761444, ; 334: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 237
	i32 2003115576, ; 335: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 322
	i32 2011961780, ; 336: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 337: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 277
	i32 2025202353, ; 338: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 317
	i32 2031763787, ; 339: Xamarin.Android.Glide => 0x791a414b => 234
	i32 2045470958, ; 340: System.Private.Xml => 0x79eb68ee => 88
	i32 2045845235, ; 341: itext.pdfua => 0x79f11ef3 => 189
	i32 2048278909, ; 342: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 205
	i32 2055257422, ; 343: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 272
	i32 2060060697, ; 344: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 345: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 321
	i32 2070888862, ; 346: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 347: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 214
	i32 2079903147, ; 348: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 349: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2101448363, ; 350: Blazorise.Bootstrap => 0x7d418eab => 174
	i32 2127167465, ; 351: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 352: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143465592, ; 353: Microsoft.IO.RecyclableMemoryStream => 0x7fc2b078 => 221
	i32 2143790110, ; 354: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 355: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 356: Microsoft.Maui => 0x80bd55ad => 226
	i32 2169148018, ; 357: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 329
	i32 2181898931, ; 358: Microsoft.Extensions.Options.dll => 0x820d22b3 => 219
	i32 2192057212, ; 359: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 217
	i32 2193016926, ; 360: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 361: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 210
	i32 2201107256, ; 362: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 316
	i32 2201231467, ; 363: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 364: it\Microsoft.Maui.Controls.resources => 0x839595db => 331
	i32 2217644978, ; 365: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 299
	i32 2222056684, ; 366: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 367: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 281
	i32 2252106437, ; 368: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 369: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 370: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 371: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 204
	i32 2267999099, ; 372: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 236
	i32 2270573516, ; 373: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 325
	i32 2279755925, ; 374: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 288
	i32 2293034957, ; 375: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 376: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 377: System.Net.Mail => 0x88ffe49e => 66
	i32 2298796049, ; 378: EPPlus.System.Drawing => 0x8904d811 => 180
	i32 2303942373, ; 379: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 335
	i32 2305521784, ; 380: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 381: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 240
	i32 2320631194, ; 382: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 383: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 384: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 385: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 386: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 387: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 203
	i32 2378619854, ; 388: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 389: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 390: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 330
	i32 2401565422, ; 391: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 392: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 263
	i32 2411328690, ; 393: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 196
	i32 2421380589, ; 394: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 395: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 250
	i32 2427813419, ; 396: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 327
	i32 2435356389, ; 397: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 398: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 399: Microsoft.JSInterop.dll => 0x919672ca => 222
	i32 2454642406, ; 400: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 401: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 402: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2462798629, ; 403: Blazorise.dll => 0x92cb5325 => 173
	i32 2465532216, ; 404: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 253
	i32 2471841756, ; 405: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 406: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 407: Microsoft.Maui.Controls => 0x93dba8a1 => 224
	i32 2483903535, ; 408: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 409: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 410: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 411: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2504284003, ; 412: Blazorise.Charts => 0x95445763 => 175
	i32 2505896520, ; 413: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 275
	i32 2522472828, ; 414: Xamarin.Android.Glide.dll => 0x9659e17c => 234
	i32 2537015816, ; 415: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 195
	i32 2538310050, ; 416: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2548432851, ; 417: EPPlus.Interfaces.dll => 0x97e5ffd3 => 179
	i32 2550873716, ; 418: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 328
	i32 2562349572, ; 419: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2566497382, ; 420: itext.bouncy-castle-connector => 0x98f9a466 => 183
	i32 2570120770, ; 421: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2573607077, ; 422: itext.kernel => 0x996620a5 => 186
	i32 2581783588, ; 423: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 276
	i32 2581819634, ; 424: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 298
	i32 2585220780, ; 425: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 426: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 427: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 197
	i32 2589602615, ; 428: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 429: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 211
	i32 2593496499, ; 430: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 337
	i32 2605712449, ; 431: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 316
	i32 2615233544, ; 432: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 267
	i32 2616218305, ; 433: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 218
	i32 2617129537, ; 434: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 435: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 436: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 257
	i32 2624644809, ; 437: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 262
	i32 2626831493, ; 438: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 332
	i32 2627185994, ; 439: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 440: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 441: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 271
	i32 2641978034, ; 442: Blazorise.Licensing => 0x9d7962b2 => 177
	i32 2663391936, ; 443: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 236
	i32 2663698177, ; 444: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 445: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 446: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 447: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 448: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2687565823, ; 449: TrackerBuddy => 0xa030ffff => 0
	i32 2692077919, ; 450: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 199
	i32 2693849962, ; 451: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 452: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 296
	i32 2715334215, ; 453: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 454: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 455: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 456: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 457: Xamarin.AndroidX.Activity => 0xa2e0939b => 238
	i32 2735172069, ; 458: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 459: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 195
	i32 2735923218, ; 460: Lambda2Js.dll => 0xa312e012 => 194
	i32 2737747696, ; 461: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 244
	i32 2740948882, ; 462: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 463: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 464: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 338
	i32 2758225723, ; 465: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 225
	i32 2764765095, ; 466: Microsoft.Maui.dll => 0xa4caf7a7 => 226
	i32 2765824710, ; 467: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 468: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 310
	i32 2778768386, ; 469: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 301
	i32 2779977773, ; 470: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 289
	i32 2785988530, ; 471: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 344
	i32 2788224221, ; 472: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 267
	i32 2795666278, ; 473: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 229
	i32 2801831435, ; 474: Microsoft.Maui.Graphics => 0xa7008e0b => 228
	i32 2803228030, ; 475: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 476: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 323
	i32 2810250172, ; 477: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 254
	i32 2819470561, ; 478: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 479: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 480: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 289
	i32 2824502124, ; 481: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 482: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 336
	i32 2833784645, ; 483: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 201
	i32 2838993487, ; 484: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 278
	i32 2849599387, ; 485: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 486: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 301
	i32 2855708567, ; 487: Xamarin.AndroidX.Transition => 0xaa36a797 => 297
	i32 2861098320, ; 488: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 489: Microsoft.Maui.Essentials => 0xaa8a4878 => 227
	i32 2870099610, ; 490: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 239
	i32 2875164099, ; 491: Jsr305Binding.dll => 0xab5f85c3 => 306
	i32 2875220617, ; 492: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 493: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 265
	i32 2887636118, ; 494: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 495: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 198
	i32 2899753641, ; 496: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 497: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 498: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 499: mscorlib.dll => 0xad2a79b6 => 166
	i32 2908639175, ; 500: itext.sign => 0xad5e4fc7 => 190
	i32 2909740682, ; 501: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 502: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 214
	i32 2916838712, ; 503: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 302
	i32 2919462931, ; 504: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 505: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 241
	i32 2936416060, ; 506: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 507: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 508: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 509: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 510: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 511: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 512: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 261
	i32 2987532451, ; 513: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 292
	i32 2996846495, ; 514: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 274
	i32 3016983068, ; 515: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 294
	i32 3023353419, ; 516: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 517: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 269
	i32 3038032645, ; 518: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 351
	i32 3056245963, ; 519: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 291
	i32 3057625584, ; 520: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 282
	i32 3059408633, ; 521: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 522: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 523: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 524: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 329
	i32 3090735792, ; 525: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 526: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 527: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 528: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 529: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 530: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 531: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3146401616, ; 532: itext.styledxmlparser => 0xbb8a4750 => 191
	i32 3147165239, ; 533: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 534: GoogleGson.dll => 0xbba64c02 => 181
	i32 3159123045, ; 535: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 536: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 537: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 283
	i32 3192346100, ; 538: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 539: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 540: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 541: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 542: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 260
	i32 3217914834, ; 543: Blazorise.Charts.dll => 0xbfcd7bd2 => 175
	i32 3220365878, ; 544: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 545: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 546: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 547: Xamarin.AndroidX.CardView => 0xc235e84d => 248
	i32 3265493905, ; 548: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 549: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 550: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 551: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 552: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 553: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 554: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 555: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 556: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 324
	i32 3316684772, ; 557: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 558: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 258
	i32 3317144872, ; 559: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 560: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 246
	i32 3342793838, ; 561: itext.barcodes => 0xc73efc6e => 182
	i32 3345895724, ; 562: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 287
	i32 3346324047, ; 563: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 284
	i32 3357674450, ; 564: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 341
	i32 3358260929, ; 565: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 566: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 239
	i32 3362522851, ; 567: Xamarin.AndroidX.Core => 0xc86c06e3 => 255
	i32 3366347497, ; 568: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 569: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 288
	i32 3381016424, ; 570: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 320
	i32 3395150330, ; 571: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 572: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 573: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 259
	i32 3406629867, ; 574: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 212
	i32 3421170118, ; 575: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 205
	i32 3428513518, ; 576: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 208
	i32 3429136800, ; 577: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 578: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 579: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 262
	i32 3445260447, ; 580: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 581: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 223
	i32 3463511458, ; 582: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 328
	i32 3464190856, ; 583: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 197
	i32 3471940407, ; 584: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 585: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 586: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 341
	i32 3484440000, ; 587: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 340
	i32 3485117614, ; 588: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 589: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 590: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 251
	i32 3500000672, ; 591: Microsoft.JSInterop => 0xd09dc5a0 => 222
	i32 3509114376, ; 592: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 593: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 594: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 595: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 596: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 597: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 598: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 348
	i32 3597029428, ; 599: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 237
	i32 3598340787, ; 600: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 601: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 602: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 603: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 286
	i32 3633644679, ; 604: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 241
	i32 3637786959, ; 605: itext.sign.dll => 0xd8d4394f => 190
	i32 3638274909, ; 606: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 607: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 272
	i32 3643446276, ; 608: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 345
	i32 3643854240, ; 609: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 283
	i32 3645089577, ; 610: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 611: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 204
	i32 3660523487, ; 612: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 613: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 614: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 247
	i32 3684561358, ; 615: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 251
	i32 3684657769, ; 616: itext.commons => 0xdb9f6a69 => 193
	i32 3689375977, ; 617: System.Drawing.Common => 0xdbe768e9 => 231
	i32 3697841164, ; 618: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 350
	i32 3700866549, ; 619: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 620: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 256
	i32 3716563718, ; 621: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 622: Xamarin.AndroidX.Annotation => 0xdda814c6 => 240
	i32 3722202641, ; 623: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 207
	i32 3724971120, ; 624: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 282
	i32 3732100267, ; 625: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 626: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 201
	i32 3737834244, ; 627: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 628: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 629: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3758424670, ; 630: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 206
	i32 3786282454, ; 631: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 249
	i32 3792276235, ; 632: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 633: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 223
	i32 3802395368, ; 634: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 635: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 233
	i32 3819260425, ; 636: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 637: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 638: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 639: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 209
	i32 3844307129, ; 640: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 641: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 642: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 643: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 644: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 645: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 646: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 297
	i32 3888767677, ; 647: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 287
	i32 3889960447, ; 648: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 349
	i32 3896106733, ; 649: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 650: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 255
	i32 3898862222, ; 651: itext.layout.dll => 0xe863ea8e => 187
	i32 3901907137, ; 652: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 653: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 654: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 300
	i32 3928044579, ; 655: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 656: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 657: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 285
	i32 3945713374, ; 658: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 659: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 660: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 243
	i32 3959773229, ; 661: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 274
	i32 3971066695, ; 662: itext.styledxmlparser.dll => 0xecb1ab47 => 191
	i32 3977646153, ; 663: itext.io.dll => 0xed161049 => 185
	i32 3980434154, ; 664: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 344
	i32 3987592930, ; 665: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 326
	i32 4003436829, ; 666: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 667: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 242
	i32 4023392905, ; 668: System.IO.Pipelines => 0xefd01a89 => 232
	i32 4025784931, ; 669: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 670: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 225
	i32 4054681211, ; 671: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 672: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 673: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091293555, ; 674: itext.forms.dll => 0xf3dc2f73 => 184
	i32 4094352644, ; 675: Microsoft.Maui.Essentials.dll => 0xf40add04 => 227
	i32 4099507663, ; 676: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 677: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 678: Xamarin.AndroidX.Emoji2 => 0xf479582c => 263
	i32 4102112229, ; 679: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 339
	i32 4125707920, ; 680: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 334
	i32 4126470640, ; 681: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 208
	i32 4127667938, ; 682: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 683: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 684: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 685: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 346
	i32 4151237749, ; 686: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 687: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 688: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 689: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 690: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 691: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 279
	i32 4185676441, ; 692: System.Security => 0xf97c5a99 => 130
	i32 4186523351, ; 693: itext.svg.dll => 0xf98946d7 => 192
	i32 4196529839, ; 694: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 695: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 696: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 256
	i32 4258378803, ; 697: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 278
	i32 4260525087, ; 698: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 699: Microsoft.Maui.Controls.dll => 0xfea12dee => 224
	i32 4274976490, ; 700: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 701: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 279
	i32 4294648842, ; 702: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 213
	i32 4294763496 ; 703: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 265
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [704 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 210, ; 3
	i32 275, ; 4
	i32 309, ; 5
	i32 48, ; 6
	i32 230, ; 7
	i32 80, ; 8
	i32 145, ; 9
	i32 229, ; 10
	i32 30, ; 11
	i32 350, ; 12
	i32 124, ; 13
	i32 228, ; 14
	i32 102, ; 15
	i32 293, ; 16
	i32 107, ; 17
	i32 293, ; 18
	i32 139, ; 19
	i32 178, ; 20
	i32 313, ; 21
	i32 77, ; 22
	i32 124, ; 23
	i32 13, ; 24
	i32 249, ; 25
	i32 132, ; 26
	i32 295, ; 27
	i32 151, ; 28
	i32 347, ; 29
	i32 348, ; 30
	i32 18, ; 31
	i32 247, ; 32
	i32 26, ; 33
	i32 269, ; 34
	i32 1, ; 35
	i32 59, ; 36
	i32 42, ; 37
	i32 91, ; 38
	i32 196, ; 39
	i32 252, ; 40
	i32 173, ; 41
	i32 147, ; 42
	i32 271, ; 43
	i32 268, ; 44
	i32 319, ; 45
	i32 54, ; 46
	i32 69, ; 47
	i32 347, ; 48
	i32 238, ; 49
	i32 83, ; 50
	i32 174, ; 51
	i32 332, ; 52
	i32 270, ; 53
	i32 331, ; 54
	i32 131, ; 55
	i32 55, ; 56
	i32 149, ; 57
	i32 74, ; 58
	i32 145, ; 59
	i32 62, ; 60
	i32 146, ; 61
	i32 351, ; 62
	i32 165, ; 63
	i32 343, ; 64
	i32 253, ; 65
	i32 12, ; 66
	i32 266, ; 67
	i32 125, ; 68
	i32 152, ; 69
	i32 113, ; 70
	i32 166, ; 71
	i32 164, ; 72
	i32 268, ; 73
	i32 281, ; 74
	i32 84, ; 75
	i32 330, ; 76
	i32 324, ; 77
	i32 220, ; 78
	i32 150, ; 79
	i32 313, ; 80
	i32 60, ; 81
	i32 216, ; 82
	i32 51, ; 83
	i32 103, ; 84
	i32 114, ; 85
	i32 40, ; 86
	i32 306, ; 87
	i32 304, ; 88
	i32 213, ; 89
	i32 120, ; 90
	i32 338, ; 91
	i32 52, ; 92
	i32 44, ; 93
	i32 187, ; 94
	i32 119, ; 95
	i32 258, ; 96
	i32 336, ; 97
	i32 264, ; 98
	i32 81, ; 99
	i32 136, ; 100
	i32 300, ; 101
	i32 245, ; 102
	i32 8, ; 103
	i32 73, ; 104
	i32 318, ; 105
	i32 155, ; 106
	i32 315, ; 107
	i32 154, ; 108
	i32 92, ; 109
	i32 310, ; 110
	i32 45, ; 111
	i32 333, ; 112
	i32 233, ; 113
	i32 321, ; 114
	i32 314, ; 115
	i32 109, ; 116
	i32 129, ; 117
	i32 25, ; 118
	i32 235, ; 119
	i32 72, ; 120
	i32 55, ; 121
	i32 46, ; 122
	i32 342, ; 123
	i32 219, ; 124
	i32 259, ; 125
	i32 179, ; 126
	i32 200, ; 127
	i32 22, ; 128
	i32 273, ; 129
	i32 231, ; 130
	i32 86, ; 131
	i32 43, ; 132
	i32 160, ; 133
	i32 71, ; 134
	i32 176, ; 135
	i32 286, ; 136
	i32 3, ; 137
	i32 42, ; 138
	i32 63, ; 139
	i32 16, ; 140
	i32 53, ; 141
	i32 177, ; 142
	i32 185, ; 143
	i32 345, ; 144
	i32 309, ; 145
	i32 105, ; 146
	i32 230, ; 147
	i32 314, ; 148
	i32 307, ; 149
	i32 270, ; 150
	i32 182, ; 151
	i32 34, ; 152
	i32 158, ; 153
	i32 85, ; 154
	i32 32, ; 155
	i32 12, ; 156
	i32 51, ; 157
	i32 215, ; 158
	i32 56, ; 159
	i32 290, ; 160
	i32 36, ; 161
	i32 209, ; 162
	i32 320, ; 163
	i32 308, ; 164
	i32 243, ; 165
	i32 35, ; 166
	i32 58, ; 167
	i32 277, ; 168
	i32 181, ; 169
	i32 184, ; 170
	i32 186, ; 171
	i32 17, ; 172
	i32 311, ; 173
	i32 164, ; 174
	i32 202, ; 175
	i32 206, ; 176
	i32 333, ; 177
	i32 276, ; 178
	i32 218, ; 179
	i32 303, ; 180
	i32 339, ; 181
	i32 153, ; 182
	i32 211, ; 183
	i32 299, ; 184
	i32 284, ; 185
	i32 337, ; 186
	i32 245, ; 187
	i32 29, ; 188
	i32 176, ; 189
	i32 52, ; 190
	i32 189, ; 191
	i32 335, ; 192
	i32 304, ; 193
	i32 192, ; 194
	i32 193, ; 195
	i32 5, ; 196
	i32 319, ; 197
	i32 294, ; 198
	i32 298, ; 199
	i32 250, ; 200
	i32 315, ; 201
	i32 242, ; 202
	i32 188, ; 203
	i32 261, ; 204
	i32 85, ; 205
	i32 303, ; 206
	i32 61, ; 207
	i32 112, ; 208
	i32 57, ; 209
	i32 349, ; 210
	i32 290, ; 211
	i32 99, ; 212
	i32 194, ; 213
	i32 19, ; 214
	i32 254, ; 215
	i32 111, ; 216
	i32 101, ; 217
	i32 102, ; 218
	i32 317, ; 219
	i32 104, ; 220
	i32 307, ; 221
	i32 71, ; 222
	i32 38, ; 223
	i32 32, ; 224
	i32 212, ; 225
	i32 103, ; 226
	i32 73, ; 227
	i32 323, ; 228
	i32 9, ; 229
	i32 123, ; 230
	i32 46, ; 231
	i32 244, ; 232
	i32 220, ; 233
	i32 178, ; 234
	i32 9, ; 235
	i32 43, ; 236
	i32 4, ; 237
	i32 183, ; 238
	i32 291, ; 239
	i32 327, ; 240
	i32 322, ; 241
	i32 215, ; 242
	i32 31, ; 243
	i32 138, ; 244
	i32 92, ; 245
	i32 200, ; 246
	i32 93, ; 247
	i32 342, ; 248
	i32 221, ; 249
	i32 49, ; 250
	i32 141, ; 251
	i32 112, ; 252
	i32 140, ; 253
	i32 260, ; 254
	i32 115, ; 255
	i32 308, ; 256
	i32 0, ; 257
	i32 157, ; 258
	i32 76, ; 259
	i32 79, ; 260
	i32 280, ; 261
	i32 37, ; 262
	i32 302, ; 263
	i32 180, ; 264
	i32 207, ; 265
	i32 264, ; 266
	i32 257, ; 267
	i32 64, ; 268
	i32 138, ; 269
	i32 15, ; 270
	i32 199, ; 271
	i32 116, ; 272
	i32 296, ; 273
	i32 305, ; 274
	i32 252, ; 275
	i32 188, ; 276
	i32 48, ; 277
	i32 70, ; 278
	i32 80, ; 279
	i32 126, ; 280
	i32 94, ; 281
	i32 121, ; 282
	i32 312, ; 283
	i32 26, ; 284
	i32 273, ; 285
	i32 97, ; 286
	i32 28, ; 287
	i32 248, ; 288
	i32 340, ; 289
	i32 318, ; 290
	i32 149, ; 291
	i32 232, ; 292
	i32 169, ; 293
	i32 4, ; 294
	i32 98, ; 295
	i32 198, ; 296
	i32 33, ; 297
	i32 93, ; 298
	i32 295, ; 299
	i32 216, ; 300
	i32 21, ; 301
	i32 41, ; 302
	i32 170, ; 303
	i32 334, ; 304
	i32 266, ; 305
	i32 326, ; 306
	i32 280, ; 307
	i32 311, ; 308
	i32 305, ; 309
	i32 285, ; 310
	i32 2, ; 311
	i32 134, ; 312
	i32 111, ; 313
	i32 217, ; 314
	i32 346, ; 315
	i32 235, ; 316
	i32 343, ; 317
	i32 58, ; 318
	i32 95, ; 319
	i32 325, ; 320
	i32 39, ; 321
	i32 246, ; 322
	i32 25, ; 323
	i32 94, ; 324
	i32 202, ; 325
	i32 89, ; 326
	i32 99, ; 327
	i32 10, ; 328
	i32 87, ; 329
	i32 100, ; 330
	i32 292, ; 331
	i32 203, ; 332
	i32 312, ; 333
	i32 237, ; 334
	i32 322, ; 335
	i32 7, ; 336
	i32 277, ; 337
	i32 317, ; 338
	i32 234, ; 339
	i32 88, ; 340
	i32 189, ; 341
	i32 205, ; 342
	i32 272, ; 343
	i32 154, ; 344
	i32 321, ; 345
	i32 33, ; 346
	i32 214, ; 347
	i32 116, ; 348
	i32 82, ; 349
	i32 174, ; 350
	i32 20, ; 351
	i32 11, ; 352
	i32 221, ; 353
	i32 162, ; 354
	i32 3, ; 355
	i32 226, ; 356
	i32 329, ; 357
	i32 219, ; 358
	i32 217, ; 359
	i32 84, ; 360
	i32 210, ; 361
	i32 316, ; 362
	i32 64, ; 363
	i32 331, ; 364
	i32 299, ; 365
	i32 143, ; 366
	i32 281, ; 367
	i32 157, ; 368
	i32 41, ; 369
	i32 117, ; 370
	i32 204, ; 371
	i32 236, ; 372
	i32 325, ; 373
	i32 288, ; 374
	i32 131, ; 375
	i32 75, ; 376
	i32 66, ; 377
	i32 180, ; 378
	i32 335, ; 379
	i32 172, ; 380
	i32 240, ; 381
	i32 143, ; 382
	i32 106, ; 383
	i32 151, ; 384
	i32 70, ; 385
	i32 156, ; 386
	i32 203, ; 387
	i32 121, ; 388
	i32 127, ; 389
	i32 330, ; 390
	i32 152, ; 391
	i32 263, ; 392
	i32 196, ; 393
	i32 141, ; 394
	i32 250, ; 395
	i32 327, ; 396
	i32 20, ; 397
	i32 14, ; 398
	i32 222, ; 399
	i32 135, ; 400
	i32 75, ; 401
	i32 59, ; 402
	i32 173, ; 403
	i32 253, ; 404
	i32 167, ; 405
	i32 168, ; 406
	i32 224, ; 407
	i32 15, ; 408
	i32 74, ; 409
	i32 6, ; 410
	i32 23, ; 411
	i32 175, ; 412
	i32 275, ; 413
	i32 234, ; 414
	i32 195, ; 415
	i32 91, ; 416
	i32 179, ; 417
	i32 328, ; 418
	i32 1, ; 419
	i32 183, ; 420
	i32 136, ; 421
	i32 186, ; 422
	i32 276, ; 423
	i32 298, ; 424
	i32 134, ; 425
	i32 69, ; 426
	i32 197, ; 427
	i32 146, ; 428
	i32 211, ; 429
	i32 337, ; 430
	i32 316, ; 431
	i32 267, ; 432
	i32 218, ; 433
	i32 88, ; 434
	i32 96, ; 435
	i32 257, ; 436
	i32 262, ; 437
	i32 332, ; 438
	i32 31, ; 439
	i32 45, ; 440
	i32 271, ; 441
	i32 177, ; 442
	i32 236, ; 443
	i32 109, ; 444
	i32 158, ; 445
	i32 35, ; 446
	i32 22, ; 447
	i32 114, ; 448
	i32 0, ; 449
	i32 199, ; 450
	i32 57, ; 451
	i32 296, ; 452
	i32 144, ; 453
	i32 118, ; 454
	i32 120, ; 455
	i32 110, ; 456
	i32 238, ; 457
	i32 139, ; 458
	i32 195, ; 459
	i32 194, ; 460
	i32 244, ; 461
	i32 54, ; 462
	i32 105, ; 463
	i32 338, ; 464
	i32 225, ; 465
	i32 226, ; 466
	i32 133, ; 467
	i32 310, ; 468
	i32 301, ; 469
	i32 289, ; 470
	i32 344, ; 471
	i32 267, ; 472
	i32 229, ; 473
	i32 228, ; 474
	i32 159, ; 475
	i32 323, ; 476
	i32 254, ; 477
	i32 163, ; 478
	i32 132, ; 479
	i32 289, ; 480
	i32 161, ; 481
	i32 336, ; 482
	i32 201, ; 483
	i32 278, ; 484
	i32 140, ; 485
	i32 301, ; 486
	i32 297, ; 487
	i32 169, ; 488
	i32 227, ; 489
	i32 239, ; 490
	i32 306, ; 491
	i32 40, ; 492
	i32 265, ; 493
	i32 81, ; 494
	i32 198, ; 495
	i32 56, ; 496
	i32 37, ; 497
	i32 97, ; 498
	i32 166, ; 499
	i32 190, ; 500
	i32 172, ; 501
	i32 214, ; 502
	i32 302, ; 503
	i32 82, ; 504
	i32 241, ; 505
	i32 98, ; 506
	i32 30, ; 507
	i32 159, ; 508
	i32 18, ; 509
	i32 127, ; 510
	i32 119, ; 511
	i32 261, ; 512
	i32 292, ; 513
	i32 274, ; 514
	i32 294, ; 515
	i32 165, ; 516
	i32 269, ; 517
	i32 351, ; 518
	i32 291, ; 519
	i32 282, ; 520
	i32 170, ; 521
	i32 16, ; 522
	i32 144, ; 523
	i32 329, ; 524
	i32 125, ; 525
	i32 118, ; 526
	i32 38, ; 527
	i32 115, ; 528
	i32 47, ; 529
	i32 142, ; 530
	i32 117, ; 531
	i32 191, ; 532
	i32 34, ; 533
	i32 181, ; 534
	i32 95, ; 535
	i32 53, ; 536
	i32 283, ; 537
	i32 129, ; 538
	i32 153, ; 539
	i32 24, ; 540
	i32 161, ; 541
	i32 260, ; 542
	i32 175, ; 543
	i32 148, ; 544
	i32 104, ; 545
	i32 89, ; 546
	i32 248, ; 547
	i32 60, ; 548
	i32 142, ; 549
	i32 100, ; 550
	i32 5, ; 551
	i32 13, ; 552
	i32 122, ; 553
	i32 135, ; 554
	i32 28, ; 555
	i32 324, ; 556
	i32 72, ; 557
	i32 258, ; 558
	i32 24, ; 559
	i32 246, ; 560
	i32 182, ; 561
	i32 287, ; 562
	i32 284, ; 563
	i32 341, ; 564
	i32 137, ; 565
	i32 239, ; 566
	i32 255, ; 567
	i32 168, ; 568
	i32 288, ; 569
	i32 320, ; 570
	i32 101, ; 571
	i32 123, ; 572
	i32 259, ; 573
	i32 212, ; 574
	i32 205, ; 575
	i32 208, ; 576
	i32 163, ; 577
	i32 167, ; 578
	i32 262, ; 579
	i32 39, ; 580
	i32 223, ; 581
	i32 328, ; 582
	i32 197, ; 583
	i32 17, ; 584
	i32 171, ; 585
	i32 341, ; 586
	i32 340, ; 587
	i32 137, ; 588
	i32 150, ; 589
	i32 251, ; 590
	i32 222, ; 591
	i32 155, ; 592
	i32 130, ; 593
	i32 19, ; 594
	i32 65, ; 595
	i32 147, ; 596
	i32 47, ; 597
	i32 348, ; 598
	i32 237, ; 599
	i32 79, ; 600
	i32 61, ; 601
	i32 106, ; 602
	i32 286, ; 603
	i32 241, ; 604
	i32 190, ; 605
	i32 49, ; 606
	i32 272, ; 607
	i32 345, ; 608
	i32 283, ; 609
	i32 14, ; 610
	i32 204, ; 611
	i32 68, ; 612
	i32 171, ; 613
	i32 247, ; 614
	i32 251, ; 615
	i32 193, ; 616
	i32 231, ; 617
	i32 350, ; 618
	i32 78, ; 619
	i32 256, ; 620
	i32 108, ; 621
	i32 240, ; 622
	i32 207, ; 623
	i32 282, ; 624
	i32 67, ; 625
	i32 201, ; 626
	i32 63, ; 627
	i32 27, ; 628
	i32 160, ; 629
	i32 206, ; 630
	i32 249, ; 631
	i32 10, ; 632
	i32 223, ; 633
	i32 11, ; 634
	i32 233, ; 635
	i32 78, ; 636
	i32 126, ; 637
	i32 83, ; 638
	i32 209, ; 639
	i32 66, ; 640
	i32 107, ; 641
	i32 65, ; 642
	i32 128, ; 643
	i32 122, ; 644
	i32 77, ; 645
	i32 297, ; 646
	i32 287, ; 647
	i32 349, ; 648
	i32 8, ; 649
	i32 255, ; 650
	i32 187, ; 651
	i32 2, ; 652
	i32 44, ; 653
	i32 300, ; 654
	i32 156, ; 655
	i32 128, ; 656
	i32 285, ; 657
	i32 23, ; 658
	i32 133, ; 659
	i32 243, ; 660
	i32 274, ; 661
	i32 191, ; 662
	i32 185, ; 663
	i32 344, ; 664
	i32 326, ; 665
	i32 29, ; 666
	i32 242, ; 667
	i32 232, ; 668
	i32 62, ; 669
	i32 225, ; 670
	i32 90, ; 671
	i32 87, ; 672
	i32 148, ; 673
	i32 184, ; 674
	i32 227, ; 675
	i32 36, ; 676
	i32 86, ; 677
	i32 263, ; 678
	i32 339, ; 679
	i32 334, ; 680
	i32 208, ; 681
	i32 50, ; 682
	i32 6, ; 683
	i32 90, ; 684
	i32 346, ; 685
	i32 21, ; 686
	i32 162, ; 687
	i32 96, ; 688
	i32 50, ; 689
	i32 113, ; 690
	i32 279, ; 691
	i32 130, ; 692
	i32 192, ; 693
	i32 76, ; 694
	i32 27, ; 695
	i32 256, ; 696
	i32 278, ; 697
	i32 7, ; 698
	i32 224, ; 699
	i32 110, ; 700
	i32 279, ; 701
	i32 213, ; 702
	i32 265 ; 703
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
