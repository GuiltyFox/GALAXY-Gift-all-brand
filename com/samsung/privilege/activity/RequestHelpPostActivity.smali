.class public Lcom/samsung/privilege/activity/RequestHelpPostActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RequestHelpPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;,
        Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "campaigndetail"

.field private static LOGCAT:Ljava/lang/String; = null

.field private static final MEDIA_TYPE_IMAGE:I = 0x64

.field private static final MEDIA_TYPE_VIDEO:I = 0xc8

.field private static final RC_BrowseImage:I = 0xa

.field private static final RC_TakePhoto:I = 0x14

.field private static mediaFile:Ljava/io/File;

.field private static path:Ljava/lang/String;


# instance fields
.field private final MENU_BrowseImage:I

.field private final MENU_DeletePhoto:I

.field private final MENU_TakePhoto:I

.field private doPosting:Z

.field private gCurrentStickerSet:I

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFileUri:Landroid/net/Uri;

.field private gFont:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gPostData:Lcom/samsung/privilege/PostData;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "campaign.post"

    sput-object v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->LOGCAT:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 72
    iput v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gCurrentStickerSet:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->MENU_BrowseImage:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->MENU_TakePhoto:I

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->MENU_DeletePhoto:I

    .line 490
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->doPosting:Z

    .line 57
    return-void
.end method

.method private IsHasAddress()V
    .registers 5

    .prologue
    .line 173
    const-string v0, ""

    .line 174
    .local v0, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/profile/me?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;-><init>(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/RequestHelpPostActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/RequestHelpPostActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Z)V
    .registers 2

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->doPosting:Z

    return-void
.end method

.method private static getOutputMediaFile(I)Ljava/io/File;
    .registers 8
    .param p0, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 387
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "BuzzeBees"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    .local v1, "mediaStorageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 394
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 414
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1a
    :goto_1a
    return-object v3

    .line 399
    .restart local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1b
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "timeStamp":Ljava/lang/String;
    const/16 v4, 0x64

    if-ne p0, v4, :cond_89

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BB_IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->path:Ljava/lang/String;

    .line 402
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "BB_IMG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->mediaFile:Ljava/io/File;

    .line 409
    :goto_86
    sget-object v3, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->mediaFile:Ljava/io/File;

    goto :goto_1a

    .line 403
    :cond_89
    const/16 v4, 0xc8

    if-ne p0, v4, :cond_1a

    .line 404
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "VID_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->mediaFile:Ljava/io/File;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bb} :catch_bc

    goto :goto_86

    .line 411
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :catch_bc
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a
.end method

.method private static getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 376
    invoke-static {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 377
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 378
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 380
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 276
    const-string v1, "buzzebees.market"

    const-string v2, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "onSaveInstanceState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 280
    const-string v1, "gPostData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/PostData;

    iput-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    .line 282
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v1, :cond_2b

    .line 283
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v1, v1, Lcom/samsung/privilege/PostData;->gPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2b

    .line 289
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v0, v1, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 293
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2b
    return-void
.end method

.method private saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW()V
    .registers 21

    .prologue
    .line 630
    sget-object v3, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->LOGCAT:Ljava/lang/String;

    const-string v4, "private void saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW() {"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, "postFileName":Ljava/lang/String;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 634
    .local v8, "params":Landroid/os/Bundle;
    new-instance v10, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v10, v3}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 635
    .local v10, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {v10}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    .line 636
    .local v11, "device_id":Ljava/lang/String;
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 637
    .local v9, "AndroidVersion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 639
    .local v16, "platform":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UserId= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Name= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Surname= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IMEI= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "osVersion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Platform= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 641
    .local v17, "stringData":Ljava/lang/String;
    const v3, 0x7f070364

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 642
    .local v13, "etTextPost":Landroid/widget/EditText;
    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 644
    .local v6, "stringComment":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_21e

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/buzz/f-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/buzz?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "url":Ljava/lang/String;
    const-string v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "------------------------"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v3, :cond_1b0

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1b0

    .line 665
    :try_start_162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_photo.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 666
    .local v14, "fullpath":Ljava/lang/String;
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 667
    .local v15, "out":Ljava/io/FileOutputStream;
    const-string v3, "source"

    invoke-virtual {v8, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {v3, v4, v7, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_18c} :catch_1ba
    .catchall {:try_start_162 .. :try_end_18c} :catchall_1f8

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1b0

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1a9

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 682
    .end local v14    # "fullpath":Ljava/lang/String;
    .end local v15    # "out":Ljava/io/FileOutputStream;
    :cond_1b0
    :goto_1b0
    const-string v3, "RequestParams"

    const-string v4, "Market Review"

    const/16 v7, 0x18

    invoke-static/range {v2 .. v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->saveParamsToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 686
    .end local v2    # "url":Ljava/lang/String;
    :goto_1b9
    return-void

    .line 669
    .restart local v2    # "url":Ljava/lang/String;
    :catch_1ba
    move-exception v12

    .line 670
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1bb
    sget-object v3, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "(Exception|saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW|1):"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d3
    .catchall {:try_start_1bb .. :try_end_1d3} :catchall_1f8

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1b0

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1f0

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_1b0

    .line 671
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_1f8
    move-exception v3

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v4, v4, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_21d

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v4, v4, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_216

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v4, v4, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    :cond_216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 678
    :cond_21d
    throw v3

    .line 684
    .end local v2    # "url":Ljava/lang/String;
    :cond_21e
    const-string v3, "Please enter post message."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1b9
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpPostActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity$1;-><init>(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 696
    return-void
.end method


# virtual methods
.method public doAttachImage(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 487
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->openContextMenu(Landroid/view/View;)V

    .line 488
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->finish()V

    .line 483
    return-void
.end method

.method public doPost(Landroid/view/View;)V
    .registers 25
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 493
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->doPosting:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 494
    sget-object v19, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->LOGCAT:Ljava/lang/String;

    const-string v20, "if (doPosting == true) {"

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :goto_f
    return-void

    .line 496
    :cond_10
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->doPosting:Z

    .line 498
    const v19, 0x7f070364

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 502
    .local v7, "etTextPost":Landroid/widget/EditText;
    const/4 v10, 0x0

    .line 504
    .local v10, "isHaveDataPost":Z
    new-instance v5, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 505
    .local v5, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {v5}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, "device_id":Ljava/lang/String;
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 507
    .local v4, "AndroidVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 509
    .local v14, "platform":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "UserId= "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Name= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Surname= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "IMEI= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "osVersion= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Platform= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 510
    .local v16, "stringData":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 512
    .local v15, "stringComment":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_fd

    .line 513
    const v19, 0x7f0a0106

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V

    .line 514
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->doPosting:Z

    goto/16 :goto_f

    .line 518
    :cond_fd
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_104

    .line 519
    const/4 v10, 0x1

    .line 527
    :cond_104
    const/4 v11, 0x0

    .line 528
    .local v11, "isHavePicture":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11d

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11d

    .line 530
    const/4 v10, 0x1

    .line 531
    const/4 v11, 0x1

    .line 535
    :cond_11d
    if-eqz v10, :cond_231

    .line 536
    if-nez v11, :cond_200

    .line 540
    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "api/buzz/f-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/buzz?token="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 541
    .local v18, "url":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v13, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "message"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "------------------------"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v19, ""

    const v20, 0x7f0a018d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 550
    :try_start_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    const v20, 0x102000b

    invoke-virtual/range {v19 .. v20}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 551
    .local v12, "mMessageView":Landroid/widget/TextView;
    if-eqz v12, :cond_1ea

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 553
    .local v8, "font":Landroid/graphics/Typeface;
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1ea} :catch_24d

    .line 560
    .end local v8    # "font":Landroid/graphics/Typeface;
    .end local v12    # "mMessageView":Landroid/widget/TextView;
    :cond_1ea
    :goto_1ea
    new-instance v19, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity$PostReviewListener;-><init>(Lcom/samsung/privilege/activity/RequestHelpPostActivity;)V

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v13, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 562
    .end local v13    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v18    # "url":Ljava/lang/String;
    :cond_200
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW()V

    .line 564
    const-string v19, "content://someURI"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 565
    .local v17, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 566
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v19, 0x14000000

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->setResult(ILandroid/content/Intent;)V

    .line 569
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->doPosting:Z

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->finish()V

    goto/16 :goto_f

    .line 573
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_231
    const v19, 0x7f0a0107

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V

    .line 574
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->doPosting:Z

    goto/16 :goto_f

    .line 556
    .restart local v13    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .restart local v18    # "url":Ljava/lang/String;
    :catch_24d
    move-exception v19

    goto :goto_1ea
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 419
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 420
    const/4 v0, -0x1

    if-ne p2, v0, :cond_74

    const/16 v0, 0xa

    if-ne p1, v0, :cond_74

    .line 422
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/privilege/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 423
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 424
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v1, v1, Lcom/samsung/privilege/PostData;->gPhotoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 425
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 426
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 427
    .local v8, "columnIndex":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 428
    .local v10, "filePath":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 429
    invoke-static {v10}, Lcom/samsung/privilege/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 430
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_4b

    .line 431
    const v0, 0x7f0a031d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V

    .line 479
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void

    .line 434
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "columnIndex":I
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "filePath":Ljava/lang/String;
    :cond_4b
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v0, :cond_61

    .line 435
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_61

    .line 436
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 437
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 441
    :cond_61
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v7, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 442
    const v0, 0x7f070363

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/loopj/android/image/SmartImageView;

    .line 443
    .local v11, "imgSticker":Lcom/loopj/android/image/SmartImageView;
    invoke-virtual {v11, v7}, Lcom/loopj/android/image/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 445
    if-eqz v7, :cond_4a

    goto :goto_4a

    .line 451
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    .end local v11    # "imgSticker":Lcom/loopj/android/image/SmartImageView;
    :cond_74
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4a

    const/16 v0, 0x14

    if-ne p1, v0, :cond_4a

    .line 452
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/privilege/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 453
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_b3

    .line 454
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v0, :cond_9b

    .line 455
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9b

    .line 456
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 457
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 461
    :cond_9b
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v6, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 462
    const v0, 0x7f070363

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/loopj/android/image/SmartImageView;

    .line 463
    .restart local v11    # "imgSticker":Lcom/loopj/android/image/SmartImageView;
    invoke-virtual {v11, v6}, Lcom/loopj/android/image/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 464
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/loopj/android/image/SmartImageView;->setTag(Ljava/lang/Object;)V

    .line 466
    if-eqz v6, :cond_4a

    .line 468
    const/4 v6, 0x0

    .line 470
    goto :goto_4a

    .line 471
    .end local v11    # "imgSticker":Lcom/loopj/android/image/SmartImageView;
    :cond_b3
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v0, :cond_4a

    .line 472
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4a

    .line 473
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 474
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_4a
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0xc

    .line 311
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput v4, v2, Lcom/samsung/privilege/PostData;->gModeMedia:I

    .line 312
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_92

    .line 372
    :cond_e
    :goto_e
    const/4 v2, 0x1

    :goto_f
    return v2

    .line 326
    :pswitch_10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 327
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 329
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput v4, v2, Lcom/samsung/privilege/PostData;->gModeMedia:I

    goto :goto_e

    .line 334
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_28
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "i":Landroid/content/Intent;
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gFileUri:Landroid/net/Uri;

    .line 338
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gFileUri:Landroid/net/Uri;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gFileUri:Landroid/net/Uri;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 339
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gFileUri:Landroid/net/Uri;

    iput-object v3, v2, Lcom/samsung/privilege/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 340
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    sget-object v3, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->mediaFile:Ljava/io/File;

    iput-object v3, v2, Lcom/samsung/privilege/PostData;->gMediaFile:Ljava/io/File;

    .line 341
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    sget-object v3, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->path:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/privilege/PostData;->gPath:Ljava/lang/String;

    .line 342
    const-string v2, "output"

    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 344
    const/16 v2, 0x14

    invoke-virtual {p0, v0, v2}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 345
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/16 v3, 0xb

    iput v3, v2, Lcom/samsung/privilege/PostData;->gModeMedia:I

    goto :goto_e

    .line 347
    :cond_6a
    const-string v2, "Please check your memory card."

    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V

    .line 348
    const/4 v2, 0x0

    goto :goto_f

    .line 352
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_71
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v2, :cond_e

    .line 353
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v2, v2, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_86

    .line 354
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v2, v2, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v3, v2, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 357
    :cond_86
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v2, v2, Lcom/samsung/privilege/PostData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v2, :cond_e

    .line 358
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v3, v2, Lcom/samsung/privilege/PostData;->gPhotoUri:Landroid/net/Uri;

    goto/16 :goto_e

    .line 312
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_10
        :pswitch_28
        :pswitch_71
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    if-eqz p1, :cond_14a

    .line 92
    const-string v12, "buzzebees.market"

    const-string v13, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_c
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->requestWindowFeature(I)Z

    .line 98
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 101
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "campaigndetail"

    invoke-direct {v0, v12, v13}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3e800000

    invoke-virtual {v0, v12, v13}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 106
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gScreenHeight:I

    .line 109
    iget v12, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gScreenWidth:I

    .line 111
    iget v11, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gScreenWidth:I

    .line 112
    .local v11, "width":I
    iget v3, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gScreenHeight:I

    .line 114
    .local v3, "height":I
    if-le v3, v11, :cond_153

    .end local v3    # "height":I
    :goto_59
    div-int/lit8 v6, v3, 0x2

    .line 115
    .local v6, "longest":I
    new-instance v12, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13, v6}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 116
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v13, 0x7f02039f

    invoke-virtual {v12, v13}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 117
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v12, v13, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 118
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 121
    const v12, 0x7f030113

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->setContentView(I)V

    .line 123
    const v12, 0x7f070031

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 124
    .local v4, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "768830479847872"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_156

    .line 125
    const v12, 0x7f0202b6

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :goto_a2
    const v12, 0x7f07005a

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 135
    .local v5, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_18e

    .line 136
    const v12, 0x7f0202ba

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :goto_bb
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    iput-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gHandler:Landroid/os/Handler;

    .line 142
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gFont:Landroid/graphics/Typeface;

    .line 144
    const v12, 0x7f07005b

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 145
    .local v9, "tvHeaderCaption":Landroid/widget/TextView;
    const v12, 0x7f070364

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 146
    .local v2, "etTextPost":Landroid/widget/EditText;
    const v12, 0x7f070366

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 148
    .local v10, "tvPost":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 150
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v12

    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setTextSize(F)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 158
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v8, "root":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_13d

    .line 160
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 163
    :cond_13d
    if-nez p1, :cond_196

    .line 164
    new-instance v12, Lcom/samsung/privilege/PostData;

    invoke-direct {v12}, Lcom/samsung/privilege/PostData;-><init>()V

    iput-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    .line 169
    :goto_146
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->IsHasAddress()V

    .line 170
    return-void

    .line 94
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "etTextPost":Landroid/widget/EditText;
    .end local v4    # "imgFlag":Landroid/widget/ImageView;
    .end local v5    # "imgLogo":Landroid/widget/ImageView;
    .end local v6    # "longest":I
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    .end local v8    # "root":Ljava/io/File;
    .end local v9    # "tvHeaderCaption":Landroid/widget/TextView;
    .end local v10    # "tvPost":Landroid/widget/TextView;
    .end local v11    # "width":I
    :cond_14a
    const-string v12, "buzzebees.market"

    const-string v13, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "height":I
    .restart local v7    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v11    # "width":I
    :cond_153
    move v3, v11

    .line 114
    goto/16 :goto_59

    .line 126
    .end local v3    # "height":I
    .restart local v4    # "imgFlag":Landroid/widget/ImageView;
    .restart local v6    # "longest":I
    :cond_156
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "1525635597652592"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16e

    .line 127
    const v12, 0x7f0202b5

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a2

    .line 128
    :cond_16e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "517155661760483"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_186

    .line 129
    const v12, 0x7f0202b7

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a2

    .line 131
    :cond_186
    const v12, 0x7f0202b8

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a2

    .line 138
    .restart local v5    # "imgLogo":Landroid/widget/ImageView;
    :cond_18e
    const v12, 0x7f0202b9

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_bb

    .line 166
    .restart local v2    # "etTextPost":Landroid/widget/EditText;
    .restart local v8    # "root":Ljava/io/File;
    .restart local v9    # "tvHeaderCaption":Landroid/widget/TextView;
    .restart local v10    # "tvPost":Landroid/widget/TextView;
    :cond_196
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_146
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .param p1, "cm"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "cminf"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 297
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 298
    const v0, 0x7f0a031c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 299
    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 300
    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 302
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3a

    .line 303
    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v4, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 307
    :goto_39
    return-void

    .line 305
    :cond_3a
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_39
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 254
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 255
    const-string v0, "buzzebees.market"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 235
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 236
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 237
    const-string v0, "buzzebees.market"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 248
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 249
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 272
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 228
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 261
    const-string v0, "buzzebees.market"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    const-string v0, "gPostData"

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 267
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 222
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 223
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 242
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 243
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method
