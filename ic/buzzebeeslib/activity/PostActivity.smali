.class public Lic/buzzebeeslib/activity/PostActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PostActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_post"

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x2

.field private static final RC_BrowseImage:I = 0x1

.field private static final RC_STICKER:I = 0x4

.field private static final RC_TakePhoto:I = 0x2

.field private static mediaFile:Ljava/io/File;

.field private static path:Ljava/lang/String;


# instance fields
.field private LOGCAT:Ljava/lang/String;

.field private final MENU_BrowseImage:I

.field private final MENU_DeletePhoto:I

.field private final MENU_TakePhoto:I

.field private TAG:Ljava/lang/String;

.field private gActivity:Lic/buzzebeeslib/activity/PostActivity;

.field private gArrayStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field private gBtnCheckIn:Landroid/widget/Button;

.field private gBtnSticker:Landroid/widget/Button;

.field private gBtnWithFriend:Landroid/widget/Button;

.field private gCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private gChkPostToReview:Landroid/widget/CheckBox;

.field private gEtPost:Landroid/widget/EditText;

.field private gFileUri:Landroid/net/Uri;

.field private gGridSticker:Landroid/widget/GridView;

.field private gGridStickerSet:Landroid/widget/GridView;

.field private gHandler:Landroid/os/Handler;

.field private gImgAttachImage:Landroid/widget/ImageView;

.field private gIsExpanded:Z

.field private gIsExpandedStartReview:Z

.field private gIsShowKeyboardIcon:Z

.field private gLayoutCheckIn:Landroid/widget/RelativeLayout;

.field private gLayoutKeyboardIcon:Landroid/widget/LinearLayout;

.field private gLayoutKeyboardIconRoot:Landroid/widget/LinearLayout;

.field private gLayoutPost:Landroid/widget/RelativeLayout;

.field private gLayoutPostToReview:Landroid/widget/RelativeLayout;

.field private gLayoutWithFriends:Landroid/widget/RelativeLayout;

.field private gLoadingFriend:Z

.field private gLocation:Lorg/json/JSONObject;

.field private gPAGE_MODE:I

.field private gPlace:Lic/buzzebeeslib/bean/Place;

.field private gPostData:Lic/buzzebeeslib/util/async/PostData;

.field private gRating:Ljava/lang/String;

.field private gRating_PostToReview:Ljava/lang/String;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gShareCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private gShareSrcHeader:Ljava/lang/String;

.field private gShareSrcLink:Ljava/lang/String;

.field private gShareSrcMessage:Ljava/lang/String;

.field private gShareSrcPicture:Ljava/lang/String;

.field private gSpinnerShare:Landroid/widget/Spinner;

.field private gTvCheckin:Landroid/widget/TextView;

.field private gTvPageHeader:Landroid/widget/TextView;

.field private gTvPostToReview:Landroid/widget/TextView;

.field private gTvShareWithFriend:Landroid/widget/TextView;

.field private imgSharedPreviewPhoto:Landroid/widget/ImageView;

.field private layoutSharedPreview:Landroid/widget/RelativeLayout;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private tvSharedPreviewDetail:Landroid/widget/TextView;

.field private tvSharedPreviewHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 70
    const-string v0, "buzzebees.post"

    iput-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->LOGCAT:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/PostActivity;->gLoadingFriend:Z

    .line 87
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/PostActivity;->gIsShowKeyboardIcon:Z

    .line 89
    iput v1, p0, Lic/buzzebeeslib/activity/PostActivity;->MENU_BrowseImage:I

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lic/buzzebeeslib/activity/PostActivity;->MENU_TakePhoto:I

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lic/buzzebeeslib/activity/PostActivity;->MENU_DeletePhoto:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gArrayStickers:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lic/buzzebeeslib/util/async/PostData;

    invoke-direct {v0}, Lic/buzzebeeslib/util/async/PostData;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    .line 120
    iput-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutKeyboardIconRoot:Landroid/widget/LinearLayout;

    .line 121
    iput-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutKeyboardIcon:Landroid/widget/LinearLayout;

    .line 150
    const-class v0, Lic/buzzebeeslib/activity/PostActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->TAG:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private Cleanup()V
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_20

    .line 537
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    .line 538
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 539
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    :cond_1b
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 547
    :cond_20
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gBtnWithFriend:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutWithFriends:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvShareWithFriend:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/util/async/PostData;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    return-object v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/activity/PostActivity;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gActivity:Lic/buzzebeeslib/activity/PostActivity;

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/PostActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gGridStickerSet:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/PostActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lic/buzzebeeslib/activity/PostActivity;->gArrayStickers:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/PostActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gArrayStickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gGridSticker:Landroid/widget/GridView;

    return-object v0
.end method

.method private static getOutputMediaFile(I)Ljava/io/File;
    .registers 8
    .param p0, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 743
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "BuzzeBees"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 749
    .local v1, "mediaStorageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 750
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 770
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1a
    :goto_1a
    return-object v3

    .line 755
    .restart local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1b
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "timeStamp":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_88

    .line 757
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

    sput-object v4, Lic/buzzebeeslib/activity/PostActivity;->path:Ljava/lang/String;

    .line 758
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

    sput-object v4, Lic/buzzebeeslib/activity/PostActivity;->mediaFile:Ljava/io/File;

    .line 765
    :goto_85
    sget-object v3, Lic/buzzebeeslib/activity/PostActivity;->mediaFile:Ljava/io/File;

    goto :goto_1a

    .line 759
    :cond_88
    const/4 v4, 0x2

    if-ne p0, v4, :cond_1a

    .line 760
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

    sput-object v4, Lic/buzzebeeslib/activity/PostActivity;->mediaFile:Ljava/io/File;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b9} :catch_ba

    goto :goto_85

    .line 767
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :catch_ba
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a
.end method

.method private static getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 731
    invoke-static {p0}, Lic/buzzebeeslib/activity/PostActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 732
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 734
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 736
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private initialDataWithLayout()V
    .registers 6

    .prologue
    const/16 v1, 0x18

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 680
    iget v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPAGE_MODE:I

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget v0, v0, Lic/buzzebeeslib/util/async/PostData;->gPAGE_MODE:I

    if-ne v0, v1, :cond_98

    .line 681
    :cond_f
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvPageHeader:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lic/buzzebeeslib/R$string;->post_header_4:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gSpinnerShare:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutCheckIn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutWithFriends:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvPostToReview:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutPostToReview:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gBtnWithFriend:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gBtnCheckIn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gBtnSticker:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->layoutSharedPreview:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPlace:Lic/buzzebeeslib/bean/Place;

    if-eqz v0, :cond_8b

    .line 695
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvCheckin:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lic/buzzebeeslib/R$string;->post_label_1:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gPlace:Lic/buzzebeeslib/bean/Place;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Place;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    :cond_8b
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_98

    .line 699
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :cond_98
    return-void
.end method

.method private initialLayout()V
    .registers 8

    .prologue
    .line 630
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 631
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 632
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gScreenWidth:I

    .line 636
    :try_start_14
    sget v4, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvPageHeader:Landroid/widget/TextView;

    .line 637
    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvPageHeader:Landroid/widget/TextView;

    if-eqz v4, :cond_31

    .line 638
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/DSNSKW_.TTF"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 639
    .local v1, "font":Landroid/graphics/Typeface;
    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvPageHeader:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_31} :catch_11c

    .line 645
    .end local v1    # "font":Landroid/graphics/Typeface;
    :cond_31
    :goto_31
    sget v4, Lic/buzzebeeslib/R$idPost;->imgAttachImage:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    .line 646
    sget v4, Lic/buzzebeeslib/R$idPost;->layoutKeyboardIcon:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutKeyboardIcon:Landroid/widget/LinearLayout;

    .line 647
    sget v4, Lic/buzzebeeslib/R$idPost;->etTextPost:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    .line 648
    sget v4, Lic/buzzebeeslib/R$idPost;->layoutPost:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutPost:Landroid/widget/RelativeLayout;

    .line 649
    sget v4, Lic/buzzebeeslib/R$idPost;->layoutPostToReview:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutPostToReview:Landroid/widget/RelativeLayout;

    .line 650
    sget v4, Lic/buzzebeeslib/R$idPost;->tvPostToReview:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvPostToReview:Landroid/widget/TextView;

    .line 651
    sget v4, Lic/buzzebeeslib/R$idPost;->layoutWithFriends:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutWithFriends:Landroid/widget/RelativeLayout;

    .line 652
    sget v4, Lic/buzzebeeslib/R$idPost;->LayoutCheckIn:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutCheckIn:Landroid/widget/RelativeLayout;

    .line 653
    sget v4, Lic/buzzebeeslib/R$idPost;->tvCheckIn:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvCheckin:Landroid/widget/TextView;

    .line 654
    sget v4, Lic/buzzebeeslib/R$idPost;->chkPostToReview:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gChkPostToReview:Landroid/widget/CheckBox;

    .line 655
    sget v4, Lic/buzzebeeslib/R$idPost;->btnSticker:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gBtnSticker:Landroid/widget/Button;

    .line 656
    sget v4, Lic/buzzebeeslib/R$idPost;->btnWithFriend:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gBtnWithFriend:Landroid/widget/Button;

    .line 657
    sget v4, Lic/buzzebeeslib/R$idPost;->btnCheckIn:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gBtnCheckIn:Landroid/widget/Button;

    .line 658
    sget v4, Lic/buzzebeeslib/R$idPost;->tvShareWithFriend:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvShareWithFriend:Landroid/widget/TextView;

    .line 659
    sget v4, Lic/buzzebeeslib/R$idPost;->spinnerShare:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gSpinnerShare:Landroid/widget/Spinner;

    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v4, Lic/buzzebeeslib/R$string;->post_to_on_your_own_timeline:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 664
    .local v0, "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 665
    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gSpinnerShare:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 667
    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gSpinnerShare:Landroid/widget/Spinner;

    new-instance v5, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;-><init>(Lic/buzzebeeslib/activity/PostActivity;Lic/buzzebeeslib/activity/PostActivity$CustomOnItemSelectedListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 672
    sget v4, Lic/buzzebeeslib/R$idPost;->layoutSharedPreview:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->layoutSharedPreview:Landroid/widget/RelativeLayout;

    .line 673
    sget v4, Lic/buzzebeeslib/R$idPost;->imgSharedPreviewPhoto:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->imgSharedPreviewPhoto:Landroid/widget/ImageView;

    .line 674
    sget v4, Lic/buzzebeeslib/R$idPost;->tvSharedPreviewHeader:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->tvSharedPreviewHeader:Landroid/widget/TextView;

    .line 675
    sget v4, Lic/buzzebeeslib/R$idPost;->tvSharedPreviewDetail:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->tvSharedPreviewDetail:Landroid/widget/TextView;

    .line 677
    return-void

    .line 641
    .end local v0    # "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_11c
    move-exception v4

    goto/16 :goto_31
.end method

.method private initialParam()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 551
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 553
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "PAGE_MODE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPAGE_MODE:I

    .line 556
    :try_start_e
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "placeNewDetail"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/Place;

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPlace:Lic/buzzebeeslib/bean/Place;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_83

    .line 562
    :goto_1c
    :try_start_1c
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "campaign"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/Campaign;

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gCampaign:Lic/buzzebeeslib/bean/Campaign;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_87

    .line 568
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "postData"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/util/async/PostData;

    .line 569
    .local v2, "postdata":Lic/buzzebeeslib/util/async/PostData;
    if-eqz v2, :cond_3a

    .line 570
    iput-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3a} :catch_b1

    .line 577
    .end local v2    # "postdata":Lic/buzzebeeslib/util/async/PostData;
    :cond_3a
    :goto_3a
    :try_start_3a
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const-string v4, "uid"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lic/buzzebeeslib/util/async/PostData;->gUID:Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_44} :catch_8b

    .line 582
    :goto_44
    :try_start_44
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const-string v4, "name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lic/buzzebeeslib/util/async/PostData;->gName:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4e} :catch_91

    .line 588
    :goto_4e
    :try_start_4e
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const-string v4, "type"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lic/buzzebeeslib/util/async/PostData;->gUserType:Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_58} :catch_97

    .line 594
    :goto_58
    :try_start_58
    const-string v3, "srcLink"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gShareSrcLink:Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_9d

    .line 600
    :goto_60
    :try_start_60
    const-string v3, "srcPicture"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gShareSrcPicture:Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_68} :catch_a1

    .line 606
    :goto_68
    :try_start_68
    const-string v3, "srcHeader"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gShareSrcHeader:Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_70} :catch_a5

    .line 612
    :goto_70
    :try_start_70
    const-string v3, "srcMessage"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gShareSrcMessage:Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_78} :catch_a9

    .line 621
    :goto_78
    :try_start_78
    const-string v3, "share_campaign"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/Campaign;

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gShareCampaign:Lic/buzzebeeslib/bean/Campaign;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_82} :catch_ad

    .line 626
    :goto_82
    return-void

    .line 557
    :catch_83
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    iput-object v5, p0, Lic/buzzebeeslib/activity/PostActivity;->gPlace:Lic/buzzebeeslib/bean/Place;

    goto :goto_1c

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_87
    move-exception v0

    .line 564
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-object v5, p0, Lic/buzzebeeslib/activity/PostActivity;->gCampaign:Lic/buzzebeeslib/bean/Campaign;

    goto :goto_2a

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_8b
    move-exception v0

    .line 579
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v3, Lic/buzzebeeslib/util/async/PostData;->gUID:Ljava/lang/String;

    goto :goto_44

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_91
    move-exception v0

    .line 584
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v3, Lic/buzzebeeslib/util/async/PostData;->gName:Ljava/lang/String;

    goto :goto_4e

    .line 589
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_97
    move-exception v0

    .line 590
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v3, Lic/buzzebeeslib/util/async/PostData;->gUserType:Ljava/lang/String;

    goto :goto_58

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_9d
    move-exception v0

    .line 596
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-object v5, p0, Lic/buzzebeeslib/activity/PostActivity;->gShareSrcLink:Ljava/lang/String;

    goto :goto_60

    .line 601
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a1
    move-exception v0

    .line 602
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-object v5, p0, Lic/buzzebeeslib/activity/PostActivity;->gShareSrcPicture:Ljava/lang/String;

    goto :goto_68

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a5
    move-exception v0

    .line 608
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-object v5, p0, Lic/buzzebeeslib/activity/PostActivity;->gShareSrcHeader:Ljava/lang/String;

    goto :goto_70

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a9
    move-exception v0

    .line 614
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-object v5, p0, Lic/buzzebeeslib/activity/PostActivity;->gShareSrcMessage:Ljava/lang/String;

    goto :goto_78

    .line 622
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_ad
    move-exception v0

    .line 623
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-object v5, p0, Lic/buzzebeeslib/activity/PostActivity;->gShareCampaign:Lic/buzzebeeslib/bean/Campaign;

    goto :goto_82

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b1
    move-exception v3

    goto :goto_3a
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 513
    const-string v0, "gPostData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/util/async/PostData;

    iput-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    .line 514
    return-void
.end method

.method private saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW()V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 881
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->LOGCAT:Ljava/lang/String;

    const-string v2, "private void saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW() {"

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 884
    .local v4, "postFileName":Ljava/lang/String;
    const-string v1, ""

    .line 885
    .local v1, "url":Ljava/lang/String;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 887
    .local v7, "params":Landroid/os/Bundle;
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 889
    .local v5, "stringComment":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16a

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/buzz?token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 893
    const-string v0, "message"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPlace:Lic/buzzebeeslib/bean/Place;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPlace:Lic/buzzebeeslib/bean/Place;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Place;->id:Ljava/lang/String;

    if-eqz v0, :cond_90

    .line 895
    const-string v0, "place"

    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gPlace:Lic/buzzebeeslib/bean/Place;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Place;->id:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v0, "place_name"

    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gPlace:Lic/buzzebeeslib/bean/Place;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Place;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_90
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gRating:Ljava/lang/String;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gRating:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 902
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gRating:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 903
    .local v12, "strRatingArr":[Ljava/lang/String;
    array-length v0, v12

    if-lez v0, :cond_b1

    .line 904
    const/4 v0, 0x0

    aget-object v11, v12, v0

    .line 905
    .local v11, "strRating":Ljava/lang/String;
    const-string v0, "rating"

    invoke-virtual {v7, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .end local v11    # "strRating":Ljava/lang/String;
    .end local v12    # "strRatingArr":[Ljava/lang/String;
    :cond_b1
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_fa

    .line 911
    :try_start_b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_photo.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 912
    .local v9, "fullpath":Ljava/lang/String;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 913
    .local v10, "out":Ljava/io/FileOutputStream;
    const-string v0, "source"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_df} :catch_118
    .catchall {:try_start_b7 .. :try_end_df} :catchall_14d

    .line 918
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_fa

    .line 919
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 920
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 922
    :cond_f6
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v6, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 930
    .end local v9    # "fullpath":Ljava/lang/String;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    :cond_fa
    :goto_fa
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_117

    .line 931
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "RequestParams"

    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gTvPageHeader:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    invoke-static/range {v0 .. v7}, Lic/buzzebeeslib/util/PostAsyncUtil;->saveParamsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 933
    :cond_117
    return-void

    .line 915
    :catch_118
    move-exception v8

    .line 916
    .local v8, "e":Ljava/lang/Exception;
    :try_start_119
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->LOGCAT:Ljava/lang/String;

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
    :try_end_131
    .catchall {:try_start_119 .. :try_end_131} :catchall_14d

    .line 918
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_fa

    .line 919
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 920
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 922
    :cond_148
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v6, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_fa

    .line 917
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_14d
    move-exception v0

    .line 918
    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_169

    .line 919
    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_165

    .line 920
    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 922
    :cond_165
    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v6, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 924
    :cond_169
    throw v0

    .line 927
    :cond_16a
    const-string v0, "Invalid post data."

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/PostActivity;->showToast(Ljava/lang/String;)V

    goto :goto_fa
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 936
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/PostActivity$4;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/PostActivity$4;-><init>(Lic/buzzebeeslib/activity/PostActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 943
    return-void
.end method


# virtual methods
.method public doAttachImage(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 843
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gUserType:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gUserType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 844
    const-string v0, "You can not post photo on fan page."

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/PostActivity;->showToast(Ljava/lang/String;)V

    .line 849
    :goto_1b
    return-void

    .line 846
    :cond_1c
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/PostActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 847
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/PostActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_1b
.end method

.method public doKeyboardIcon(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 779
    iget-boolean v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gIsShowKeyboardIcon:Z

    if-eqz v3, :cond_8d

    move v3, v4

    :goto_9
    iput-boolean v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gIsShowKeyboardIcon:Z

    .line 781
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutKeyboardIconRoot:Landroid/widget/LinearLayout;

    if-nez v3, :cond_5d

    .line 782
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 783
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lic/buzzebeeslib/R$layout;->bz_keyboard_icon:I

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 784
    .local v2, "viewKeyboardIcon":Landroid/view/View;
    sget v3, Lic/buzzebeeslib/R$idKeyboardIcon;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutKeyboardIconRoot:Landroid/widget/LinearLayout;

    .line 785
    sget v3, Lic/buzzebeeslib/R$idKeyboardIcon;->gridSticker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gGridSticker:Landroid/widget/GridView;

    .line 786
    sget v3, Lic/buzzebeeslib/R$idKeyboardIcon;->gridStickerSet:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gGridStickerSet:Landroid/widget/GridView;

    .line 787
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutKeyboardIcon:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 789
    new-instance v3, Lic/buzzebeeslib/activity/PostActivity$1;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/PostActivity$1;-><init>(Lic/buzzebeeslib/activity/PostActivity;)V

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/PostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 802
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gGridSticker:Landroid/widget/GridView;

    new-instance v6, Lic/buzzebeeslib/activity/PostActivity$2;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/PostActivity$2;-><init>(Lic/buzzebeeslib/activity/PostActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 811
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gGridStickerSet:Landroid/widget/GridView;

    new-instance v6, Lic/buzzebeeslib/activity/PostActivity$3;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/PostActivity$3;-><init>(Lic/buzzebeeslib/activity/PostActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 820
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "viewKeyboardIcon":Landroid/view/View;
    :cond_5d
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutKeyboardIconRoot:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7b

    .line 821
    iget-boolean v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gIsShowKeyboardIcon:Z

    if-eqz v3, :cond_90

    .line 822
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutKeyboardIconRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 823
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutWithFriends:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 826
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 838
    :cond_7b
    :goto_7b
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 839
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 840
    return-void

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_8d
    move v3, v5

    .line 779
    goto/16 :goto_9

    .line 829
    :cond_90
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutKeyboardIconRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 830
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutWithFriends:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 832
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    sget v6, Lic/buzzebeeslib/R$string;->post_hint_textbox_post:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_7b
.end method

.method public doPost(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x18

    .line 852
    iget v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gPAGE_MODE:I

    if-eq v4, v6, :cond_c

    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget v4, v4, Lic/buzzebeeslib/util/async/PostData;->gPAGE_MODE:I

    if-ne v4, v6, :cond_2f

    .line 853
    :cond_c
    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-nez v4, :cond_11

    .line 878
    :cond_10
    :goto_10
    return-void

    .line 857
    :cond_11
    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, "stringPost":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2f

    .line 859
    const-string v4, "Please enter a message."

    invoke-direct {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->showToast(Ljava/lang/String;)V

    goto :goto_10

    .line 864
    .end local v2    # "stringPost":Ljava/lang/String;
    :cond_2f
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 865
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 867
    iget v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gPAGE_MODE:I

    if-eq v4, v6, :cond_4b

    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget v4, v4, Lic/buzzebeeslib/util/async/PostData;->gPAGE_MODE:I

    if-ne v4, v6, :cond_10

    .line 868
    :cond_4b
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PostActivity;->saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW()V

    .line 870
    const-string v4, "content://someURI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 871
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 872
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 873
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lic/buzzebeeslib/activity/PostActivity;->setResult(ILandroid/content/Intent;)V

    .line 874
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->finish()V

    .line 876
    sget v4, Lic/buzzebeeslib/R$string;->review_thanks_approve:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lic/buzzebeeslib/activity/PostActivity;->showToast(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public doPostToReview(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 774
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 775
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity;->gEtPost:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 776
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 380
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 381
    const/4 v0, -0x1

    if-ne p2, v0, :cond_84

    const/4 v0, 0x1

    if-ne p1, v0, :cond_84

    .line 383
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 384
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 385
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 386
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 387
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 388
    .local v8, "columnIndex":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 389
    .local v10, "filePath":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 390
    invoke-static {v10}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 391
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_45

    .line 392
    const-string v0, "You can not post this picture, try to select another picture."

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/PostActivity;->showToast(Ljava/lang/String;)V

    .line 502
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_44
    :goto_44
    return-void

    .line 395
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "columnIndex":I
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "filePath":Ljava/lang/String;
    :cond_45
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_65

    .line 396
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_65

    .line 397
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 398
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 400
    :cond_60
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 404
    :cond_65
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v7, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 406
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_73

    .line 407
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    :cond_73
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 414
    if-eqz v7, :cond_44

    .line 415
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 416
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_44

    .line 422
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_84
    const/4 v0, -0x1

    if-ne p2, v0, :cond_f7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f7

    .line 423
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 424
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_d5

    .line 425
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_b4

    .line 426
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b4

    .line 427
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 428
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 430
    :cond_af
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 434
    :cond_b4
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v6, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 436
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_c2

    .line 437
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 439
    :cond_c2
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 441
    if-eqz v6, :cond_44

    .line 442
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 443
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_d2
    const/4 v6, 0x0

    .line 447
    goto/16 :goto_44

    .line 448
    :cond_d5
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_44

    .line 449
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_44

    .line 450
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 451
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 453
    :cond_f0
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto/16 :goto_44

    .line 460
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_f7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_44

    const/4 v0, 0x4

    if-ne p1, v0, :cond_44

    .line 461
    const-string v0, "path_sticker"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 462
    .local v11, "path_sticker":Ljava/lang/String;
    if-eqz v11, :cond_44

    .line 463
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v11, v0, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 465
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_150

    .line 467
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12f

    .line 468
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 469
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 471
    :cond_12a
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 474
    :cond_12f
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v6, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 476
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_13d

    .line 477
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    :cond_13d
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    if-eqz v6, :cond_44

    .line 483
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 484
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 486
    :cond_14d
    const/4 v6, 0x0

    .line 489
    goto/16 :goto_44

    .line 491
    :cond_150
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_44

    .line 492
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_167

    .line 493
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 495
    :cond_167
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto/16 :goto_44
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 322
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput v4, v3, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_bc

    .line 375
    :cond_f
    :goto_f
    return v2

    .line 327
    :pswitch_10
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    const-string v3, "Select Picture"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lic/buzzebeeslib/activity/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 333
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput v4, v3, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    goto :goto_f

    .line 338
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_37
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PostActivity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gFileUri:Landroid/net/Uri;

    .line 342
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gFileUri:Landroid/net/Uri;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gFileUri:Landroid/net/Uri;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 343
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gFileUri:Landroid/net/Uri;

    iput-object v4, v3, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 344
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    sget-object v4, Lic/buzzebeeslib/activity/PostActivity;->mediaFile:Ljava/io/File;

    iput-object v4, v3, Lic/buzzebeeslib/util/async/PostData;->gMediaFile:Ljava/io/File;

    .line 345
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    sget-object v4, Lic/buzzebeeslib/activity/PostActivity;->path:Ljava/lang/String;

    iput-object v4, v3, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    .line 346
    const-string v3, "output"

    iget-object v4, p0, Lic/buzzebeeslib/activity/PostActivity;->gFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lic/buzzebeeslib/activity/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 349
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/16 v4, 0xb

    iput v4, v3, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    goto :goto_f

    .line 351
    :cond_76
    const-string v2, "Please check your memory card."

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/PostActivity;->showToast(Ljava/lang/String;)V

    .line 352
    const/4 v2, 0x0

    goto :goto_f

    .line 356
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_7d
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v3, :cond_a6

    .line 357
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v3, v3, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9c

    .line 358
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v3, v3, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 359
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v3, v3, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    :cond_98
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v6, v3, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 363
    :cond_9c
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v3, v3, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v3, :cond_a6

    .line 364
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v6, v3, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 368
    :cond_a6
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_f

    .line 369
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_icon_camera:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 370
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 323
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_10
        :pswitch_37
        :pswitch_7d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 154
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->TAG:Ljava/lang/String;

    const-string v9, "public void onCreate() {"

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/PostActivity;->requestWindowFeature(I)Z

    .line 157
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 158
    sget v8, Lic/buzzebeeslib/R$layout;->bz_post:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/PostActivity;->setContentView(I)V

    .line 161
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 162
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 164
    new-instance v1, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "cache_post"

    invoke-direct {v1, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    .local v1, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3e800000

    invoke-virtual {v1, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 166
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 167
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gScreenHeight:I

    .line 169
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gScreenWidth:I

    .line 171
    iget v7, p0, Lic/buzzebeeslib/activity/PostActivity;->gScreenWidth:I

    .line 172
    .local v7, "width":I
    iget v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gScreenHeight:I

    .line 174
    .local v3, "height":I
    if-le v3, v7, :cond_119

    .end local v3    # "height":I
    :goto_59
    div-int/lit8 v4, v3, 0x2

    .line 175
    .local v4, "longest":I
    new-instance v8, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 176
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v9, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 177
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 178
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 181
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gHandler:Landroid/os/Handler;

    .line 182
    iput-object p0, p0, Lic/buzzebeeslib/activity/PostActivity;->gActivity:Lic/buzzebeeslib/activity/PostActivity;

    .line 183
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iput-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gLocation:Lorg/json/JSONObject;

    .line 186
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v6, "root":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a2

    .line 188
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 198
    :cond_a2
    if-eqz p1, :cond_a7

    .line 199
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/PostActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 202
    :cond_a7
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PostActivity;->initialParam()V

    .line 203
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PostActivity;->initialLayout()V

    .line 204
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PostActivity;->initialDataWithLayout()V

    .line 206
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_c5

    .line 207
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lic/buzzebeeslib/util/StickerUtil;->loadStickerSet(Landroid/content/Context;)V

    .line 210
    :cond_c5
    if-eqz p1, :cond_118

    .line 213
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v8, :cond_118

    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    if-eqz v8, :cond_118

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v8, v8, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_11c

    .line 217
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v8, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 222
    :cond_da
    :goto_da
    if-eqz v0, :cond_118

    .line 223
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v8, :cond_fb

    .line 224
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v8, v8, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_fb

    .line 225
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v8, v8, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_f7

    .line 226
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v8, v8, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    :cond_f7
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v10, v8, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 232
    :cond_fb
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v0, v8, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 234
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    if-eqz v8, :cond_108

    .line 235
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    :cond_108
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    if-eqz v0, :cond_118

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_118

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_118
    return-void

    .end local v4    # "longest":I
    .end local v6    # "root":Ljava/io/File;
    .restart local v3    # "height":I
    :cond_119
    move v3, v7

    .line 174
    goto/16 :goto_59

    .line 218
    .end local v3    # "height":I
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "longest":I
    .restart local v6    # "root":Ljava/io/File;
    :cond_11c
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v8, v8, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    if-eqz v8, :cond_da

    .line 219
    iget-object v8, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v8, v8, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-static {v8}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_da
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .param p1, "cm"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "cminf"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 305
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 306
    const-string v0, "Post photo"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 308
    const-string v0, "Choose From Gallery"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 309
    const-string v0, "Take Photo"

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 311
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 312
    const-string v0, "Delete Photo"

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 318
    :goto_24
    return-void

    .line 313
    :cond_25
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 314
    const-string v0, "Delete Sticker"

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_24

    .line 316
    :cond_37
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_24
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 524
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 526
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 527
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 528
    invoke-direct {p0}, Lic/buzzebeeslib/activity/PostActivity;->Cleanup()V

    .line 530
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 531
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 264
    const/4 v0, 0x4

    if-ne p1, v0, :cond_40

    .line 265
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gIsExpanded:Z

    if-eqz v0, :cond_3b

    .line 266
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/PostActivity;->gIsExpanded:Z

    .line 267
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gLayoutPost:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gIsExpanded:Z

    if-eqz v0, :cond_33

    move v0, v1

    :goto_12
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 268
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gIsExpanded:Z

    if-eqz v0, :cond_35

    move v0, v1

    :goto_1c
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 269
    iget-object v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gBtnSticker:Landroid/widget/Button;

    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gIsExpanded:Z

    if-eqz v0, :cond_37

    move v0, v1

    :goto_26
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->gBtnCheckIn:Landroid/widget/Button;

    iget-boolean v3, p0, Lic/buzzebeeslib/activity/PostActivity;->gIsExpanded:Z

    if-eqz v3, :cond_39

    :goto_2f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    :goto_32
    return v2

    :cond_33
    move v0, v2

    .line 267
    goto :goto_12

    :cond_35
    move v0, v2

    .line 268
    goto :goto_1c

    :cond_37
    move v0, v2

    .line 269
    goto :goto_26

    :cond_39
    move v1, v2

    .line 270
    goto :goto_2f

    .line 274
    :cond_3b
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_32

    .line 277
    :cond_40
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_32
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 296
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 297
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 300
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 301
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 285
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 287
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 288
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->loadStickerSet(Landroid/content/Context;)V

    .line 291
    :cond_1e
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v1}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 292
    return-void
.end method

.method protected onResumeFragments()V
    .registers 1

    .prologue
    .line 518
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 519
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 509
    const-string v0, "gPostData"

    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 510
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 254
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 258
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 260
    return-void
.end method
