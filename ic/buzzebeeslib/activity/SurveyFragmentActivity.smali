.class public Lic/buzzebeeslib/activity/SurveyFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;,
        Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;,
        Lic/buzzebeeslib/activity/SurveyFragmentActivity$QTPagerAdapter;,
        Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_market"

.field private static final LOGCAT:Ljava/lang/String; = "campaign.adbuzz"

.field private static final MEDIA_TYPE_IMAGE:I = 0x64

.field private static final MEDIA_TYPE_VIDEO:I = 0xc8

.field private static final RC_BrowseImage:I = 0xb

.field private static final RC_TakePhoto:I = 0x15

.field private static mediaFile:Ljava/io/File;

.field private static path:Ljava/lang/String;


# instance fields
.field private RC_BARCODE_SCANNER:I

.field private TAG:Ljava/lang/String;

.field private allPage:I

.field arrImg:[Ljava/lang/String;

.field private cd:Lic/buzzebeeslib/util/ConnectionDetector;

.field private chkSubmit:Z

.field contentCount:I

.field private controller:Lic/buzzebeeslib/control/VideoControllerView;

.field currentView:I

.field private gCountDownTimer:Landroid/os/CountDownTimer;

.field private gCurrentStickerSet:I

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFileUri:Landroid/net/Uri;

.field private gFontDefault:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gImageHeight:I

.field private gImageWidth:I

.field private gPostData:Lic/buzzebeeslib/util/async/PostData;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field gVideoLayout:Landroid/view/View;

.field private gView_pager:Lic/buzzebeeslib/control/CustomPager;

.field private gps:Lic/buzzebeeslib/util/GPSTracker;

.field private imgBack:Landroid/widget/ImageView;

.field private imgImageCancel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private imgImageUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private imgNext:Landroid/widget/ImageView;

.field private incorrectTime:I

.field private isOnComplete:Z

.field isVideo:Z

.field private lastPage:I

.field lat:D

.field lng:D

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private nextPosition:I

.field private paramCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private paramCampaignID:I

.field params:Landroid/widget/LinearLayout$LayoutParams;

.field pbSurvey:Landroid/widget/ProgressBar;

.field private player:Landroid/media/MediaPlayer;

.field scvSurvey:Landroid/widget/ScrollView;

.field stackCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field strNextPage:Ljava/lang/String;

.field totalSize:J

.field private tvImageUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private tvPage:Landroid/widget/TextView;

.field private tvScanCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private videoSurface:Landroid/view/SurfaceView;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 165
    iput v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->nextPosition:I

    .line 166
    iput v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->incorrectTime:I

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->chkSubmit:Z

    .line 168
    const-class v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    .line 169
    iput v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->allPage:I

    .line 171
    iput v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lastPage:I

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    .line 190
    iput v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->contentCount:I

    .line 191
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->isVideo:Z

    .line 192
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->isOnComplete:Z

    .line 201
    iput v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gCurrentStickerSet:I

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvImageUrl:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;

    .line 208
    iput v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    .line 211
    const/16 v0, 0x7b

    iput v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER:I

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;

    .line 2816
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->totalSize:J

    .line 136
    return-void
.end method

.method private AlertCameraDialog()V
    .registers 5

    .prologue
    .line 2998
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2999
    .local v1, "builderSingle":Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090012

    invoke-direct {v0, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 3000
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const-string v2, "Take Photo"

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3001
    const-string v2, "Choose From Gallery"

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3002
    const-string v2, "Cancel"

    new-instance v3, Lic/buzzebeeslib/activity/SurveyFragmentActivity$14;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$14;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3010
    new-instance v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity$15;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$15;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3022
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3023
    return-void
.end method

.method private EnableGPSIfPossible()Z
    .registers 3

    .prologue
    .line 3050
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 3051
    .local v0, "manager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3052
    invoke-direct {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->turnGPSOn()V

    .line 3053
    const/4 v1, 0x1

    .line 3055
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2344
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V
    .registers 2

    .prologue
    .line 165
    iput p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->nextPosition:I

    return-void
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->allPage:I

    return v0
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .prologue
    .line 3025
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getZxingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER:I

    return v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvImageUrl:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/GPSTracker;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gps:Lic/buzzebeeslib/util/GPSTracker;

    return-object v0
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Z
    .registers 2

    .prologue
    .line 3049
    invoke-direct {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->EnableGPSIfPossible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V
    .registers 2

    .prologue
    .line 166
    iput p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->incorrectTime:I

    return-void
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->nextPosition:I

    return v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Z)V
    .registers 2

    .prologue
    .line 167
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->chkSubmit:Z

    return-void
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->incorrectTime:I

    return v0
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/view/SurfaceView;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenHeight:I

    return v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/view/SurfaceView;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/media/MediaPlayer;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$29(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Lic/buzzebeeslib/control/VideoControllerView;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    return-object v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/VideoControllerView;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    return-object v0
.end method

.method static synthetic access$31(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$32(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$34(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$35(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/async/PostData;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    return-object v0
.end method

.method static synthetic access$36(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V
    .registers 1

    .prologue
    .line 304
    invoke-direct {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->initialParam()V

    return-void
.end method

.method static synthetic access$37(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V
    .registers 1

    .prologue
    .line 317
    invoke-direct {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->initialLayout()V

    return-void
.end method

.method static synthetic access$38(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lastPage:I

    return v0
.end method

.method static synthetic access$39(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->chkSubmit:Z

    return v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I

    return v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V
    .registers 2

    .prologue
    .line 171
    iput p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->lastPage:I

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvPage:Landroid/widget/TextView;

    return-object v0
.end method

.method private getOutputMediaFile(I)Ljava/io/File;
    .registers 9
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 2690
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {p0}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2691
    .local v1, "mediaStorageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 2692
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 2712
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1c
    :goto_1c
    return-object v3

    .line 2697
    .restart local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1d
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2698
    .local v2, "timeStamp":Ljava/lang/String;
    const/16 v4, 0x64

    if-ne p1, v4, :cond_8b

    .line 2699
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

    sput-object v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->path:Ljava/lang/String;

    .line 2700
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

    sput-object v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mediaFile:Ljava/io/File;

    .line 2707
    :goto_88
    sget-object v3, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mediaFile:Ljava/io/File;

    goto :goto_1c

    .line 2701
    :cond_8b
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_1c

    .line 2702
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

    sput-object v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mediaFile:Ljava/io/File;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bd} :catch_be

    goto :goto_88

    .line 2709
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :catch_be
    move-exception v0

    .line 2710
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c
.end method

.method private getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 2680
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 2681
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 2682
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 2684
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getZxingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3026
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.zxing.client.android.SCAN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3027
    .local v4, "zxingIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3028
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3029
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_18

    .line 3039
    :goto_17
    return-object v4

    .line 3030
    :cond_18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3031
    .local v1, "app":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "zxing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 3032
    const-string v5, "OAT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "1:= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", 2:= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 3034
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_17

    .line 3029
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method private initialLayout()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 318
    sget v6, Lic/buzzebeeslib/R$id;->vp_survey_list:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/control/CustomPager;

    iput-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    .line 319
    sget v6, Lic/buzzebeeslib/R$id;->imgBack:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;

    .line 320
    sget v6, Lic/buzzebeeslib/R$id;->imgNext:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;

    .line 321
    sget v6, Lic/buzzebeeslib/R$id;->imgRestart:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 322
    .local v4, "imgRestart":Landroid/widget/ImageView;
    sget v6, Lic/buzzebeeslib/R$id;->imgExit:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 323
    .local v3, "imgExit":Landroid/widget/ImageView;
    sget v6, Lic/buzzebeeslib/R$id;->tvPage:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvPage:Landroid/widget/TextView;

    .line 325
    new-instance v6, Lic/buzzebeeslib/activity/SurveyFragmentActivity$4;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$4;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    new-instance v6, Lic/buzzebeeslib/activity/SurveyFragmentActivity$5;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$5;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    const/4 v5, 0x0

    .line 344
    .local v5, "intLast":I
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v6, :cond_72

    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_72

    .line 345
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 348
    :cond_72
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    invoke-virtual {v6, v8}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    .line 349
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    new-instance v7, Lic/buzzebeeslib/activity/SurveyFragmentActivity$6;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$6;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/control/CustomPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "adBuzzItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/AdBuzzItem;>;"
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 371
    new-instance v7, Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    invoke-direct {v7, v6}, Lic/buzzebeeslib/bean/AdBuzzItem;-><init>(Lic/buzzebeeslib/bean/CampaignExtraAdItem;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iput v9, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->contentCount:I

    .line 373
    iput-boolean v9, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->isVideo:Z

    .line 381
    :goto_b0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b1
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraSurvey:Lic/buzzebeeslib/bean/CampaignExtraSurvey;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_156

    .line 385
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_ef

    .line 386
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/AdBuzzItem;

    iput-boolean v9, v6, Lic/buzzebeeslib/bean/AdBuzzItem;->IsLastItem:Z

    .line 387
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->allPage:I

    .line 388
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvPage:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Page\n 1/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->allPage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_ef
    new-instance v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-direct {v1, p0, p0, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 391
    .local v1, "adapter":Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    invoke-virtual {v6, v1}, Lic/buzzebeeslib/control/CustomPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 392
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lic/buzzebeeslib/control/CustomPager;->setOffscreenPageLimit(I)V

    .line 394
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;

    new-instance v7, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;

    invoke-direct {v7, p0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$7;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;

    new-instance v7, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;

    invoke-direct {v7, p0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$8;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->pbSurvey:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 450
    return-void

    .line 376
    .end local v1    # "adapter":Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;
    .end local v2    # "i":I
    :cond_11e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_11f
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_13d

    .line 379
    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->contentCount:I

    goto/16 :goto_b0

    .line 377
    :cond_13d
    new-instance v7, Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    invoke-direct {v7, v6}, Lic/buzzebeeslib/bean/AdBuzzItem;-><init>(Lic/buzzebeeslib/bean/CampaignExtraAdItem;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_11f

    .line 382
    :cond_156
    new-instance v7, Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraSurvey:Lic/buzzebeeslib/bean/CampaignExtraSurvey;

    iget-object v6, v6, Lic/buzzebeeslib/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    invoke-direct {v7, v6}, Lic/buzzebeeslib/bean/AdBuzzItem;-><init>(Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b1
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 305
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 307
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    iput-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 308
    new-instance v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity$3;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$3;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 315
    :cond_1e
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 469
    const-string v0, "campaign.adbuzz"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 471
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 472
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->pbSurvey:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 474
    :cond_20
    return-void
.end method

.method private showDialogAlertOut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2555
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2556
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2557
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    new-instance v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity$12;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$12;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2561
    const-string v3, "Yes"

    new-instance v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity$13;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$13;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2567
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2568
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2569
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2345
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity$10;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$10;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2352
    return-void
.end method

.method private turnGPSOff()V
    .registers 5

    .prologue
    .line 3079
    :try_start_0
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3080
    .local v1, "provider":Ljava/lang/String;
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3081
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3082
    .local v0, "poke":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3083
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3084
    const-string v2, "3"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3085
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    .line 3091
    .end local v0    # "poke":Landroid/content/Intent;
    .end local v1    # "provider":Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-void

    .line 3088
    :catch_30
    move-exception v2

    goto :goto_2f
.end method

.method private turnGPSOn()V
    .registers 7

    .prologue
    .line 3060
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3061
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "enabled"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3062
    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3064
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_providers_allowed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3065
    .local v3, "provider":Ljava/lang/String;
    const-string v4, "gps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 3066
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3067
    .local v2, "poke":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3068
    const-string v4, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3069
    const-string v4, "3"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3070
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 3075
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "poke":Landroid/content/Intent;
    .end local v3    # "provider":Ljava/lang/String;
    :cond_3f
    :goto_3f
    return-void

    .line 3072
    :catch_40
    move-exception v0

    .line 3073
    .local v0, "c":Ljava/lang/Exception;
    const-string v4, "This device is not support"

    invoke-direct {p0, v4}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    goto :goto_3f
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 3044
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3046
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public canPause()Z
    .registers 2

    .prologue
    .line 2418
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    .prologue
    .line 2423
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    .prologue
    .line 2428
    const/4 v0, 0x0

    return v0
.end method

.method public deleteMedia(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2657
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_2c

    .line 2658
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    .line 2659
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2660
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2662
    :cond_1e
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v2, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 2664
    :cond_22
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2c

    .line 2665
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v2, v0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 2668
    :cond_2c
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 2669
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2670
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2671
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2672
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2673
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2677
    :cond_7c
    return-void
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 2413
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 2388
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 2389
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 2391
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 2379
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 2380
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 2382
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 2433
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 2404
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 2405
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 2407
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 2717
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2719
    const/4 v0, -0x1

    if-ne p2, v0, :cond_d6

    const/16 v0, 0xb

    if-ne p1, v0, :cond_d6

    .line 2721
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 2722
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 2723
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2724
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2725
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2726
    .local v8, "columnIndex":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2727
    .local v10, "filePath":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2729
    invoke-static {v10}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2730
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_4a

    .line 2731
    sget v0, Lic/buzzebeeslib/R$string;->post_check_your_picture:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    .line 2814
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 2734
    .restart local v2    # "filePathColumn":[Ljava/lang/String;
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "columnIndex":I
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "filePath":Ljava/lang/String;
    :cond_4a
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_6a

    .line 2735
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6a

    .line 2736
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2737
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2739
    :cond_65
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 2743
    :cond_6a
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v7, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 2744
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 2745
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2747
    :cond_86
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2748
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2749
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2750
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2752
    if-eqz v7, :cond_c9

    .line 2753
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 2754
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2756
    :cond_c8
    const/4 v7, 0x0

    .line 2758
    :cond_c9
    new-instance v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    invoke-direct {v0, p0, v10}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_49

    .line 2760
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "columnIndex":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "filePath":Ljava/lang/String;
    :cond_d6
    const/4 v0, -0x1

    if-ne p2, v0, :cond_199

    const/16 v0, 0x15

    if-ne p1, v0, :cond_199

    .line 2763
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2764
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_177

    .line 2766
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_107

    .line 2767
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_107

    .line 2768
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 2769
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2771
    :cond_102
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 2775
    :cond_107
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v6, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 2776
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_123

    .line 2777
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2779
    :cond_123
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2780
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2781
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2782
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2784
    if-eqz v6, :cond_166

    .line 2785
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 2786
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2788
    :cond_165
    const/4 v6, 0x0

    .line 2791
    :cond_166
    new-instance v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_49

    .line 2794
    :cond_177
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_49

    .line 2795
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_49

    .line 2796
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 2797
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2799
    :cond_192
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v1, 0x0

    iput-object v1, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto/16 :goto_49

    .line 2803
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_199
    iget v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER:I

    if-ne p1, v0, :cond_49

    .line 2804
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c9

    .line 2805
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2806
    .local v11, "result":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "result : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;

    iget v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_49

    .line 2809
    .end local v11    # "result":Ljava/lang/String;
    :cond_1c9
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    const-string v1, "#5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 2551
    sget v0, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$string;->survey_confirm_exit:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showDialogAlertOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x1

    .line 2455
    iget-boolean v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->isOnComplete:Z

    if-nez v3, :cond_30

    .line 2456
    iput-boolean v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->isOnComplete:Z

    .line 2457
    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v3, v3, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    if-eqz v3, :cond_31

    .line 2458
    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2459
    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    invoke-virtual {v4}, Lic/buzzebeeslib/control/CustomPager;->getCurrentItem()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2460
    iget v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->nextPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->nextPosition:I

    .line 2461
    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    iget v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->nextPosition:I

    invoke-virtual {v3, v4, v5}, Lic/buzzebeeslib/control/CustomPager;->setCurrentItem(IZ)V

    .line 2482
    :cond_30
    :goto_30
    return-void

    .line 2464
    :cond_31
    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2465
    const-string v2, ""

    .line 2466
    .local v2, "txtAlert":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 2467
    sget v3, Lic/buzzebeeslib/R$string;->no_network_connection_toast:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2471
    :goto_4a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2472
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$11;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$11;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2478
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2479
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_30

    .line 2469
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_6a
    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v3, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    goto :goto_4a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 216
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 217
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "campaign"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    if-eqz v7, :cond_20

    .line 218
    const-string v7, "campaign"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lic/buzzebeeslib/bean/Campaign;

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 219
    new-instance v7, Lic/buzzebeeslib/activity/SurveyFragmentActivity$1;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$1;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 231
    :cond_20
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->requestWindowFeature(I)Z

    .line 235
    sget v7, Lic/buzzebeeslib/R$layout;->bz_survey_v2_list:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->setContentView(I)V

    .line 236
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "isReset"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 237
    const v7, 0x10a0002

    const v8, 0x10a0003

    invoke-virtual {p0, v7, v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->overridePendingTransition(II)V

    .line 240
    :cond_40
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 242
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "fonts/kit55p.ttf"

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;

    .line 244
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;

    .line 245
    new-instance v7, Lic/buzzebeeslib/util/async/PostData;

    invoke-direct {v7}, Lic/buzzebeeslib/util/async/PostData;-><init>()V

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    .line 246
    new-instance v7, Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lic/buzzebeeslib/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    .line 247
    new-instance v7, Lic/buzzebeeslib/util/GPSTracker;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/util/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gps:Lic/buzzebeeslib/util/GPSTracker;

    .line 250
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v7

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 253
    iget-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v8, "UA-42649771-1"

    invoke-virtual {v7, v8}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v7

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 255
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 256
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 258
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I

    .line 259
    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenHeight:I

    .line 260
    iget v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I

    iput v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gImageWidth:I

    .line 261
    iget v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gImageWidth:I

    mul-int/lit16 v7, v7, 0xc8

    div-int/lit16 v7, v7, 0x12c

    iput v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gImageHeight:I

    .line 264
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3e800000

    invoke-virtual {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 266
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 267
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 268
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenHeight:I

    .line 269
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I

    .line 271
    iget v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I

    .line 272
    .local v6, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenHeight:I

    .line 274
    .local v2, "height":I
    if-le v2, v6, :cond_148

    .end local v2    # "height":I
    :goto_e1
    div-int/lit8 v4, v2, 0x2

    .line 275
    .local v4, "longest":I
    new-instance v7, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 276
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x4

    if-ne v7, v8, :cond_14a

    .line 277
    iget-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v8, Lic/buzzebeeslib/R$drawable;->bz_empty_photo:I

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 286
    :cond_104
    :goto_104
    iget-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 287
    iget-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v7, v10}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 289
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gScreenWidth:I

    const/high16 v9, 0x43100000

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v9

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x3

    invoke-direct {v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 290
    iget-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->params:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 292
    sget v7, Lic/buzzebeeslib/R$id;->pbSurvey:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->pbSurvey:Landroid/widget/ProgressBar;

    .line 293
    iget-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->pbSurvey:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iget-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;

    new-instance v8, Lic/buzzebeeslib/activity/SurveyFragmentActivity$2;

    invoke-direct {v8, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$2;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    .line 300
    const-wide/16 v9, 0x320

    .line 294
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void

    .end local v4    # "longest":I
    .restart local v2    # "height":I
    :cond_148
    move v2, v6

    .line 274
    goto :goto_e1

    .line 278
    .end local v2    # "height":I
    .restart local v4    # "longest":I
    :cond_14a
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x3

    if-ne v7, v8, :cond_161

    .line 279
    iget-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v8, Lic/buzzebeeslib/R$drawable;->bz_empty_photo:I

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    goto :goto_104

    .line 280
    :cond_161
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x2

    if-ne v7, v8, :cond_178

    .line 281
    iget-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v8, Lic/buzzebeeslib/R$drawable;->bz_empty_photo:I

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    goto :goto_104

    .line 282
    :cond_178
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    if-ne v7, v9, :cond_104

    .line 283
    iget-object v7, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v8, Lic/buzzebeeslib/R$drawable;->bz_empty_photo:I

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    goto/16 :goto_104
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 2486
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 2487
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2488
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2489
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    .line 2491
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 2443
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 2444
    const-string v0, "campaign.adbuzz"

    const-string v1, "private void onPause() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1b

    .line 2446
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2447
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2448
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    .line 2450
    :cond_1b
    invoke-direct {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->turnGPSOff()V

    .line 2451
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 2496
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    if-eqz v0, :cond_16

    .line 2497
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    invoke-virtual {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView;->setMediaPlayer(Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;)V

    .line 2498
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    sget v0, Lic/buzzebeeslib/R$id;->videoSurfaceContainer:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/control/VideoControllerView;->setAnchorView(Landroid/view/ViewGroup;)V

    .line 2500
    :cond_16
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1f

    .line 2501
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2503
    :cond_1f
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 465
    const-string v0, "campaign.adbuzz"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 2136
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 2137
    const-string v2, "campaign.adbuzz"

    const-string v3, "private void onResume() {"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    if-eqz v2, :cond_95

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/CustomPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_95

    .line 2140
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    if-eqz v2, :cond_95

    .line 2141
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$id;->videoSurface:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    .line 2142
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2143
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 2144
    .local v1, "videoHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 2145
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2146
    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 2148
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    .line 2149
    new-instance v2, Lic/buzzebeeslib/control/VideoControllerView;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/control/VideoControllerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    .line 2151
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    new-instance v3, Lic/buzzebeeslib/activity/SurveyFragmentActivity$9;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$9;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/VideoControllerView;->setOnRqExitListener(Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;)V

    .line 2159
    :try_start_55
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2160
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 2161
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uri vdo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2163
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2164
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2165
    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_95} :catch_96
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_95} :catch_a0
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_95} :catch_aa
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_95} :catch_b4

    .line 2183
    .end local v1    # "videoHolder":Landroid/view/SurfaceHolder;
    :cond_95
    :goto_95
    return-void

    .line 2166
    .restart local v1    # "videoHolder":Landroid/view/SurfaceHolder;
    :catch_96
    move-exception v0

    .line 2167
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "IllegalArgumentException"

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_95

    .line 2169
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a0
    move-exception v0

    .line 2170
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "SecurityException"

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_95

    .line 2172
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_aa
    move-exception v0

    .line 2173
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "IllegalStateException"

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_95

    .line 2175
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_b4
    move-exception v0

    .line 2176
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "IOException"

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 455
    const-string v0, "campaign.adbuzz"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 460
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2507
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    if-eqz v0, :cond_9

    .line 2508
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/VideoControllerView;->show()V

    .line 2510
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public openGallery(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xc

    .line 2633
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput v3, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 2634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2635
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2636
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2637
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput v3, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 2638
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 2372
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 2373
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2375
    :cond_9
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 2355
    const/4 v1, 0x0

    iput-boolean v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->isOnComplete:Z

    .line 2356
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2357
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2358
    const-string v1, "isReset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2359
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2360
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 2361
    return-void
.end method

.method public seekTo(I)V
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 2397
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 2398
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2400
    :cond_9
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 2365
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 2366
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2368
    :cond_9
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2515
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 2516
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 2518
    :cond_9
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 2523
    :try_start_0
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_e

    .line 2524
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 2525
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 2531
    :cond_e
    :goto_e
    return-void

    .line 2527
    :catch_f
    move-exception v0

    .line 2528
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    const-string v2, "surfaceCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 2536
    return-void
.end method

.method public takePicture(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2641
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/16 v2, 0xc

    iput v2, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 2642
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2643
    .local v0, "i":Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFileUri:Landroid/net/Uri;

    .line 2644
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFileUri:Landroid/net/Uri;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFileUri:Landroid/net/Uri;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 2645
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFileUri:Landroid/net/Uri;

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 2646
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    sget-object v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->mediaFile:Ljava/io/File;

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gMediaFile:Ljava/io/File;

    .line 2647
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    sget-object v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->path:Ljava/lang/String;

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    .line 2648
    const-string v1, "output"

    iget-object v2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2649
    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2650
    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/16 v2, 0xb

    iput v2, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 2654
    :goto_47
    return-void

    .line 2652
    :cond_48
    sget v1, Lic/buzzebeeslib/R$string;->post_check_your_memory_card:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    goto :goto_47
.end method

.method public toggleFullScreen()V
    .registers 1

    .prologue
    .line 2439
    return-void
.end method

.method public validateEmail(Ljava/lang/String;)Z
    .registers 6
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 2542
    const-string v0, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 2543
    .local v0, "EMAIL_PATTERN":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 2544
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2545
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method
