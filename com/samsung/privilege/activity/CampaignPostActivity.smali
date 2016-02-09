.class public Lcom/samsung/privilege/activity/CampaignPostActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CampaignPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;
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

.field private paramCampaign:Lcom/samsung/privilege/bean/CampaignView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-string v0, "campaign.post"

    sput-object v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 75
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gCurrentStickerSet:I

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->MENU_BrowseImage:I

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->MENU_TakePhoto:I

    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->MENU_DeletePhoto:I

    .line 515
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->doPosting:Z

    .line 60
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignPostActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignPostActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignPostActivity;Z)V
    .registers 2

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->doPosting:Z

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/CampaignPostActivity;)I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gCurrentStickerSet:I

    return v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/CampaignPostActivity;Lcom/samsung/privilege/PostData;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/CampaignPostActivity;I)V
    .registers 2

    .prologue
    .line 75
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gCurrentStickerSet:I

    return-void
.end method

.method private static getOutputMediaFile(I)Ljava/io/File;
    .registers 8
    .param p0, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 412
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "BuzzeBees"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 416
    .local v1, "mediaStorageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 417
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 437
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1a
    :goto_1a
    return-object v3

    .line 422
    .restart local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1b
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "timeStamp":Ljava/lang/String;
    const/16 v4, 0x64

    if-ne p0, v4, :cond_89

    .line 424
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

    sput-object v4, Lcom/samsung/privilege/activity/CampaignPostActivity;->path:Ljava/lang/String;

    .line 425
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

    sput-object v4, Lcom/samsung/privilege/activity/CampaignPostActivity;->mediaFile:Ljava/io/File;

    .line 432
    :goto_86
    sget-object v3, Lcom/samsung/privilege/activity/CampaignPostActivity;->mediaFile:Ljava/io/File;

    goto :goto_1a

    .line 426
    :cond_89
    const/16 v4, 0xc8

    if-ne p0, v4, :cond_1a

    .line 427
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

    sput-object v4, Lcom/samsung/privilege/activity/CampaignPostActivity;->mediaFile:Ljava/io/File;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bb} :catch_bc

    goto :goto_86

    .line 434
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :catch_bc
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a
.end method

.method private static getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 401
    invoke-static {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 402
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 403
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 405
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private initialLayout()V
    .registers 18

    .prologue
    .line 243
    const v1, 0x7f1b0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/loopj/android/image/SmartImageView;

    .line 244
    .local v12, "imgSticker":Lcom/loopj/android/image/SmartImageView;
    const v1, 0x7f1b000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 245
    .local v15, "tvHeaderCaption":Landroid/widget/TextView;
    const v1, 0x7f1b0012

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 246
    .local v14, "tvCampaignName":Landroid/widget/TextView;
    const v1, 0x7f1b0011

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 247
    .local v13, "tvCampaignDesc":Landroid/widget/TextView;
    const v1, 0x7f1b0004

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 248
    .local v9, "etTextPost":Landroid/widget/EditText;
    const v1, 0x7f1b0013

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 249
    .local v16, "tvPost":Landroid/widget/TextView;
    const v1, 0x7f1b0010

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 251
    .local v3, "imgCampaignSmart":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v1, v1, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v1, v1, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/agency/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/picture"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "img_campaign_agency":Ljava/lang/String;
    if-eqz v2, :cond_f8

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f8

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v4, 0x0

    const v5, 0x7f02039f

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 285
    :cond_f8
    const v1, 0x7f1b000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/GridView;

    .line 286
    .local v10, "gridSticker":Landroid/widget/GridView;
    const v1, 0x7f1b0009

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/GridView;

    .line 288
    .local v11, "gridStickerSet":Landroid/widget/GridView;
    new-instance v8, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v8, v1, v4}, Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 289
    .local v8, "adapterStickerSet":Lcom/samsung/privilege/adapter/KeyboardStickerSetAdapter;
    invoke-virtual {v11, v8}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_14d

    .line 292
    new-instance v7, Lcom/samsung/privilege/adapter/KeyboardStickerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/StickerSet;

    iget-object v1, v1, Lcom/samsung/privilege/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-direct {v7, v4, v1}, Lcom/samsung/privilege/adapter/KeyboardStickerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 293
    .local v7, "adapterSticker":Lcom/samsung/privilege/adapter/KeyboardStickerAdapter;
    invoke-virtual {v10, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    .end local v7    # "adapterSticker":Lcom/samsung/privilege/adapter/KeyboardStickerAdapter;
    :cond_14d
    new-instance v1, Lcom/samsung/privilege/activity/CampaignPostActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v12}, Lcom/samsung/privilege/activity/CampaignPostActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignPostActivity;Lcom/loopj/android/image/SmartImageView;)V

    invoke-virtual {v10, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 320
    new-instance v1, Lcom/samsung/privilege/activity/CampaignPostActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v10}, Lcom/samsung/privilege/activity/CampaignPostActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignPostActivity;Landroid/widget/GridView;)V

    invoke-virtual {v11, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 328
    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 240
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    const-string v2, "buzzebees.market"

    const-string v3, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "onSaveInstanceState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 222
    const-string v2, "paramCampaign"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 223
    const-string v2, "gPostData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/PostData;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    .line 225
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v2, :cond_45

    .line 226
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v2, v2, Lcom/samsung/privilege/PostData;->gPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_45

    .line 228
    const v2, 0x7f1b0003

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/loopj/android/image/SmartImageView;

    .line 229
    .local v1, "imgSticker":Lcom/loopj/android/image/SmartImageView;
    invoke-virtual {v1, v0}, Lcom/loopj/android/image/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/loopj/android/image/SmartImageView;->setTag(Ljava/lang/Object;)V

    .line 231
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v0, v2, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 235
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imgSticker":Lcom/loopj/android/image/SmartImageView;
    :cond_45
    return-void
.end method

.method private saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW()V
    .registers 19

    .prologue
    .line 643
    sget-object v3, Lcom/samsung/privilege/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;

    const-string v4, "private void saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW() {"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 645
    .local v5, "postFileName":Ljava/lang/String;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 647
    .local v8, "params":Landroid/os/Bundle;
    const v3, 0x7f1b0004

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 648
    .local v10, "etTextPost":Landroid/widget/EditText;
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 651
    .local v6, "stringComment":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/buzz?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, "url":Ljava/lang/String;
    const-string v3, "message"

    invoke-virtual {v8, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const v3, 0x7f1b0003

    :try_start_7b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/loopj/android/image/SmartImageView;

    .line 656
    .local v13, "imgSticker":Lcom/loopj/android/image/SmartImageView;
    invoke-virtual {v13}, Lcom/loopj/android/image/SmartImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/privilege/bean/Sticker;

    .line 657
    .local v15, "sticker":Lcom/samsung/privilege/bean/Sticker;
    if-eqz v15, :cond_92

    .line 658
    const-string v3, "sticker"

    iget-object v4, v15, Lcom/samsung/privilege/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_92} :catch_f8

    .line 664
    .end local v13    # "imgSticker":Lcom/loopj/android/image/SmartImageView;
    .end local v15    # "sticker":Lcom/samsung/privilege/bean/Sticker;
    :cond_92
    :goto_92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v3, :cond_ee

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_ee

    .line 667
    :try_start_a0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_photo.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 668
    .local v12, "fullpath":Ljava/lang/String;
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 669
    .local v14, "out":Ljava/io/FileOutputStream;
    const-string v3, "source"

    invoke-virtual {v8, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {v3, v4, v7, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_ca} :catch_112
    .catchall {:try_start_a0 .. :try_end_ca} :catchall_150

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_ee

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 678
    :cond_e7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 684
    .end local v12    # "fullpath":Ljava/lang/String;
    .end local v14    # "out":Ljava/io/FileOutputStream;
    :cond_ee
    :goto_ee
    const-string v3, "RequestParams"

    const-string v4, "Market Review"

    const/16 v7, 0x18

    invoke-static/range {v2 .. v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->saveParamsToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 688
    return-void

    .line 660
    :catch_f8
    move-exception v11

    .line 661
    .local v11, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/privilege/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Error while get sticker!:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    .line 671
    .end local v11    # "ex":Ljava/lang/Exception;
    :catch_112
    move-exception v9

    .line 672
    .local v9, "e":Ljava/lang/Exception;
    :try_start_113
    sget-object v3, Lcom/samsung/privilege/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "(Exception|saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW|1):"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_113 .. :try_end_12b} :catchall_150

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_ee

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_148

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 678
    :cond_148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_ee

    .line 673
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_150
    move-exception v3

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v4, v4, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_175

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v4, v4, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_16e

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v4, v4, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 678
    :cond_16e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 680
    :cond_175
    throw v3
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignPostActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignPostActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignPostActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    return-void
.end method


# virtual methods
.method public doAttachImage(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 512
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->openContextMenu(Landroid/view/View;)V

    .line 513
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->finish()V

    .line 508
    return-void
.end method

.method public doPost(Landroid/view/View;)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 517
    iget-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->doPosting:Z

    if-eqz v11, :cond_c

    .line 518
    sget-object v11, Lcom/samsung/privilege/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;

    const-string v12, "if (doPosting == true) {"

    invoke-static {v11, v12}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :goto_b
    return-void

    .line 520
    :cond_c
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->doPosting:Z

    .line 522
    const v11, 0x7f1b0004

    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 523
    .local v0, "etTextPost":Landroid/widget/EditText;
    const v11, 0x7f1b0003

    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/loopj/android/image/SmartImageView;

    .line 525
    .local v1, "imgSticker":Lcom/loopj/android/image/SmartImageView;
    const/4 v3, 0x0

    .line 527
    .local v3, "isHaveDataPost":Z
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 529
    .local v9, "stringComment":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_42

    .line 530
    const v11, 0x7f0a0106

    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V

    .line 531
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->doPosting:Z

    goto :goto_b

    .line 535
    :cond_42
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_49

    .line 536
    const/4 v3, 0x1

    .line 539
    :cond_49
    invoke-virtual {v1}, Lcom/loopj/android/image/SmartImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/privilege/bean/Sticker;

    .line 540
    .local v7, "sticker":Lcom/samsung/privilege/bean/Sticker;
    if-eqz v7, :cond_52

    .line 541
    const/4 v3, 0x1

    .line 544
    :cond_52
    const/4 v4, 0x0

    .line 545
    .local v4, "isHavePicture":Z
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v11, :cond_5f

    .line 546
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v11, v11, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_5f

    .line 547
    const/4 v3, 0x1

    .line 548
    const/4 v4, 0x1

    .line 552
    :cond_5f
    if-eqz v3, :cond_107

    .line 553
    if-nez v4, :cond_e7

    .line 554
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "api/campaign/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v12, v12, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/buzz?token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 555
    .local v8, "strURL":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v6, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v11, Lcom/samsung/privilege/bean/InputItem;

    const-string v12, "message"

    invoke-direct {v11, v12, v9}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    if-eqz v7, :cond_af

    .line 558
    new-instance v11, Lcom/samsung/privilege/bean/InputItem;

    const-string v12, "sticker"

    iget-object v13, v7, Lcom/samsung/privilege/bean/Sticker;->Text:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_af
    const-string v11, ""

    const v12, 0x7f0a018d

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v11, v12, v13}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 564
    :try_start_bf
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gDialog:Landroid/app/ProgressDialog;

    const v12, 0x102000b

    invoke-virtual {v11, v12}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 565
    .local v5, "mMessageView":Landroid/widget/TextView;
    if-eqz v5, :cond_dc

    .line 566
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 567
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_dc} :catch_116

    .line 573
    .end local v5    # "mMessageView":Landroid/widget/TextView;
    :cond_dc
    :goto_dc
    new-instance v11, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;

    invoke-direct {v11, p0}, Lcom/samsung/privilege/activity/CampaignPostActivity$PostReviewListener;-><init>(Lcom/samsung/privilege/activity/CampaignPostActivity;)V

    const/4 v12, 0x0

    invoke-static {v8, v6, v11, v12}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 575
    .end local v6    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v8    # "strURL":Ljava/lang/String;
    :cond_e7
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW()V

    .line 577
    const-string v11, "content://someURI"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 578
    .local v10, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-direct {v2, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 579
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v11, 0x14000000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 580
    const/4 v11, -0x1

    invoke-virtual {p0, v11, v2}, Lcom/samsung/privilege/activity/CampaignPostActivity;->setResult(ILandroid/content/Intent;)V

    .line 582
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->doPosting:Z

    .line 583
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->finish()V

    goto/16 :goto_b

    .line 586
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_107
    const v11, 0x7f0a0107

    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V

    .line 587
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->doPosting:Z

    goto/16 :goto_b

    .line 569
    .restart local v6    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .restart local v8    # "strURL":Ljava/lang/String;
    :catch_116
    move-exception v11

    goto :goto_dc
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f1b0003

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 442
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 443
    if-ne p2, v3, :cond_78

    const/16 v0, 0xa

    if-ne p1, v0, :cond_78

    .line 446
    :try_start_e
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/privilege/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 447
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 448
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v1, v1, Lcom/samsung/privilege/PostData;->gPhotoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 449
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 450
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 451
    .local v8, "columnIndex":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, "filePath":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 453
    invoke-static {v10}, Lcom/samsung/privilege/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 454
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_4f

    .line 455
    const v0, 0x7f0a031d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V

    .line 504
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_4e
    :goto_4e
    return-void

    .line 457
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "columnIndex":I
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "filePath":Ljava/lang/String;
    :cond_4f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v0, :cond_65

    .line 458
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_65

    .line 459
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 460
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 464
    :cond_65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v7, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 465
    const v0, 0x7f1b0003

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/loopj/android/image/SmartImageView;

    .line 466
    .local v11, "imgSticker":Lcom/loopj/android/image/SmartImageView;
    invoke-virtual {v11, v7}, Lcom/loopj/android/image/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_75} :catch_c7

    .line 468
    if-eqz v7, :cond_4e

    goto :goto_4e

    .line 476
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    .end local v11    # "imgSticker":Lcom/loopj/android/image/SmartImageView;
    :cond_78
    if-ne p2, v3, :cond_4e

    const/16 v0, 0x14

    if-ne p1, v0, :cond_4e

    .line 477
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/privilege/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 478
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_b1

    .line 479
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v0, :cond_9d

    .line 480
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9d

    .line 481
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v1, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 486
    :cond_9d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v6, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 487
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/loopj/android/image/SmartImageView;

    .line 488
    .restart local v11    # "imgSticker":Lcom/loopj/android/image/SmartImageView;
    invoke-virtual {v11, v6}, Lcom/loopj/android/image/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 489
    invoke-virtual {v11, v1}, Lcom/loopj/android/image/SmartImageView;->setTag(Ljava/lang/Object;)V

    .line 491
    if-eqz v6, :cond_4e

    .line 493
    const/4 v6, 0x0

    .line 495
    goto :goto_4e

    .line 496
    .end local v11    # "imgSticker":Lcom/loopj/android/image/SmartImageView;
    :cond_b1
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v0, :cond_4e

    .line 497
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4e

    .line 498
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 499
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v1, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_4e

    .line 473
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :catch_c7
    move-exception v0

    goto :goto_4e
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0xc

    .line 346
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput v5, v3, Lcom/samsung/privilege/PostData;->gModeMedia:I

    .line 347
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_b4

    .line 397
    :cond_e
    :goto_e
    const/4 v3, 0x1

    :goto_f
    return v3

    .line 350
    :pswitch_10
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 351
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 355
    const-string v3, "Select Picture"

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Lcom/samsung/privilege/activity/CampaignPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput v5, v3, Lcom/samsung/privilege/PostData;->gModeMedia:I

    goto :goto_e

    .line 360
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_39
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "i":Landroid/content/Intent;
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFileUri:Landroid/net/Uri;

    .line 364
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFileUri:Landroid/net/Uri;

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFileUri:Landroid/net/Uri;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 365
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFileUri:Landroid/net/Uri;

    iput-object v4, v3, Lcom/samsung/privilege/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 366
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    sget-object v4, Lcom/samsung/privilege/activity/CampaignPostActivity;->mediaFile:Ljava/io/File;

    iput-object v4, v3, Lcom/samsung/privilege/PostData;->gMediaFile:Ljava/io/File;

    .line 367
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    sget-object v4, Lcom/samsung/privilege/activity/CampaignPostActivity;->path:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/privilege/PostData;->gPath:Ljava/lang/String;

    .line 368
    const-string v3, "output"

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 370
    const/16 v3, 0x14

    invoke-virtual {p0, v0, v3}, Lcom/samsung/privilege/activity/CampaignPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 371
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    const/16 v4, 0xb

    iput v4, v3, Lcom/samsung/privilege/PostData;->gModeMedia:I

    goto :goto_e

    .line 373
    :cond_7b
    const-string v3, "Please check your memory card."

    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V

    .line 374
    const/4 v3, 0x0

    goto :goto_f

    .line 378
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_82
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v3, :cond_a1

    .line 379
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_97

    .line 380
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v4, v3, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 383
    :cond_97
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v3, v3, Lcom/samsung/privilege/PostData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v3, :cond_a1

    .line 384
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iput-object v4, v3, Lcom/samsung/privilege/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 388
    :cond_a1
    const v3, 0x7f1b0003

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/loopj/android/image/SmartImageView;

    .line 389
    .local v1, "imgSticker":Lcom/loopj/android/image/SmartImageView;
    if-eqz v1, :cond_e

    .line 392
    const v3, 0x7f0202cf

    invoke-virtual {v1, v3}, Lcom/loopj/android/image/SmartImageView;->setImageResource(I)V

    goto/16 :goto_e

    .line 347
    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_10
        :pswitch_39
        :pswitch_82
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_102

    .line 95
    const-string v9, "buzzebees.market"

    const-string v10, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_c
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignPostActivity;->requestWindowFeature(I)Z

    .line 101
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 104
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "campaigndetail"

    invoke-direct {v0, v9, v10}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x3e800000

    invoke-virtual {v0, v9, v10}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 109
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v9, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gScreenHeight:I

    .line 112
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v9, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gScreenWidth:I

    .line 114
    iget v8, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gScreenWidth:I

    .line 115
    .local v8, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gScreenHeight:I

    .line 117
    .local v2, "height":I
    if-le v2, v8, :cond_10b

    .end local v2    # "height":I
    :goto_59
    div-int/lit8 v5, v2, 0x2

    .line 118
    .local v5, "longest":I
    new-instance v9, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 119
    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v10, 0x7f02039f

    invoke-virtual {v9, v10}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 120
    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 121
    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 124
    const v9, 0x7f0300b5

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignPostActivity;->setContentView(I)V

    .line 126
    const v9, 0x7f070031

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 127
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "768830479847872"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10e

    .line 128
    const v9, 0x7f0202b6

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :goto_a2
    const v9, 0x7f1b000e

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 138
    .local v4, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_146

    .line 139
    const v9, 0x7f0202ba

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :goto_bb
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gHandler:Landroid/os/Handler;

    .line 145
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gFont:Landroid/graphics/Typeface;

    .line 147
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 149
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v7, "root":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_f2

    .line 151
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 154
    :cond_f2
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->initialParam()V

    .line 155
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->initialLayout()V

    .line 157
    if-nez p1, :cond_14e

    .line 158
    new-instance v9, Lcom/samsung/privilege/PostData;

    invoke-direct {v9}, Lcom/samsung/privilege/PostData;-><init>()V

    iput-object v9, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    .line 162
    :goto_101
    return-void

    .line 97
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "imgFlag":Landroid/widget/ImageView;
    .end local v4    # "imgLogo":Landroid/widget/ImageView;
    .end local v5    # "longest":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "root":Ljava/io/File;
    .end local v8    # "width":I
    :cond_102
    const-string v9, "buzzebees.market"

    const-string v10, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "width":I
    :cond_10b
    move v2, v8

    .line 117
    goto/16 :goto_59

    .line 129
    .end local v2    # "height":I
    .restart local v3    # "imgFlag":Landroid/widget/ImageView;
    .restart local v5    # "longest":I
    :cond_10e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1525635597652592"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_126

    .line 130
    const v9, 0x7f0202b5

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a2

    .line 131
    :cond_126
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "517155661760483"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13e

    .line 132
    const v9, 0x7f0202b7

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a2

    .line 134
    :cond_13e
    const v9, 0x7f0202b8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a2

    .line 141
    .restart local v4    # "imgLogo":Landroid/widget/ImageView;
    :cond_146
    const v9, 0x7f0202b9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_bb

    .line 160
    .restart local v7    # "root":Ljava/io/File;
    :cond_14e
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignPostActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_101
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

    .line 332
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 333
    const v0, 0x7f0a031c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 334
    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 335
    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 337
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    iget-object v0, v0, Lcom/samsung/privilege/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3a

    .line 338
    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v4, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 342
    :goto_39
    return-void

    .line 340
    :cond_3a
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_39
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 199
    const-string v0, "buzzebees.market"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 179
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 180
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 181
    const-string v0, "buzzebees.market"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 192
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 193
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 216
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    const-string v0, "buzzebees.market"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 210
    const-string v0, "gPostData"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignPostActivity;->gPostData:Lcom/samsung/privilege/PostData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 211
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 167
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 187
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method
