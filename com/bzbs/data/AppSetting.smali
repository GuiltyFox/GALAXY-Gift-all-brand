.class public Lcom/bzbs/data/AppSetting;
.super Ljava/lang/Object;
.source "AppSetting.java"


# static fields
.field public static API_URL_BUZZEBEES:Ljava/lang/String; = null

.field public static API_URL_BZBS_BLOB:Ljava/lang/String; = null

.field public static final API_URL_FACEBOOK:Ljava/lang/String; = "https://graph.facebook.com/"

.field public static API_URL_WALLET:Ljava/lang/String; = null

.field public static APP_CONTEXT:Landroid/content/Context; = null

.field public static final APP_ID_GIFT_CAMBODIA:Ljava/lang/String; = "1525635597652592"

.field public static final APP_ID_GIFT_LAOS:Ljava/lang/String; = "768830479847872"

.field public static final APP_ID_GIFT_MYANMAR:Ljava/lang/String; = "517155661760483"

.field public static final APP_ID_GIFT_THAILAND:Ljava/lang/String; = "402705486466922"

.field public static APP_NOTIFICATION_ID:Ljava/lang/String; = null

.field public static AUTH_BUZZEBEES_PREFIX_CAMB:Ljava/lang/String; = null

.field public static AUTH_BUZZEBEES_PREFIX_LAOS:Ljava/lang/String; = null

.field public static AUTH_BUZZEBEES_PREFIX_MYAN:Ljava/lang/String; = null

.field public static AUTH_BUZZEBEES_PREFIX_THAI:Ljava/lang/String; = null

.field public static CAT_PREMIUM_THAI:I = 0x0

.field public static COLOR_BLACK:I = 0x0

.field public static COLOR_NIGHTBLUE:I = 0x0

.field public static COLOR_RED:I = 0x0

.field public static COLOR_WHITE:I = 0x0

.field public static CONFIG_PAGER_KEEP_MEMORY_ALL:Z = false

.field public static DASHBOARD_KEY_CAMB:Ljava/lang/String; = null

.field public static DASHBOARD_KEY_LAOS:Ljava/lang/String; = null

.field public static DASHBOARD_KEY_MYAN:Ljava/lang/String; = null

.field public static DASHBOARD_KEY_THAI:Ljava/lang/String; = null

.field public static EMAIL_PARTNER_CAMB:Ljava/lang/String; = null

.field public static EMAIL_PARTNER_LAOS:Ljava/lang/String; = null

.field public static EMAIL_PARTNER_MYAN:Ljava/lang/String; = null

.field public static EMAIL_PARTNER_THAI:Ljava/lang/String; = null

.field public static EMAIL_PROBLEM_CAMB:Ljava/lang/String; = null

.field public static EMAIL_PROBLEM_LAOS:Ljava/lang/String; = null

.field public static EMAIL_PROBLEM_MYAN:Ljava/lang/String; = null

.field public static EMAIL_PROBLEM_THAI:Ljava/lang/String; = null

.field public static GA_TRACKING_ID_CAMB:Ljava/lang/String; = null

.field public static GA_TRACKING_ID_LAOS:Ljava/lang/String; = null

.field public static GA_TRACKING_ID_MYAN:Ljava/lang/String; = null

.field public static GA_TRACKING_ID_THAI:Ljava/lang/String; = null

.field public static final IMEI_INVALID:Ljava/lang/String; = "004999010640000"

.field public static IS_AUTO_GOTO_HISTORY:Z = false

.field public static final IS_DISPLAY_LOG:Z = true

.field public static IS_SERVER_PRODUCTION:Z = false

.field public static MODE_DEBUG_MEM:Z = false

.field public static MODE_IMAGE_ROUNDED:Z = false

.field public static M_ACTIVITY:Landroid/app/Activity; = null

.field public static NOTIFICATION_ID_CAMB:Ljava/lang/String; = null

.field public static NOTIFICATION_ID_LAOS:Ljava/lang/String; = null

.field public static NOTIFICATION_ID_MYAN:Ljava/lang/String; = null

.field public static NOTIFICATION_ID_THAI:Ljava/lang/String; = null

.field public static PATH_ROOT_BUZZEBEES:Ljava/lang/String; = null

.field public static Permissons_BzBs_Read:[Ljava/lang/String; = null

.field public static Permissons_BzBs_Read_List:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static RESUME_TIME:I = 0x0

.field public static final SAVE_CATCH_MODE:Ljava/lang/String; = "PREF"

.field public static SPONSOR_ID_CAMB:Ljava/lang/String;

.field public static SPONSOR_ID_LAOS:Ljava/lang/String;

.field public static SPONSOR_ID_MYAN:Ljava/lang/String;

.field public static SPONSOR_ID_THAI:Ljava/lang/String;

.field public static SPONSOR_PAGES:Ljava/lang/String;

.field public static UriPlayStore:Ljava/lang/String;

.field public static UriPlayStoreGift:Ljava/lang/String;

.field public static WALL_DISK_CACHE_SIZE:I

.field public static WALL_IMAGE_FADEIN:I

.field public static WALL_MEM_CACHE_SIZE:I

.field public static WALL_QUERY_OLD:I

.field public static WEB_IMAGE_CACHE_MEMORY:I

.field public static WEB_IMAGE_CONNECT_TIMEOUT:I

.field public static WEB_IMAGE_READ_TIMEOUT:I

.field public static WEB_IMAGE_RETRY_NUMBER:I

.field public static WEB_IMAGE_SAMPLE_SIZE:I

.field public static WEB_IMAGE_SAVE_QUALITY:I

.field public static WEB_IMAGE_TEMP_STORAGE:I

.field public static WEB_URL_BUZZEBEES:Ljava/lang/String;

.field public static dpi:I

.field public static gCardsUsedActivity:Lcom/samsung/privilege/activity/CardsUsedActivity;

.field public static gIntDifferenceInXMoreThanInY:I

.field public static gNotification_Number:I

.field public static gPREF_FILE_NAME:Ljava/lang/String;

.field public static screenHeight:I

.field public static screenWidth:I

.field public static wall_last_created_time:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v1, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->COLOR_BLACK:I

    .line 31
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->COLOR_WHITE:I

    .line 32
    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->COLOR_RED:I

    .line 33
    const/4 v0, 0x7

    const/16 v1, 0x22

    const/16 v2, 0x49

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->COLOR_NIGHTBLUE:I

    .line 249
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/data/AppSetting;->APP_NOTIFICATION_ID:Ljava/lang/String;

    .line 268
    const-string/jumbo v0, "BuzzeBees_IsAutoLogin"

    sput-object v0, Lcom/bzbs/data/AppSetting;->gPREF_FILE_NAME:Ljava/lang/String;

    .line 272
    sput-boolean v3, Lcom/bzbs/data/AppSetting;->IS_AUTO_GOTO_HISTORY:Z

    .line 295
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_PAGES:Ljava/lang/String;

    .line 297
    sput-boolean v4, Lcom/bzbs/data/AppSetting;->IS_SERVER_PRODUCTION:Z

    .line 300
    const-string/jumbo v0, "com.samsung.privilege"

    sput-object v0, Lcom/bzbs/data/AppSetting;->UriPlayStoreGift:Ljava/lang/String;

    .line 305
    const-string/jumbo v0, "android_gift"

    sput-object v0, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX_THAI:Ljava/lang/String;

    .line 306
    const-string/jumbo v0, "android_gift_laos"

    sput-object v0, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX_LAOS:Ljava/lang/String;

    .line 307
    const-string/jumbo v0, "android_gift_cambodia"

    sput-object v0, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX_CAMB:Ljava/lang/String;

    .line 308
    const-string/jumbo v0, "android_gift_myanmar"

    sput-object v0, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX_MYAN:Ljava/lang/String;

    .line 313
    const-string/jumbo v0, "70"

    sput-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_THAI:Ljava/lang/String;

    .line 314
    const-string/jumbo v0, "5605"

    sput-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_LAOS:Ljava/lang/String;

    .line 315
    const-string/jumbo v0, "5606"

    sput-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_CAMB:Ljava/lang/String;

    .line 316
    const-string/jumbo v0, "6363"

    sput-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_MYAN:Ljava/lang/String;

    .line 317
    const-string/jumbo v0, "samsunggift"

    sput-object v0, Lcom/bzbs/data/AppSetting;->DASHBOARD_KEY_THAI:Ljava/lang/String;

    .line 318
    const-string/jumbo v0, "samsunggift_laos"

    sput-object v0, Lcom/bzbs/data/AppSetting;->DASHBOARD_KEY_LAOS:Ljava/lang/String;

    .line 319
    const-string/jumbo v0, "samsunggift_cambodia"

    sput-object v0, Lcom/bzbs/data/AppSetting;->DASHBOARD_KEY_CAMB:Ljava/lang/String;

    .line 320
    const-string/jumbo v0, "samsunggift_myanmar"

    sput-object v0, Lcom/bzbs/data/AppSetting;->DASHBOARD_KEY_MYAN:Ljava/lang/String;

    .line 321
    const-string/jumbo v0, "123844944339"

    sput-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_THAI:Ljava/lang/String;

    .line 322
    const-string/jumbo v0, "956853005078"

    sput-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_LAOS:Ljava/lang/String;

    .line 323
    const-string/jumbo v0, "899168542020"

    sput-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_CAMB:Ljava/lang/String;

    .line 324
    const-string/jumbo v0, "228227059976"

    sput-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_MYAN:Ljava/lang/String;

    .line 325
    const-string/jumbo v0, "UA-42649771-1"

    sput-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_THAI:Ljava/lang/String;

    .line 326
    const-string/jumbo v0, "UA-54263353-1"

    sput-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_LAOS:Ljava/lang/String;

    .line 327
    const-string/jumbo v0, "UA-54268660-1"

    sput-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_CAMB:Ljava/lang/String;

    .line 328
    const-string/jumbo v0, "UA-59571626-1"

    sput-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_MYAN:Ljava/lang/String;

    .line 329
    const-string/jumbo v0, "samsungthailandapps@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->EMAIL_PROBLEM_THAI:Ljava/lang/String;

    .line 330
    const-string/jumbo v0, "galaxylaosclub@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->EMAIL_PROBLEM_LAOS:Ljava/lang/String;

    .line 331
    const-string/jumbo v0, "samsungthailandapps@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->EMAIL_PROBLEM_CAMB:Ljava/lang/String;

    .line 332
    const-string/jumbo v0, "samsungmyanmarapps@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->EMAIL_PROBLEM_MYAN:Ljava/lang/String;

    .line 333
    const-string/jumbo v0, "galaxygiftthailand@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->EMAIL_PARTNER_THAI:Ljava/lang/String;

    .line 334
    const-string/jumbo v0, "galaxylaosclub@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->EMAIL_PARTNER_LAOS:Ljava/lang/String;

    .line 335
    const-string/jumbo v0, "galaxygiftthailand@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->EMAIL_PARTNER_CAMB:Ljava/lang/String;

    .line 336
    const-string/jumbo v0, "galaxygiftmyanmar@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->EMAIL_PARTNER_MYAN:Ljava/lang/String;

    .line 338
    const/16 v0, 0x53d

    sput v0, Lcom/bzbs/data/AppSetting;->CAT_PREMIUM_THAI:I

    .line 341
    const-string/jumbo v0, "https://api.buzzebees.com/"

    sput-object v0, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    .line 342
    const-string/jumbo v0, "http://buzzebees.blob.core.windows.net/"

    sput-object v0, Lcom/bzbs/data/AppSetting;->API_URL_BZBS_BLOB:Ljava/lang/String;

    .line 343
    const-string/jumbo v0, "https://www.buzzebees.com/"

    sput-object v0, Lcom/bzbs/data/AppSetting;->WEB_URL_BUZZEBEES:Ljava/lang/String;

    .line 344
    const-string/jumbo v0, "http://prd-api-ewallet.cloudapp.net/"

    sput-object v0, Lcom/bzbs/data/AppSetting;->API_URL_WALLET:Ljava/lang/String;

    .line 345
    const/16 v0, 0x3840

    sput v0, Lcom/bzbs/data/AppSetting;->RESUME_TIME:I

    .line 350
    sput-boolean v4, Lcom/bzbs/data/AppSetting;->CONFIG_PAGER_KEEP_MEMORY_ALL:Z

    .line 414
    const-string/jumbo v0, "GalaxyGift"

    sput-object v0, Lcom/bzbs/data/AppSetting;->PATH_ROOT_BUZZEBEES:Ljava/lang/String;

    .line 456
    const-string/jumbo v0, "com.samsung.privilege"

    sput-object v0, Lcom/bzbs/data/AppSetting;->UriPlayStore:Ljava/lang/String;

    .line 459
    sput v3, Lcom/bzbs/data/AppSetting;->WEB_IMAGE_CACHE_MEMORY:I

    .line 460
    sput v3, Lcom/bzbs/data/AppSetting;->WEB_IMAGE_RETRY_NUMBER:I

    .line 461
    const/16 v0, 0x1388

    sput v0, Lcom/bzbs/data/AppSetting;->WEB_IMAGE_CONNECT_TIMEOUT:I

    .line 462
    const/16 v0, 0x2710

    sput v0, Lcom/bzbs/data/AppSetting;->WEB_IMAGE_READ_TIMEOUT:I

    .line 463
    sput v4, Lcom/bzbs/data/AppSetting;->WEB_IMAGE_SAMPLE_SIZE:I

    .line 464
    const/16 v0, 0x200

    sput v0, Lcom/bzbs/data/AppSetting;->WEB_IMAGE_TEMP_STORAGE:I

    .line 465
    const/16 v0, 0x3c

    sput v0, Lcom/bzbs/data/AppSetting;->WEB_IMAGE_SAVE_QUALITY:I

    .line 467
    sput v3, Lcom/bzbs/data/AppSetting;->WALL_QUERY_OLD:I

    .line 468
    sput v3, Lcom/bzbs/data/AppSetting;->WALL_IMAGE_FADEIN:I

    .line 469
    const/16 v0, 0x19

    sput v0, Lcom/bzbs/data/AppSetting;->WALL_MEM_CACHE_SIZE:I

    .line 470
    const/16 v0, 0x32

    sput v0, Lcom/bzbs/data/AppSetting;->WALL_DISK_CACHE_SIZE:I

    .line 472
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bzbs/data/AppSetting;->wall_last_created_time:J

    .line 476
    sput-boolean v3, Lcom/bzbs/data/AppSetting;->MODE_DEBUG_MEM:Z

    .line 477
    sput-boolean v4, Lcom/bzbs/data/AppSetting;->MODE_IMAGE_ROUNDED:Z

    .line 479
    const/16 v0, 0x1e

    sput v0, Lcom/bzbs/data/AppSetting;->gIntDifferenceInXMoreThanInY:I

    .line 512
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "user_birthday"

    aput-object v1, v0, v3

    const-string/jumbo v1, "email"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "user_friends"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bzbs/data/AppSetting;->Permissons_BzBs_Read:[Ljava/lang/String;

    .line 538
    sget-object v0, Lcom/bzbs/data/AppSetting;->Permissons_BzBs_Read:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->Permissons_BzBs_Read_List:Ljava/util/List;

    .line 541
    sput v3, Lcom/bzbs/data/AppSetting;->screenWidth:I

    .line 542
    sput v3, Lcom/bzbs/data/AppSetting;->screenHeight:I

    .line 544
    sput v3, Lcom/bzbs/data/AppSetting;->dpi:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ANDROID_PATH(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 417
    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Lcom/bzbs/data/AppSetting;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_13
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "androidPath":Ljava/lang/String;
    :goto_1b
    return-object v0

    .line 417
    .end local v0    # "androidPath":Ljava/lang/String;
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public static APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetUserCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "carrier":Ljava/lang/String;
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "tokenBzBs":Ljava/lang/String;
    if-eqz v1, :cond_7c

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 152
    :goto_13
    if-eqz v0, :cond_11e

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11e

    .line 153
    const-string/jumbo v2, "45608"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "45601"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "45602"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "45605"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "45606"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "45609"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "45604"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "45611"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "45204"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "45603"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 154
    :cond_78
    const-string/jumbo v2, "1525635597652592"

    .line 164
    :goto_7b
    return-object v2

    .line 149
    :cond_7c
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 155
    :cond_81
    const-string/jumbo v2, "45701"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    const-string/jumbo v2, "45708"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    const-string/jumbo v2, "45703"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    const-string/jumbo v2, "45702"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 156
    :cond_a5
    const-string/jumbo v2, "768830479847872"

    goto :goto_7b

    .line 157
    :cond_a9
    const-string/jumbo v2, "41405"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c4

    const-string/jumbo v2, "41401"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c4

    const-string/jumbo v2, "41406"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 158
    :cond_c4
    const-string/jumbo v2, "517155661760483"

    goto :goto_7b

    .line 159
    :cond_c8
    const-string/jumbo v2, "52003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    const-string/jumbo v2, "52023"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    const-string/jumbo v2, "52001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    const-string/jumbo v2, "52018"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    const-string/jumbo v2, "52005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    const-string/jumbo v2, "52099"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    const-string/jumbo v2, "52004"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    const-string/jumbo v2, "52000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    const-string/jumbo v2, "52015"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 160
    :cond_119
    const-string/jumbo v2, "402705486466922"

    goto/16 :goto_7b

    .line 164
    :cond_11e
    const-string/jumbo v2, "402705486466922"

    goto/16 :goto_7b
.end method

.method public static APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "carrier":Ljava/lang/String;
    if-eqz v0, :cond_10a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    .line 175
    const-string/jumbo v1, "45608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45606"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45604"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45204"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45603"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 176
    :cond_69
    const-string/jumbo v1, "1525635597652592"

    .line 186
    :goto_6c
    return-object v1

    .line 177
    :cond_6d
    const-string/jumbo v1, "45701"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string/jumbo v1, "45708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string/jumbo v1, "45703"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string/jumbo v1, "45702"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 178
    :cond_91
    const-string/jumbo v1, "768830479847872"

    goto :goto_6c

    .line 179
    :cond_95
    const-string/jumbo v1, "41405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    const-string/jumbo v1, "41401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    const-string/jumbo v1, "41406"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 180
    :cond_b0
    const-string/jumbo v1, "517155661760483"

    goto :goto_6c

    .line 181
    :cond_b4
    const-string/jumbo v1, "52003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52023"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52099"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52015"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 182
    :cond_105
    const-string/jumbo v1, "402705486466922"

    goto/16 :goto_6c

    .line 186
    :cond_10a
    const-string/jumbo v1, "402705486466922"

    goto/16 :goto_6c
.end method

.method public static AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 227
    sget-object v0, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX_LAOS:Ljava/lang/String;

    .line 233
    :goto_f
    return-object v0

    .line 228
    :cond_10
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 229
    sget-object v0, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX_CAMB:Ljava/lang/String;

    goto :goto_f

    .line 230
    :cond_20
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 231
    sget-object v0, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX_MYAN:Ljava/lang/String;

    goto :goto_f

    .line 233
    :cond_30
    sget-object v0, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX_THAI:Ljava/lang/String;

    goto :goto_f
.end method

.method public static DASHBOARD_KEY(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 215
    sget-object v0, Lcom/bzbs/data/AppSetting;->DASHBOARD_KEY_LAOS:Ljava/lang/String;

    .line 221
    :goto_f
    return-object v0

    .line 216
    :cond_10
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 217
    sget-object v0, Lcom/bzbs/data/AppSetting;->DASHBOARD_KEY_CAMB:Ljava/lang/String;

    goto :goto_f

    .line 218
    :cond_20
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 219
    sget-object v0, Lcom/bzbs/data/AppSetting;->DASHBOARD_KEY_MYAN:Ljava/lang/String;

    goto :goto_f

    .line 221
    :cond_30
    sget-object v0, Lcom/bzbs/data/AppSetting;->DASHBOARD_KEY_THAI:Ljava/lang/String;

    goto :goto_f
.end method

.method public static FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 86
    if-eqz p0, :cond_39

    .line 87
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 88
    const-string/jumbo v0, "fonts/kit55p.ttf"

    .line 97
    :goto_12
    return-object v0

    .line 89
    :cond_13
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1108"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 90
    const-string/jumbo v0, "fonts/phetsarath_ot.ttf"

    goto :goto_12

    .line 91
    :cond_24
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1109"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 92
    const-string/jumbo v0, "fonts/zawgyi_one.ttf"

    goto :goto_12

    .line 94
    :cond_35
    const-string/jumbo v0, "fonts/kit55p.ttf"

    goto :goto_12

    .line 97
    :cond_39
    const-string/jumbo v0, "fonts/kit55p.ttf"

    goto :goto_12
.end method

.method public static FONTS_DEFAULT_HEADER(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    const-string/jumbo v0, "fonts/kit55p.ttf"

    .line 67
    :goto_10
    return-object v0

    .line 62
    :cond_11
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1108"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 63
    const-string/jumbo v0, "fonts/phetsarath_ot.ttf"

    goto :goto_10

    .line 64
    :cond_22
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1109"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 65
    const-string/jumbo v0, "fonts/zawgyi_one.ttf"

    goto :goto_10

    .line 67
    :cond_33
    const-string/jumbo v0, "fonts/kit55p.ttf"

    goto :goto_10
.end method

.method public static FONTS_DEFAULT_LOGO(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 37
    const-string/jumbo v0, "fonts/kit55p.ttf"

    .line 43
    :goto_10
    return-object v0

    .line 38
    :cond_11
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1108"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 39
    const-string/jumbo v0, "fonts/phetsarath_ot.ttf"

    goto :goto_10

    .line 40
    :cond_22
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1109"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 41
    const-string/jumbo v0, "fonts/zawgyi_one.ttf"

    goto :goto_10

    .line 43
    :cond_33
    const-string/jumbo v0, "fonts/kit55p.ttf"

    goto :goto_10
.end method

.method public static FONTS_DEFAULT_SCALE(Landroid/content/Context;)D
    .registers 7
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const-wide v0, 0x3feb333333333333L

    const-wide v2, 0x3fe6666666666666L

    .line 102
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1054"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 113
    :cond_17
    :goto_17
    return-wide v0

    .line 105
    :cond_18
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1108"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    move-wide v0, v2

    .line 107
    goto :goto_17

    .line 108
    :cond_27
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1109"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-wide v0, v2

    .line 110
    goto :goto_17
.end method

.method public static FONTS_DEFAULT_SIZE(Landroid/content/Context;)F
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/high16 v0, 0x41c00000

    const/high16 v1, 0x41800000

    .line 118
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1054"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 125
    :cond_11
    :goto_11
    return v0

    .line 120
    :cond_12
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1108"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    .line 121
    goto :goto_11

    .line 122
    :cond_21
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1109"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 123
    goto :goto_11
.end method

.method public static FONTS_HEADER_SIZE(Landroid/content/Context;)F
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/high16 v0, 0x41f00000

    const/high16 v1, 0x41b00000

    .line 72
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1054"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 79
    :cond_11
    :goto_11
    return v0

    .line 74
    :cond_12
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1108"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    .line 75
    goto :goto_11

    .line 76
    :cond_21
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1109"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 77
    goto :goto_11
.end method

.method public static FONTS_LOGO_SIZE(Landroid/content/Context;)F
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/high16 v0, 0x41f00000

    const/high16 v1, 0x41b00000

    .line 48
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1054"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 55
    :cond_11
    :goto_11
    return v0

    .line 50
    :cond_12
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1108"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    .line 51
    goto :goto_11

    .line 52
    :cond_21
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1109"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 53
    goto :goto_11
.end method

.method public static GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 239
    sget-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_LAOS:Ljava/lang/String;

    .line 245
    :goto_f
    return-object v0

    .line 240
    :cond_10
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 241
    sget-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_CAMB:Ljava/lang/String;

    goto :goto_f

    .line 242
    :cond_20
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 243
    sget-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_MYAN:Ljava/lang/String;

    goto :goto_f

    .line 245
    :cond_30
    sget-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_THAI:Ljava/lang/String;

    goto :goto_f
.end method

.method public static GetIsAutoLogin(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    const/4 v0, 0x1

    .line 282
    .local v0, "IsAutoLogin":Z
    sget-object v2, Lcom/bzbs/data/AppSetting;->gPREF_FILE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 283
    .local v1, "savedSession":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "IsAutoLogin"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 284
    return v0
.end method

.method public static InitialLibBuzzebeesConfig(Landroid/content/Context;)V
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 548
    sget-object v0, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    .line 549
    sget-object v0, Lcom/bzbs/data/AppSetting;->API_URL_BZBS_BLOB:Ljava/lang/String;

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->API_URL_BZBS_BLOB:Ljava/lang/String;

    .line 550
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->SetAppId(Landroid/content/Context;Ljava/lang/String;)Z

    .line 551
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z

    .line 552
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->SetUserId(Landroid/content/Context;Ljava/lang/String;)Z

    .line 553
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->SetFacebookUID(Landroid/content/Context;Ljava/lang/String;)Z

    .line 554
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/bzbs/lib/survey/LibUserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 555
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 557
    invoke-static {p0, v2}, Lcom/bzbs/lib/survey/LibUserLogin;->SetIsShowConditionInMarket(Landroid/content/Context;Z)Z

    .line 558
    invoke-static {p0, v2}, Lcom/bzbs/lib/survey/LibUserLogin;->SetIsShowUseDialogInMarket(Landroid/content/Context;Z)Z

    .line 559
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetIsShowShoppingBasket(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->SetIsShowShoppingBasket(Landroid/content/Context;Z)Z

    .line 560
    return-void
.end method

.method public static LOGIN_OTP(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static NOTIFICATION_ID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 252
    sget-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_LAOS:Ljava/lang/String;

    .line 258
    :goto_f
    return-object v0

    .line 253
    :cond_10
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 254
    sget-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_CAMB:Ljava/lang/String;

    goto :goto_f

    .line 255
    :cond_20
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 256
    sget-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_MYAN:Ljava/lang/String;

    goto :goto_f

    .line 258
    :cond_30
    sget-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_THAI:Ljava/lang/String;

    goto :goto_f
.end method

.method public static SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 203
    sget-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_LAOS:Ljava/lang/String;

    .line 209
    :goto_f
    return-object v0

    .line 204
    :cond_10
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 205
    sget-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_CAMB:Ljava/lang/String;

    goto :goto_f

    .line 206
    :cond_20
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 207
    sget-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_MYAN:Ljava/lang/String;

    goto :goto_f

    .line 209
    :cond_30
    sget-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_THAI:Ljava/lang/String;

    goto :goto_f
.end method

.method public static SetIsAutoLogin(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pIsAutoLogin"    # Z

    .prologue
    .line 275
    sget-object v1, Lcom/bzbs/data/AppSetting;->gPREF_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "IsAutoLogin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 443
    invoke-static {}, Lcom/bzbs/util/VersionUtils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 449
    :goto_a
    return-object v1

    .line 448
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static isExternalStorageRemovable()Z
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 429
    invoke-static {}, Lcom/bzbs/util/VersionUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 430
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 432
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method
