.class public Lcom/bzbs/lib/survey/LibConst;
.super Ljava/lang/Object;
.source "LibConst.java"


# static fields
.field public static API_URL_BUZZEBEES:Ljava/lang/String; = null

.field public static API_URL_BZBS_BLOB:Ljava/lang/String; = null

.field public static APP_CONTEXT:Landroid/content/Context; = null

.field public static final APP_ID_FACEBOOK:Ljava/lang/String; = "313503682145995"

.field public static final APP_NAME:Ljava/lang/String; = "GalaxyReward"

.field public static AUTH_BUZZEBEES_PREFIX:Ljava/lang/String; = null

.field public static CAN_BUY_POINT:Z = false

.field public static DASHBOARD_KEY:Ljava/lang/String; = null

.field public static final FONTS_DEFAULT:Ljava/lang/String; = "fonts/kit55p.ttf"

.field public static final FONTS_DEFAULT_HEADER:Ljava/lang/String; = "fonts/DSNSKW_.TTF"

.field public static final FONTS_DEFAULT_LOGO:Ljava/lang/String; = "fonts/HARLOWSI.TTF"

.field public static FONTS_DEFAULT_SCALE:D = 0.0

.field public static final GA_TRACKING_ID:Ljava/lang/String; = "UA-52534838-1"

.field public static final IS_DISPLAY_LOG:Z = false

.field public static final MAX_SIZE_FILE:I = 0x1

.field public static M_ACTIVITY:Landroid/app/Activity;

.field public static PACKAGE_PARENT:Ljava/lang/String;

.field public static SPONSOR_ID:Ljava/lang/String;

.field public static UriPlayStoreBuzzebees:Ljava/lang/String;

.field public static UriPlayStoreSamsung:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    const-string/jumbo v0, "5248"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->SPONSOR_ID:Ljava/lang/String;

    .line 62
    const-wide v0, 0x3feb333333333333L

    sput-wide v0, Lcom/bzbs/lib/survey/LibConst;->FONTS_DEFAULT_SCALE:D

    .line 64
    const-string/jumbo v0, "com.samsung.th.galaxyappcenter"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/LibConst;->CAN_BUY_POINT:Z

    .line 66
    const-string/jumbo v0, "https://api.buzzebees.com/"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "http://buzzebees.blob.core.windows.net/"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->API_URL_BZBS_BLOB:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->DASHBOARD_KEY:Ljava/lang/String;

    .line 260
    const-string/jumbo v0, "android"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->AUTH_BUZZEBEES_PREFIX:Ljava/lang/String;

    .line 262
    const-string/jumbo v0, "ic.buzzebees"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->UriPlayStoreBuzzebees:Ljava/lang/String;

    .line 263
    const-string/jumbo v0, "ic.galaxysocialplus"

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->UriPlayStoreSamsung:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 225
    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Lcom/bzbs/lib/survey/LibConst;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_13
    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "androidPath":Ljava/lang/String;
    :goto_1b
    return-object v0

    .line 225
    .end local v0    # "androidPath":Ljava/lang/String;
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public static GET_COLOR_CAT(Ljava/lang/String;)I
    .registers 6
    .param p0, "cat"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xde

    const/16 v3, 0x59

    const/16 v1, 0x2c

    const/4 v2, 0x0

    .line 202
    if-eqz p0, :cond_82

    .line 203
    const-string/jumbo v0, "900329"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 204
    const/16 v0, 0xd8

    const/16 v1, 0x7f

    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 219
    :goto_1a
    return v0

    .line 205
    :cond_1b
    const-string/jumbo v0, "900328"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 206
    const/16 v0, 0x99

    const/16 v1, 0xdc

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1a

    .line 207
    :cond_2d
    const-string/jumbo v0, "900331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 208
    const/16 v0, 0xfe

    const/16 v1, 0xae

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1a

    .line 209
    :cond_41
    const-string/jumbo v0, "900330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 210
    const/16 v0, 0x6b

    const/16 v1, 0x90

    const/16 v2, 0x43

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1a

    .line 211
    :cond_55
    const-string/jumbo v0, "900332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 212
    const/16 v0, 0x4e

    const/16 v1, 0x32

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1a

    .line 213
    :cond_69
    const-string/jumbo v0, "900333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 214
    const/16 v0, 0x3d

    const/16 v1, 0x46

    const/16 v2, 0x4d

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1a

    .line 216
    :cond_7d
    invoke-static {v4, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1a

    .line 219
    :cond_82
    invoke-static {v4, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1a
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 256
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

    .line 257
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

    return-object v1
.end method

.method public static isExternalStorageRemovable()Z
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method
