.class public Lic/buzzebeeslib/activity/CampaignPostActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CampaignPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_review"

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

.field private TAG:Ljava/lang/String;

.field private gCurrentStickerSet:I

.field private gEtTextPost:Landroid/widget/EditText;

.field private gFileUri:Landroid/net/Uri;

.field private gFont:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gImgSticker:Landroid/widget/ImageView;

.field private gPostData:Lic/buzzebeeslib/util/async/PostData;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gTvProfileName:Landroid/widget/TextView;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private paramCampaign:Lic/buzzebeeslib/bean/Campaign;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-string v0, "campaign.post"

    sput-object v0, Lic/buzzebeeslib/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gCurrentStickerSet:I

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->MENU_BrowseImage:I

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->MENU_TakePhoto:I

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->MENU_DeletePhoto:I

    .line 90
    const-class v0, Lic/buzzebeeslib/activity/CampaignPostActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignPostActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/CampaignPostActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/CampaignPostActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gTvProfileName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/CampaignPostActivity;)I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gCurrentStickerSet:I

    return v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/CampaignPostActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/CampaignPostActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/CampaignPostActivity;Lic/buzzebeeslib/util/async/PostData;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    return-void
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/CampaignPostActivity;I)V
    .registers 2

    .prologue
    .line 74
    iput p1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gCurrentStickerSet:I

    return-void
.end method

.method private static getOutputMediaFile(I)Ljava/io/File;
    .registers 8
    .param p0, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 464
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "BuzzeBees"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 468
    .local v1, "mediaStorageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 469
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 489
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1a
    :goto_1a
    return-object v3

    .line 474
    .restart local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1b
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "timeStamp":Ljava/lang/String;
    const/16 v4, 0x64

    if-ne p0, v4, :cond_89

    .line 476
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

    sput-object v4, Lic/buzzebeeslib/activity/CampaignPostActivity;->path:Ljava/lang/String;

    .line 477
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

    sput-object v4, Lic/buzzebeeslib/activity/CampaignPostActivity;->mediaFile:Ljava/io/File;

    .line 484
    :goto_86
    sget-object v3, Lic/buzzebeeslib/activity/CampaignPostActivity;->mediaFile:Ljava/io/File;

    goto :goto_1a

    .line 478
    :cond_89
    const/16 v4, 0xc8

    if-ne p0, v4, :cond_1a

    .line 479
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

    sput-object v4, Lic/buzzebeeslib/activity/CampaignPostActivity;->mediaFile:Ljava/io/File;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bb} :catch_bc

    goto :goto_86

    .line 486
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :catch_bc
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a
.end method

.method private static getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 453
    invoke-static {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 454
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 455
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 457
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private initialLayout()V
    .registers 15

    .prologue
    .line 257
    sget v11, Lic/buzzebeeslib/R$idCampaignPost;->imgSticker:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    .line 262
    sget v11, Lic/buzzebeeslib/R$idCampaignPost;->imgPost:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 266
    .local v7, "imgPost":Landroid/widget/Button;
    sget v11, Lic/buzzebeeslib/R$idCampaignPost;->etTextPost:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gEtTextPost:Landroid/widget/EditText;

    .line 276
    const-string v8, ""

    .line 277
    .local v8, "profile_source":Ljava/lang/String;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 278
    .local v2, "date":Ljava/util/Date;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getDay()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 279
    .local v9, "strDate":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "https://graph.facebook.com/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lic/buzzebeeslib/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/picture/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 280
    iget-object v11, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "profile_source "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v10, ""

    .line 286
    .local v10, "url":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "api/profile/me/user?token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 287
    new-instance v11, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;

    invoke-direct {v11, p0}, Lic/buzzebeeslib/activity/CampaignPostActivity$GetProfileDataListener;-><init>(Lic/buzzebeeslib/activity/CampaignPostActivity;)V

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 293
    :try_start_b1
    sget v11, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 294
    .local v4, "gTvPageHeader":Landroid/widget/TextView;
    if-eqz v4, :cond_c8

    .line 295
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v12, "fonts/DSNSKW_.TTF"

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 296
    .local v3, "font":Landroid/graphics/Typeface;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c8} :catch_124

    .line 311
    .end local v3    # "font":Landroid/graphics/Typeface;
    .end local v4    # "gTvPageHeader":Landroid/widget/TextView;
    :cond_c8
    :goto_c8
    sget v11, Lic/buzzebeeslib/R$idCampaignPost;->gridSticker:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    .line 312
    .local v5, "gridSticker":Landroid/widget/GridView;
    sget v11, Lic/buzzebeeslib/R$idCampaignPost;->gridStickerSet:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 314
    .local v6, "gridStickerSet":Landroid/widget/GridView;
    new-instance v1, Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-direct {v1, p0, v11, v12}, Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bitmapfun/util/ImageFetcher;)V

    .line 315
    .local v1, "adapterStickerSet":Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;
    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_113

    .line 318
    new-instance v0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lic/buzzebeeslib/bean/StickerSet;

    iget-object v11, v11, Lic/buzzebeeslib/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    iget-object v12, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-direct {v0, p0, v11, v12}, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bitmapfun/util/ImageFetcher;)V

    .line 319
    .local v0, "adapterSticker":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;
    invoke-virtual {v5, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    .end local v0    # "adapterSticker":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;
    :cond_113
    new-instance v11, Lic/buzzebeeslib/activity/CampaignPostActivity$1;

    invoke-direct {v11, p0}, Lic/buzzebeeslib/activity/CampaignPostActivity$1;-><init>(Lic/buzzebeeslib/activity/CampaignPostActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 341
    new-instance v11, Lic/buzzebeeslib/activity/CampaignPostActivity$2;

    invoke-direct {v11, p0, v5}, Lic/buzzebeeslib/activity/CampaignPostActivity$2;-><init>(Lic/buzzebeeslib/activity/CampaignPostActivity;Landroid/widget/GridView;)V

    invoke-virtual {v6, v11}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 349
    return-void

    .line 298
    .end local v1    # "adapterStickerSet":Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;
    .end local v5    # "gridSticker":Landroid/widget/GridView;
    .end local v6    # "gridStickerSet":Landroid/widget/GridView;
    :catch_124
    move-exception v11

    goto :goto_c8
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 254
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 223
    const-string v1, "buzzebees.market"

    const-string v2, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "onSaveInstanceState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 226
    const-string v1, "paramCampaign"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 227
    const-string v1, "gPostData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/util/async/PostData;

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    .line 229
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v1, :cond_52

    .line 230
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_52

    .line 233
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    if-eqz v1, :cond_3b

    .line 234
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    :cond_3b
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v0, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_52
    return-void
.end method

.method private saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW(Ljava/lang/String;)V
    .registers 15
    .param p1, "pStrComment"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 634
    sget-object v0, Lic/buzzebeeslib/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;

    const-string v2, "private void saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW() {"

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 637
    .local v4, "postFileName":Ljava/lang/String;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 642
    .local v7, "params":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/buzz?token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "url":Ljava/lang/String;
    const-string v0, "message"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :try_start_5e
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/Sticker;

    .line 649
    .local v12, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v12, :cond_6f

    .line 650
    const-string v0, "sticker"

    iget-object v2, v12, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6f} :catch_cb

    .line 656
    .end local v12    # "sticker":Lic/buzzebeeslib/bean/Sticker;
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_bc

    .line 657
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_bc

    .line 659
    :try_start_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_photo.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 660
    .local v10, "fullpath":Ljava/lang/String;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 661
    .local v11, "out":Ljava/io/FileOutputStream;
    const-string v0, "source"

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a1} :catch_e5
    .catchall {:try_start_79 .. :try_end_a1} :catchall_11a

    .line 666
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_bc

    .line 667
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 668
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 670
    :cond_b8
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 676
    .end local v10    # "fullpath":Ljava/lang/String;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    :cond_bc
    :goto_bc
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "RequestParams"

    const-string v3, "Market Review"

    const/16 v6, 0x18

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lic/buzzebeeslib/util/PostAsyncUtil;->saveParamsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 680
    return-void

    .line 652
    :catch_cb
    move-exception v9

    .line 653
    .local v9, "ex":Ljava/lang/Exception;
    sget-object v0, Lic/buzzebeeslib/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while get sticker!:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 663
    .end local v9    # "ex":Ljava/lang/Exception;
    :catch_e5
    move-exception v8

    .line 664
    .local v8, "e":Ljava/lang/Exception;
    :try_start_e6
    sget-object v0, Lic/buzzebeeslib/activity/CampaignPostActivity;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(Exception|saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW|1):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fe
    .catchall {:try_start_e6 .. :try_end_fe} :catchall_11a

    .line 666
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_bc

    .line 667
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 668
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 670
    :cond_115
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_bc

    .line 665
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_11a
    move-exception v0

    .line 666
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_136

    .line 667
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_132

    .line 668
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 670
    :cond_132
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 672
    :cond_136
    throw v0
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/CampaignPostActivity$3;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/CampaignPostActivity$3;-><init>(Lic/buzzebeeslib/activity/CampaignPostActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    return-void
.end method


# virtual methods
.method public doAttachImage(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 580
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/CampaignPostActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 581
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/CampaignPostActivity;->openContextMenu(Landroid/view/View;)V

    .line 582
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 576
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->finish()V

    .line 577
    return-void
.end method

.method public doPost(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 585
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gEtTextPost:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, "stringComment":Ljava/lang/String;
    const/4 v0, 0x0

    .line 588
    .local v0, "IsCanPost1":Z
    const/4 v1, 0x0

    .line 589
    .local v1, "IsCanPost2":Z
    const/4 v2, 0x0

    .line 591
    .local v2, "IsCanPost3":Z
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 592
    const/4 v0, 0x1

    .line 596
    :cond_16
    :try_start_16
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/Sticker;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_63

    .line 597
    .local v4, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v4, :cond_21

    .line 598
    const/4 v1, 0x1

    .line 604
    .end local v4    # "sticker":Lic/buzzebeeslib/bean/Sticker;
    :cond_21
    :goto_21
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v7, :cond_2c

    .line 605
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v7, v7, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2c

    .line 606
    const/4 v2, 0x1

    .line 610
    :cond_2c
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 611
    const/4 v0, 0x0

    .line 612
    const/4 v1, 0x0

    .line 613
    const/4 v2, 0x0

    .line 616
    :cond_37
    if-nez v0, :cond_3d

    if-nez v1, :cond_3d

    if-eqz v2, :cond_59

    .line 618
    :cond_3d
    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/CampaignPostActivity;->saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW(Ljava/lang/String;)V

    .line 620
    const-string v7, "content://someURI"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 621
    .local v6, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-direct {v3, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 622
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v7, 0x14000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    const/4 v7, -0x1

    invoke-virtual {p0, v7, v3}, Lic/buzzebeeslib/activity/CampaignPostActivity;->setResult(ILandroid/content/Intent;)V

    .line 625
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->finish()V

    .line 631
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :goto_58
    return-void

    .line 628
    :cond_59
    sget v7, Lic/buzzebeeslib/R$string;->post_must_enter_text:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lic/buzzebeeslib/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V

    goto :goto_58

    .line 600
    :catch_63
    move-exception v7

    goto :goto_21
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 494
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 495
    if-ne p2, v1, :cond_86

    const/16 v0, 0xa

    if-ne p1, v0, :cond_86

    .line 497
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 498
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    .line 499
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 500
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 501
    aget-object v0, v2, v11

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 502
    .local v8, "columnIndex":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 503
    .local v10, "filePath":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 504
    invoke-static {v10}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 505
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_49

    .line 506
    sget v0, Lic/buzzebeeslib/R$string;->post_check_your_picture:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V

    .line 573
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_48
    :goto_48
    return-void

    .line 509
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "columnIndex":I
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "filePath":Ljava/lang/String;
    :cond_49
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_68

    .line 510
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_68

    .line 511
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 512
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 514
    :cond_64
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v3, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 518
    :cond_68
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v7, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 521
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    if-eqz v0, :cond_75

    .line 522
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 524
    :cond_75
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 526
    if-eqz v7, :cond_48

    .line 527
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 528
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_48

    .line 534
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_86
    if-ne p2, v1, :cond_48

    const/16 v0, 0x14

    if-ne p1, v0, :cond_48

    .line 535
    const-string v0, "VAT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "gPostData.gPath="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v4, v4, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 537
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_f2

    .line 538
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_cd

    .line 539
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_cd

    .line 540
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 541
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 543
    :cond_c9
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v3, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 547
    :cond_cd
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v6, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 550
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    if-eqz v0, :cond_da

    .line 551
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 553
    :cond_da
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 554
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 556
    if-eqz v6, :cond_48

    .line 557
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 558
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 560
    :cond_ef
    const/4 v6, 0x0

    .line 562
    goto/16 :goto_48

    .line 563
    :cond_f2
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_48

    .line 564
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_48

    .line 565
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 566
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 568
    :cond_10d
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v3, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto/16 :goto_48
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/16 v4, 0xc

    const/4 v5, 0x0

    .line 397
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput v4, v2, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_c6

    .line 449
    :cond_e
    :goto_e
    const/4 v2, 0x1

    :goto_f
    return v2

    .line 401
    :pswitch_10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 402
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 406
    const-string v2, "Select Picture"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3}, Lic/buzzebeeslib/activity/CampaignPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 407
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput v4, v2, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    goto :goto_e

    .line 411
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_39
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, "i":Landroid/content/Intent;
    const/16 v2, 0x64

    invoke-static {v2}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gFileUri:Landroid/net/Uri;

    .line 415
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gFileUri:Landroid/net/Uri;

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gFileUri:Landroid/net/Uri;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 416
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gFileUri:Landroid/net/Uri;

    iput-object v3, v2, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 417
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    sget-object v3, Lic/buzzebeeslib/activity/CampaignPostActivity;->mediaFile:Ljava/io/File;

    iput-object v3, v2, Lic/buzzebeeslib/util/async/PostData;->gMediaFile:Ljava/io/File;

    .line 418
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    sget-object v3, Lic/buzzebeeslib/activity/CampaignPostActivity;->path:Ljava/lang/String;

    iput-object v3, v2, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    .line 419
    const-string v2, "output"

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 421
    const/16 v2, 0x14

    invoke-virtual {p0, v0, v2}, Lic/buzzebeeslib/activity/CampaignPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 422
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/16 v3, 0xb

    iput v3, v2, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    goto :goto_e

    .line 424
    :cond_7b
    sget v2, Lic/buzzebeeslib/R$string;->post_check_your_memory_card:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/CampaignPostActivity;->showToast(Ljava/lang/String;)V

    .line 425
    const/4 v2, 0x0

    goto :goto_f

    .line 429
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_86
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v2, :cond_af

    .line 430
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a5

    .line 431
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 432
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 434
    :cond_a1
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 436
    :cond_a5
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v2, :cond_af

    .line 437
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v2, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 442
    :cond_af
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    if-eqz v2, :cond_e

    .line 443
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_icon_camera:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 444
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 398
    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_10
        :pswitch_39
        :pswitch_86
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    if-eqz p1, :cond_d3

    .line 101
    const-string v7, "buzzebees.market"

    const-string v8, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_c
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/CampaignPostActivity;->requestWindowFeature(I)Z

    .line 106
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 111
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 112
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "cache_review"

    invoke-direct {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3e800000

    invoke-virtual {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 116
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 117
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gScreenHeight:I

    .line 119
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gScreenWidth:I

    .line 121
    iget v6, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gScreenWidth:I

    .line 122
    .local v6, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gScreenHeight:I

    .line 124
    .local v2, "height":I
    if-le v2, v6, :cond_dc

    .end local v2    # "height":I
    :goto_55
    div-int/lit8 v3, v2, 0x2

    .line 125
    .local v3, "longest":I
    new-instance v7, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 126
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v8, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 127
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 128
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 132
    sget v7, Lic/buzzebeeslib/R$layout;->bz_campaign_post:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/CampaignPostActivity;->setContentView(I)V

    .line 134
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gHandler:Landroid/os/Handler;

    .line 135
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "fonts/DSNSKW_.TTF"

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gFont:Landroid/graphics/Typeface;

    .line 138
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v5, "root":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_a6

    .line 140
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 143
    :cond_a6
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->initialParam()V

    .line 144
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->initialLayout()V

    .line 146
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_c1

    .line 147
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/util/StickerUtil;->loadStickerSet(Landroid/content/Context;)V

    .line 150
    :cond_c1
    if-nez p1, :cond_df

    .line 151
    new-instance v7, Lic/buzzebeeslib/util/async/PostData;

    invoke-direct {v7}, Lic/buzzebeeslib/util/async/PostData;-><init>()V

    iput-object v7, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    .line 156
    :goto_ca
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 158
    return-void

    .line 103
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "longest":I
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "root":Ljava/io/File;
    .end local v6    # "width":I
    :cond_d3
    const-string v7, "buzzebees.market"

    const-string v8, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "width":I
    :cond_dc
    move v2, v6

    .line 124
    goto/16 :goto_55

    .line 153
    .end local v2    # "height":I
    .restart local v3    # "longest":I
    .restart local v5    # "root":Ljava/io/File;
    :cond_df
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignPostActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_ca
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .param p1, "cm"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "cminf"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 381
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 382
    const-string v0, "Post photo"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 383
    const-string v0, "Choose From Gallery"

    invoke-interface {p1, v1, v4, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 384
    const-string v0, "Take Photo"

    invoke-interface {p1, v1, v2, v4, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 386
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    .line 387
    const-string v0, "Delete Photo"

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 393
    :goto_25
    return-void

    .line 388
    :cond_26
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gImgSticker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 389
    const-string v0, "Delete Sticker"

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_25

    .line 391
    :cond_38
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_25
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 199
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 200
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 201
    const-string v0, "buzzebees.market"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 203
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 177
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 178
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 179
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 180
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 181
    const-string v0, "buzzebees.market"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 219
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 172
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 173
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 210
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 213
    const-string v0, "gPostData"

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignPostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 214
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 163
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
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

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method
