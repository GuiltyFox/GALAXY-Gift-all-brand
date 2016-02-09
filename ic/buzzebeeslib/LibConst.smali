.class public Lic/buzzebeeslib/LibConst;
.super Ljava/lang/Object;
.source "LibConst.java"


# static fields
.field public static API_URL_BUZZEBEES:Ljava/lang/String; = null

.field public static API_URL_BZBS_BLOB:Ljava/lang/String; = null

.field public static APP_CONTEXT:Landroid/content/Context; = null

.field public static final APP_ID_FACEBOOK:Ljava/lang/String; = "402705486466922"

.field public static final APP_NAME:Ljava/lang/String; = "GalaxyGift"

.field public static AUTH_BUZZEBEES_PREFIX:Ljava/lang/String; = null

.field public static CAN_BUY_POINT:Z = false

.field public static DASHBOARD_KEY:Ljava/lang/String; = null

.field public static final FONTS_DEFAULT:Ljava/lang/String; = "fonts/kit55p.ttf"

.field public static final FONTS_DEFAULT_HEADER:Ljava/lang/String; = "fonts/DSNSKW_.TTF"

.field public static final FONTS_DEFAULT_LOGO:Ljava/lang/String; = "fonts/HARLOWSI.TTF"

.field public static FONTS_DEFAULT_SCALE:D = 0.0

.field public static FONTS_DEFAULT_SIZE:F = 0.0f

.field public static FONTS_DEFAULT_SIZE_STEP:F = 0.0f

.field public static final GA_TRACKING_ID:Ljava/lang/String; = "UA-42649771-1"

.field public static final IS_DISPLAY_LOG:Z = false

.field public static final MAX_SIZE_FILE:I = 0x1

.field public static M_ACTIVITY:Landroid/app/Activity;

.field public static M_MenuMarketBuzzebeesFragment:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

.field public static PACKAGE_PARENT:Ljava/lang/String;

.field public static SPONSOR_ID:Ljava/lang/String;

.field public static UriPlayStoreBuzzebees:Ljava/lang/String;

.field public static UriPlayStoreSamsung:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    const-string v0, "70"

    sput-object v0, Lic/buzzebeeslib/LibConst;->SPONSOR_ID:Ljava/lang/String;

    .line 32
    const-wide v0, 0x3feb333333333333L

    sput-wide v0, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SCALE:D

    .line 33
    const/high16 v0, 0x41c00000

    sput v0, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SIZE:F

    .line 34
    const/high16 v0, 0x40000000

    sput v0, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SIZE_STEP:F

    .line 36
    const-string v0, "com.samsung.privilege"

    sput-object v0, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lic/buzzebeeslib/LibConst;->CAN_BUY_POINT:Z

    .line 38
    const-string v0, "https://api.buzzebees.com/"

    sput-object v0, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    .line 39
    const-string v0, "http://buzzebees.blob.core.windows.net/"

    sput-object v0, Lic/buzzebeeslib/LibConst;->API_URL_BZBS_BLOB:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v0, Lic/buzzebeeslib/LibConst;->DASHBOARD_KEY:Ljava/lang/String;

    .line 242
    const-string v0, "android"

    sput-object v0, Lic/buzzebeeslib/LibConst;->AUTH_BUZZEBEES_PREFIX:Ljava/lang/String;

    .line 244
    const-string v0, "ic.buzzebees"

    sput-object v0, Lic/buzzebeeslib/LibConst;->UriPlayStoreBuzzebees:Ljava/lang/String;

    .line 245
    const-string v0, "ic.galaxysocialplus"

    sput-object v0, Lic/buzzebeeslib/LibConst;->UriPlayStoreSamsung:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 207
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lic/buzzebeeslib/LibConst;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_12
    invoke-static {p0}, Lic/buzzebeeslib/LibConst;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "androidPath":Ljava/lang/String;
    :goto_1a
    return-object v0

    .line 207
    .end local v0    # "androidPath":Ljava/lang/String;
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static GET_COLOR_CAT(Ljava/lang/String;)I
    .registers 6
    .param p0, "cat"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xde

    const/16 v3, 0x59

    const/16 v1, 0x2c

    const/4 v2, 0x0

    .line 184
    if-eqz p0, :cond_7c

    .line 185
    const-string v0, "900329"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 186
    const/16 v0, 0xd8

    const/16 v1, 0x7f

    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 201
    :goto_19
    return v0

    .line 187
    :cond_1a
    const-string v0, "900328"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 188
    const/16 v0, 0x99

    const/16 v1, 0xdc

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_19

    .line 189
    :cond_2b
    const-string v0, "900331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 190
    const/16 v0, 0xfe

    const/16 v1, 0xae

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_19

    .line 191
    :cond_3e
    const-string v0, "900330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 192
    const/16 v0, 0x6b

    const/16 v1, 0x90

    const/16 v2, 0x43

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_19

    .line 193
    :cond_51
    const-string v0, "900332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 194
    const/16 v0, 0x4e

    const/16 v1, 0x32

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_19

    .line 195
    :cond_64
    const-string v0, "900333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 196
    const/16 v0, 0x3d

    const/16 v1, 0x46

    const/16 v2, 0x4d

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_19

    .line 198
    :cond_77
    invoke-static {v4, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_19

    .line 201
    :cond_7c
    invoke-static {v4, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_19
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 239
    :goto_a
    return-object v1

    .line 238
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .line 219
    invoke-static {}, Lcom/bitmapfun/util/Utils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 222
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method
