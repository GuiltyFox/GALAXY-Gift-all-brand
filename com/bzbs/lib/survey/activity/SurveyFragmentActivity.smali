.class public Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;,
        Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;,
        Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;,
        Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;,
        Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$QTPagerAdapter;,
        Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;,
        Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;,
        Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$IntegerComparator;
    }
.end annotation


# static fields
.field private static final LOGCAT:Ljava/lang/String; = "campaign.adbuzz"

.field private static final MEDIA_TYPE_IMAGE:I = 0x64

.field private static final MEDIA_TYPE_VIDEO:I = 0xc8

.field private static final RC_BrowseImage:I = 0xb

.field private static final RC_TakePhoto:I = 0x15

.field private static mediaFile:Ljava/io/File;

.field private static path:Ljava/lang/String;


# instance fields
.field private final ITEM_BACK:I

.field private final ITEM_CHECK:I

.field private final ITEM_CHECK_RADIO:I

.field private final ITEM_CHECK_RADIO_NO_VALUE:I

.field private final ITEM_NEXT:I

.field private final ITEM_UNCHECK:I

.field private PrivilegeMessage:Ljava/lang/String;

.field private RC_BARCODE_SCANNER:I

.field private RC_BARCODE_SCANNER_CONTINUE:I

.field private RC_BARCODE_SCANNER_CONTINUE_BREAK:I

.field private TAG:Ljava/lang/String;

.field private ThemePrimary:I

.field adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

.field private allPage:I

.field calEndDate:Ljava/util/Calendar;

.field calStartDate:Ljava/util/Calendar;

.field private cd:Lcom/bzbs/lib/survey/util/ConnectionDetector;

.field private checkRadioJump:I

.field private chkSubmit:Z

.field private contact_number:Ljava/lang/String;

.field contentCount:I

.field private continueDataModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/models/ContinueDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private controller:Lcom/bzbs/lib/survey/control/VideoControllerView;

.field countInput:I

.field currentView:I

.field private dataContinues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field endSurveyCallPhone:Ljava/lang/String;

.field private etLocation:Landroid/widget/TextView;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFileUri:Landroid/net/Uri;

.field private gFontDefault:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gImageHeight:I

.field private gImageWidth:I

.field private gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field gVideoLayout:Landroid/view/View;

.field private gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

.field private getCheckRadioJumpNext:I

.field private gps:Lcom/bzbs/lib/survey/util/GPSTracker;

.field private gpsTracker:Lcom/bzbs/lib/survey/util/GPSTracker;

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

.field private isLanscape:Z

.field private isOnComplete:Z

.field isRepeat:Z

.field isVideo:Z

.field private json_badges:Lorg/json/JSONArray;

.field private json_mission:Lorg/json/JSONArray;

.field private lastPage:I

.field lat:D

.field listCampaignExtra:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;",
            ">;"
        }
    .end annotation
.end field

.field listStackPage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;",
            ">;"
        }
    .end annotation
.end field

.field lng:D

.field private mActivity:Landroid/app/Activity;

.field private nextPosition:I

.field private paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

.field params:Landroid/widget/LinearLayout$LayoutParams;

.field pbSurvey:Landroid/widget/ProgressBar;

.field private player:Landroid/media/MediaPlayer;

.field private points:J

.field private postSubmitModel:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

.field scvSurvey:Landroid/widget/ScrollView;

.field stackBackPage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

.field stackNextPage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strAdsMessage:Ljava/lang/String;

.field strJump:Ljava/lang/String;

.field private strMsgAlert:Ljava/lang/String;

.field strNextPage:Ljava/lang/String;

.field strRemove:Ljava/lang/String;

.field strStackNext:Ljava/lang/String;

.field private strThankyouMessage:Ljava/lang/String;

.field strUpdate:Ljava/lang/String;

.field private str_nextredeemdate:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 147
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contact_number:Ljava/lang/String;

    .line 152
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ThemePrimary:I

    .line 153
    iput-object p0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;

    .line 156
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strThankyouMessage:Ljava/lang/String;

    .line 169
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isLanscape:Z

    .line 175
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I

    .line 176
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->incorrectTime:I

    .line 177
    iput-boolean v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z

    .line 178
    const-class v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    .line 179
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->allPage:I

    .line 181
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lastPage:I

    .line 194
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isRepeat:Z

    .line 195
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->endSurveyCallPhone:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strNextPage:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/bean/StackModel;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->listStackPage:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackBackPage:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->listCampaignExtra:Ljava/util/ArrayList;

    .line 203
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->countInput:I

    .line 208
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contentCount:I

    .line 209
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isVideo:Z

    .line 210
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isOnComplete:Z

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvImageUrl:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;

    .line 225
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    .line 228
    const/16 v0, 0x7b

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER:I

    .line 229
    const/16 v0, 0x270f

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER_CONTINUE:I

    .line 230
    const/16 v0, 0x270e

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER_CONTINUE_BREAK:I

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;

    .line 625
    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ITEM_CHECK:I

    .line 626
    iput v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ITEM_UNCHECK:I

    .line 627
    const/4 v0, 0x2

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ITEM_NEXT:I

    .line 628
    const/4 v0, 0x3

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ITEM_BACK:I

    .line 629
    const/4 v0, 0x4

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ITEM_CHECK_RADIO:I

    .line 630
    const/4 v0, 0x5

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ITEM_CHECK_RADIO_NO_VALUE:I

    .line 631
    const/16 v0, -0x63

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    .line 632
    const/16 v0, -0x64

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getCheckRadioJumpNext:I

    .line 820
    const-string/jumbo v0, "Update => \"None\""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strUpdate:Ljava/lang/String;

    .line 821
    const-string/jumbo v0, "Remove => \"None\""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strRemove:Ljava/lang/String;

    .line 822
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strStackNext:Ljava/lang/String;

    .line 823
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strJump:Ljava/lang/String;

    .line 3869
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->totalSize:J

    .line 4403
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strMsgAlert:Ljava/lang/String;

    .line 4404
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->str_nextredeemdate:Ljava/lang/String;

    return-void
.end method

.method private AlertCameraDialog()V
    .registers 5

    .prologue
    .line 4092
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4093
    .local v1, "builderSingle":Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090012

    invoke-direct {v0, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 4094
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const-string/jumbo v2, "Take Photo"

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 4095
    const-string/jumbo v2, "Choose From Gallery"

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 4096
    const-string/jumbo v2, "Cancel"

    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$16;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$16;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4104
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$17;

    invoke-direct {v2, p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$17;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4116
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4117
    return-void
.end method

.method private EnableGPSIfPossible()Z
    .registers 3

    .prologue
    .line 4144
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 4145
    .local v0, "manager":Landroid/location/LocationManager;
    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 4146
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->turnGPSOn()V

    .line 4147
    const/4 v1, 0x1

    .line 4149
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method static synthetic access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->initialParam()V

    return-void
.end method

.method static synthetic access$1000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvPage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER:I

    return v0
.end method

.method static synthetic access$1700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->continueDataModels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->continueDataModels:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->dataContinues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->dataContinues:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/LinearLayout;)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setDataContinue(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->initialLayout()V

    return-void
.end method

.method static synthetic access$2000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER_CONTINUE_BREAK:I

    return v0
.end method

.method static synthetic access$2100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER_CONTINUE:I

    return v0
.end method

.method static synthetic access$2200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvImageUrl:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->etLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->etLocation:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/GPSTracker;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gps:Lcom/bzbs/lib/survey/util/GPSTracker;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/util/GPSTracker;)Lcom/bzbs/lib/survey/util/GPSTracker;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Lcom/bzbs/lib/survey/util/GPSTracker;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gps:Lcom/bzbs/lib/survey/util/GPSTracker;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->EnableGPSIfPossible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isLanscape:Z

    return v0
.end method

.method static synthetic access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I

    return p1
.end method

.method static synthetic access$3108(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 3
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I

    return v0
.end method

.method static synthetic access$3202(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    return p1
.end method

.method static synthetic access$3300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getCheckRadioJumpNext:I

    return v0
.end method

.method static synthetic access$3400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->alertDialogMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contact_number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contact_number:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strThankyouMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/view/SurfaceView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Landroid/view/SurfaceView;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->allPage:I

    return v0
.end method

.method static synthetic access$4000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/VideoControllerView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Lcom/bzbs/lib/survey/control/VideoControllerView;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;)Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->postSubmitModel:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->alertDialogEndSurvey(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/async/PostData;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/bean/Campaign;)Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;
    .registers 3
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Lcom/bzbs/lib/survey/bean/Campaign;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkNextRedeem(Lcom/bzbs/lib/survey/bean/Campaign;)Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lastPage:I

    return v0
.end method

.method static synthetic access$5000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strMsgAlert:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lastPage:I

    return p1
.end method

.method static synthetic access$5100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stepEnd(ZZ)V

    return-void
.end method

.method static synthetic access$5200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getDataMission()V

    return-void
.end method

.method static synthetic access$5300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getCampaign(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5402(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->str_nextredeemdate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getDataBadge()V

    return-void
.end method

.method static synthetic access$5600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ZZZ)V
    .registers 4
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stepEnd(ZZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z

    return v0
.end method

.method static synthetic access$602(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z

    return p1
.end method

.method static synthetic access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkMultiCheckBokNextPage(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->incorrectTime:I

    return v0
.end method

.method static synthetic access$902(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
    .param p1, "x1"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->incorrectTime:I

    return p1
.end method

.method static synthetic access$908(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)I
    .registers 3
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 145
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->incorrectTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->incorrectTime:I

    return v0
.end method

.method private alertDialogBadgeMission(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;)V
    .registers 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "point"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "status"    # Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    .prologue
    .line 4494
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move v4, p2

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$21;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4560
    return-void
.end method

.method private alertDialogEndSurvey(Z)V
    .registers 19
    .param p1, "isCompletedSurvey"    # Z

    .prologue
    .line 4590
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getPoints()J

    move-result-wide v8

    .line 4591
    .local v8, "points":J
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getStrAdsMessage()Ljava/lang/String;

    move-result-object v12

    .line 4592
    .local v12, "strAdsMessage":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getPrivilegeMessage()Ljava/lang/String;

    move-result-object v2

    .line 4595
    .local v2, "PrivilegeMessage":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4596
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$23;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)V

    .line 4629
    .local v5, "btnYes":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$24;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)V

    .line 4646
    .local v4, "btnNo":Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string/jumbo v14, "###,###,###"

    invoke-direct {v7, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4647
    .local v7, "formatter":Ljava/text/NumberFormat;
    move-wide v10, v8

    .line 4648
    .local v10, "points_final":J
    const-string/jumbo v13, ""

    .line 4649
    .local v13, "strDialog":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v14, v14, Lcom/bzbs/lib/survey/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v15, "6"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_65

    .line 4650
    move-object v13, v12

    .line 4651
    sget v14, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "Yes"

    invoke-virtual {v14, v15, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "No"

    invoke-virtual {v14, v15, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4681
    :goto_5d
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 4682
    .local v3, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 4683
    return-void

    .line 4652
    .end local v3    # "alert":Landroid/app/AlertDialog;
    :cond_65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v14, v14, Lcom/bzbs/lib/survey/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v15, "5"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b1

    .line 4653
    move-object v13, v2

    .line 4654
    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19a

    .line 4655
    move-object v13, v12

    .line 4656
    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_183

    .line 4657
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v14, v14, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v14, v14, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v14, v14, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->type:Ljava/lang/String;

    const-string/jumbo v15, "none"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_101

    .line 4658
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget v15, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/lib/survey/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/bzbs/lib/survey/R$string;->market_point:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4659
    sget v14, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "OK"

    invoke-virtual {v14, v15, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5d

    .line 4661
    :cond_101
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget v15, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/lib/survey/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v15, v15, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v15, v15, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v15, v15, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4662
    sget v14, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "Yes"

    invoke-virtual {v14, v15, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "No"

    invoke-virtual {v14, v15, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5d

    .line 4665
    :cond_183
    sget v14, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "OK"

    invoke-virtual {v14, v15, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5d

    .line 4668
    :cond_19a
    sget v14, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "OK"

    invoke-virtual {v14, v15, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5d

    .line 4672
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v14, v14, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v14, v14, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v14, v14, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->type:Ljava/lang/String;

    const-string/jumbo v15, "none"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22a

    .line 4673
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget v15, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/lib/survey/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/bzbs/lib/survey/R$string;->market_point:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4674
    sget v14, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "OK"

    invoke-virtual {v14, v15, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5d

    .line 4676
    :cond_22a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget v15, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/lib/survey/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v15, v15, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v15, v15, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v15, v15, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4677
    sget v14, Lcom/bzbs/lib/survey/R$string;->survey_dialog_congrats_title:I

    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "Yes"

    invoke-virtual {v14, v15, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "No"

    invoke-virtual {v14, v15, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5d
.end method

.method private alertDialogMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 4563
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$22;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4587
    return-void
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 4869
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4870
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 4872
    .local v0, "app_installed":Z
    const/4 v3, 0x1

    :try_start_8
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    .line 4873
    const/4 v0, 0x1

    .line 4877
    :goto_c
    return v0

    .line 4874
    :catch_d
    move-exception v1

    .line 4875
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private autoSort()V
    .registers 3

    .prologue
    .line 899
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackBackPage:Ljava/util/ArrayList;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$IntegerComparator;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 900
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$IntegerComparator;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$IntegerComparator;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 903
    return-void
.end method

.method private callUseAfterCheckShowCode()V
    .registers 5

    .prologue
    .line 4882
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_9

    .line 4883
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 4884
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/campaign/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/use"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4885
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 4886
    .local v0, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v2, "token"

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4887
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-static {v1, v0, v2}, Lcom/bzbs/lib/survey/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 4888
    return-void
.end method

.method private checkCallPhone()V
    .registers 5

    .prologue
    .line 875
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->endSurveyCallPhone:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->endSurveyCallPhone:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 876
    new-instance v0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;-><init>()V

    .line 877
    invoke-virtual {v0, p0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->with(Landroid/content/Context;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    const-string/jumbo v1, "PERMISSION CALL_PHONE Denied"

    .line 878
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->denyPermission(Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.CALL_PHONE"

    aput-object v3, v1, v2

    .line 879
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->permissions([Ljava/lang/String;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$9;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$9;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    .line 880
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->callback(Lcom/bzbs/lib/survey/util/AddOnPermissions;)Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 894
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/util/RxPermissionUtils$Builder;->build()Lcom/bzbs/lib/survey/util/RxPermissionUtils;

    .line 896
    :cond_38
    return-void
.end method

.method private checkMultiCheckBokNextPage(ILjava/lang/String;)Z
    .registers 19
    .param p1, "ITEM_STATUS"    # I
    .param p2, "direct_choice"    # Ljava/lang/String;

    .prologue
    .line 635
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v2

    .line 636
    .local v2, "countAll":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contentCount:I

    .line 637
    .local v1, "adsCount":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->countInput:I

    add-int v11, v1, v13

    .line 638
    .local v11, "total":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v13

    add-int/2addr v13, v1

    sub-int v12, v11, v13

    .line 639
    .local v12, "x":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->countInput:I

    sub-int v10, v13, v12

    .line 641
    .local v10, "pageIndex":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contentCount:I

    if-nez v13, :cond_33

    .line 642
    const/4 v5, 0x1

    .line 648
    .local v5, "indexAdd":I
    :goto_2a
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->autoSort()V

    .line 649
    const/4 v8, 0x0

    .line 650
    .local v8, "isReturn":Z
    packed-switch p1, :pswitch_data_4ae

    .line 817
    :cond_31
    :goto_31
    const/4 v13, 0x1

    return v13

    .line 643
    .end local v5    # "indexAdd":I
    .end local v8    # "isReturn":Z
    :cond_33
    move-object/from16 v0, p0

    iget v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contentCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_43

    .line 644
    move-object/from16 v0, p0

    iget v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contentCount:I

    mul-int/lit8 v13, v13, -0x1

    add-int/lit8 v5, v13, 0x1

    .restart local v5    # "indexAdd":I
    goto :goto_2a

    .line 646
    .end local v5    # "indexAdd":I
    :cond_43
    const/4 v5, 0x0

    .restart local v5    # "indexAdd":I
    goto :goto_2a

    .line 652
    .restart local v8    # "isReturn":Z
    :pswitch_45
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    .line 653
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sub-int/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    .line 654
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_72

    .line 655
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 657
    :cond_72
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 661
    :pswitch_82
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    .line 662
    add-int/lit8 v13, v10, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    .line 663
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 666
    :pswitch_a1
    const-string/jumbo v13, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_123

    .line 667
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 668
    .local v9, "mChoice":I
    const/16 v13, -0xb

    if-ne v9, v13, :cond_d4

    .line 669
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    add-int/lit8 v14, v10, 0x1

    sub-int/2addr v14, v5

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->moreThanOnce(Ljava/util/ArrayList;I)Z

    move-result v13

    if-nez v13, :cond_31

    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    add-int/lit8 v14, v10, 0x1

    sub-int/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->autoSort()V

    goto/16 :goto_31

    .line 674
    :cond_d4
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_105

    .line 675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v14

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->moreThanOnce(Ljava/util/ArrayList;I)Z

    move-result v13

    if-nez v13, :cond_31

    .line 676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->autoSort()V

    goto/16 :goto_31

    .line 680
    :cond_105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    sub-int v14, v9, v5

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->moreThanOnce(Ljava/util/ArrayList;I)Z

    move-result v13

    if-nez v13, :cond_31

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    sub-int v14, v9, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->autoSort()V

    goto/16 :goto_31

    .line 687
    .end local v9    # "mChoice":I
    :cond_123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    add-int/lit8 v14, v10, 0x1

    invoke-static {v13, v14}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->moreThanOnce(Ljava/util/ArrayList;I)Z

    move-result v13

    if-nez v13, :cond_31

    .line 688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    add-int/lit8 v14, v10, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->autoSort()V

    goto/16 :goto_31

    .line 694
    :pswitch_141
    const-string/jumbo v13, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1bc

    .line 695
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 696
    .restart local v9    # "mChoice":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_18f

    .line 697
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_18a

    .line 698
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_187

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 697
    :cond_187
    add-int/lit8 v4, v4, 0x1

    goto :goto_158

    .line 702
    :cond_18a
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->autoSort()V

    goto/16 :goto_31

    .line 704
    .end local v4    # "i":I
    :cond_18f
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_31

    .line 705
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sub-int v14, v9, v5

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b9

    .line 706
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 704
    :cond_1b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_190

    .line 711
    .end local v4    # "i":I
    .end local v9    # "mChoice":I
    :cond_1bc
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1bd
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_31

    .line 712
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v10, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e6

    .line 713
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 711
    :cond_1e6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1bd

    .line 719
    .end local v4    # "i":I
    :pswitch_1e9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_269

    .line 720
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setPageModel(ILcom/bzbs/lib/survey/bean/StackModel$PagesEntity;I)V

    .line 743
    :goto_1f9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v14

    if-ne v13, v14, :cond_2de

    .line 744
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    .line 749
    :goto_216
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Stack Next All => "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Lcom/google/gson/Gson;

    invoke-direct {v14}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v15}, Lcom/bzbs/lib/survey/bean/StackModel;->getListNext()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strStackNext:Ljava/lang/String;

    .line 750
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "To page => "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strJump:Ljava/lang/String;

    .line 761
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setCheckRadioJumpDefault()I

    goto/16 :goto_31

    .line 722
    :cond_269
    const/4 v3, 0x0

    .line 723
    .local v3, "hasData":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel;->getListNext()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_2bc

    .line 724
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel;->getListNext()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_2bc

    .line 725
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel;->getListNext()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_2bc

    .line 726
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel;->getListNext()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v13, v10, :cond_2db

    .line 727
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel;->getListNext()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    .line 728
    const/4 v3, 0x1

    .line 735
    .end local v4    # "i":I
    :cond_2bc
    if-nez v3, :cond_2c4

    .line 736
    add-int/lit8 v13, v10, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    .line 739
    :cond_2c4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setPageModel(ILcom/bzbs/lib/survey/bean/StackModel$PagesEntity;I)V

    goto/16 :goto_1f9

    .line 725
    .restart local v4    # "i":I
    :cond_2db
    add-int/lit8 v4, v4, 0x1

    goto :goto_283

    .line 746
    .end local v3    # "hasData":Z
    .end local v4    # "i":I
    :cond_2de
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    invoke-virtual {v13, v14}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    goto/16 :goto_216

    .line 765
    :pswitch_2eb
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14, v10}, Lcom/bzbs/lib/survey/bean/StackModel;->getRemovePagePosition(Ljava/util/ArrayList;I)I

    move-result v6

    .line 766
    .local v6, "indexRemove":I
    const/16 v13, -0x63

    if-eq v6, v13, :cond_35a

    .line 767
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Remove Page -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getPage()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " => "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Lcom/google/gson/Gson;

    invoke-direct {v15}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getListStack()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v15, v13}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strRemove:Ljava/lang/String;

    .line 768
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 771
    :cond_35a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/bzbs/lib/survey/bean/StackModel;->getStackAll(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    .line 772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/bzbs/lib/survey/bean/StackModel;->getStackBackAll(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackBackPage:Ljava/util/ArrayList;

    .line 773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackBackPage:Ljava/util/ArrayList;

    invoke-virtual {v13, v14, v15}, Lcom/bzbs/lib/survey/bean/StackModel;->getPageEnoughAll(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackBackPage:Ljava/util/ArrayList;

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->autoSort()V

    .line 777
    const/4 v7, 0x0

    .line 778
    .local v7, "isJump":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackBackPage:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .restart local v4    # "i":I
    :goto_3a4
    if-ltz v4, :cond_3d1

    .line 779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackBackPage:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v14

    if-ge v13, v14, :cond_47d

    .line 780
    const/4 v7, 0x1

    .line 781
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackBackPage:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    .line 786
    :cond_3d1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v15}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/bzbs/lib/survey/bean/StackModel;->getStackAll(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/bzbs/lib/survey/bean/StackModel;->setListNext(Ljava/util/ArrayList;)V

    .line 787
    if-eqz v7, :cond_481

    .line 788
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    invoke-virtual {v13, v14, v15}, Lcom/bzbs/lib/survey/bean/StackModel;->getPage(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    .line 793
    :goto_402
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Stack Back All => "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Lcom/google/gson/Gson;

    invoke-direct {v14}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackBackPage:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strStackNext:Ljava/lang/String;

    .line 805
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->chkSubmit:Z

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->getCount()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    if-eq v13, v14, :cond_48f

    .line 808
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lastPage:I

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->resetSurveyKeyboard(I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v14}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->lastPage:I

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->actionBackClear(I)Ljava/lang/String;

    .line 815
    :cond_470
    :goto_470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    invoke-virtual {v13, v14}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(I)V

    goto/16 :goto_31

    .line 778
    :cond_47d
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3a4

    .line 790
    :cond_481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v13}, Lcom/bzbs/lib/survey/bean/StackModel;->getListNext()Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    goto/16 :goto_402

    .line 811
    :cond_48f
    if-nez v7, :cond_470

    .line 812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    goto :goto_470

    .line 650
    :pswitch_data_4ae
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_141
        :pswitch_1e9
        :pswitch_2eb
        :pswitch_45
        :pswitch_82
    .end packed-switch
.end method

.method private checkNextRedeem(Lcom/bzbs/lib/survey/bean/Campaign;)Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;
    .registers 14
    .param p1, "campaign"    # Lcom/bzbs/lib/survey/bean/Campaign;

    .prologue
    const-wide/16 v10, 0x6270

    const-wide/16 v8, 0x3e8

    .line 4407
    sget-object v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->CONTINUE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    .line 4408
    .local v1, "mEnum":Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;
    iget-wide v4, p1, Lcom/bzbs/lib/survey/bean/Campaign;->NextRedeemDate:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_a8

    .line 4409
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p1, Lcom/bzbs/lib/survey/bean/Campaign;->NextRedeemDate:J

    sub-long/2addr v4, v10

    mul-long/2addr v4, v8

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 4410
    .local v2, "nextRedeemDate":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4412
    .local v0, "currentDate":Ljava/util/Date;
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 4413
    iget v4, p1, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemMostPerPerson:I

    if-eqz v4, :cond_46

    iget v4, p1, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemCount:I

    iget v5, p1, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemMostPerPerson:I

    if-lt v4, v5, :cond_46

    .line 4414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\n\n*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/bzbs/lib/survey/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strMsgAlert:Ljava/lang/String;

    .line 4415
    sget-object v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->SURVEY_DONE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    .line 4435
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v2    # "nextRedeemDate":Ljava/util/Date;
    :cond_46
    :goto_46
    return-object v1

    .line 4418
    .restart local v0    # "currentDate":Ljava/util/Date;
    .restart local v2    # "nextRedeemDate":Ljava/util/Date;
    :cond_47
    sget-object v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->NEXT_REDEEM_ALERT:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    .line 4420
    iget v4, p1, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemMostPerPerson:I

    if-eqz v4, :cond_6e

    iget v4, p1, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemCount:I

    iget v5, p1, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemMostPerPerson:I

    if-lt v4, v5, :cond_6e

    .line 4422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\n\n*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/bzbs/lib/survey/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strMsgAlert:Ljava/lang/String;

    .line 4423
    sget-object v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->SURVEY_DONE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    goto :goto_46

    .line 4426
    :cond_6e
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "dd MMM yyyy HH:mm"

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/lib/survey/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p1, Lcom/bzbs/lib/survey/bean/Campaign;->NextRedeemDate:J

    sub-long/2addr v6, v10

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 4427
    .local v3, "strNextRedeemDate":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->str_nextredeemdate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strMsgAlert:Ljava/lang/String;

    goto :goto_46

    .line 4431
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v2    # "nextRedeemDate":Ljava/util/Date;
    .end local v3    # "strNextRedeemDate":Ljava/lang/String;
    :cond_a8
    iget v4, p1, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemMostPerPerson:I

    if-eqz v4, :cond_46

    iget v4, p1, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemCount:I

    iget v5, p1, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemMostPerPerson:I

    if-lt v4, v5, :cond_46

    .line 4432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\n\n*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/bzbs/lib/survey/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strMsgAlert:Ljava/lang/String;

    .line 4433
    sget-object v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->SURVEY_DONE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    goto/16 :goto_46
.end method

.method private getCampaign(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "strLink"    # Ljava/lang/String;

    .prologue
    .line 4188
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$18;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4197
    return-void
.end method

.method private getDataBadge()V
    .registers 11

    .prologue
    .line 4458
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getJson_badges()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 4459
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getJson_badges()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_2f

    .line 4460
    const/4 v8, 0x0

    .line 4462
    .local v8, "json_badge":Lorg/json/JSONObject;
    :try_start_12
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getJson_badges()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_19} :catch_30

    move-result-object v8

    .line 4466
    :goto_1a
    if-eqz v8, :cond_35

    .line 4467
    new-instance v9, Lcom/bzbs/lib/survey/bean/BadgeAlert;

    invoke-direct {v9, v8}, Lcom/bzbs/lib/survey/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 4468
    .local v9, "objBadgeAlert":Lcom/bzbs/lib/survey/bean/BadgeAlert;
    iget-object v1, v9, Lcom/bzbs/lib/survey/bean/BadgeAlert;->id:Ljava/lang/String;

    iget v2, v9, Lcom/bzbs/lib/survey/bean/BadgeAlert;->points:I

    iget-object v3, v9, Lcom/bzbs/lib/survey/bean/BadgeAlert;->name:Ljava/lang/String;

    iget-object v4, v9, Lcom/bzbs/lib/survey/bean/BadgeAlert;->description:Ljava/lang/String;

    sget-object v5, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->BADGE:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->alertDialogBadgeMission(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;)V

    .line 4473
    .end local v7    # "i":I
    .end local v8    # "json_badge":Lorg/json/JSONObject;
    .end local v9    # "objBadgeAlert":Lcom/bzbs/lib/survey/bean/BadgeAlert;
    :cond_2f
    return-void

    .line 4463
    .restart local v7    # "i":I
    .restart local v8    # "json_badge":Lorg/json/JSONObject;
    :catch_30
    move-exception v6

    .line 4464
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a

    .line 4459
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_7
.end method

.method private getDataMission()V
    .registers 11

    .prologue
    .line 4476
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getJson_mission()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4477
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getJson_mission()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_30

    .line 4478
    const/4 v8, 0x0

    .line 4480
    .local v8, "json_mission":Lorg/json/JSONObject;
    :try_start_12
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getJson_mission()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_19} :catch_31

    move-result-object v8

    .line 4484
    :goto_1a
    if-eqz v8, :cond_36

    .line 4485
    new-instance v9, Lcom/bzbs/lib/survey/bean/MissionAlert;

    invoke-direct {v9, v8}, Lcom/bzbs/lib/survey/bean/MissionAlert;-><init>(Lorg/json/JSONObject;)V

    .line 4486
    .local v9, "objMissionAlert":Lcom/bzbs/lib/survey/bean/MissionAlert;
    iget-object v1, v9, Lcom/bzbs/lib/survey/bean/MissionAlert;->id:Ljava/lang/String;

    iget v2, v9, Lcom/bzbs/lib/survey/bean/MissionAlert;->points:I

    iget-object v3, v9, Lcom/bzbs/lib/survey/bean/MissionAlert;->name:Ljava/lang/String;

    const-string/jumbo v4, ""

    sget-object v5, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->MISSION:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->alertDialogBadgeMission(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/bean/StatusAlertDialog;)V

    .line 4491
    .end local v7    # "i":I
    .end local v8    # "json_mission":Lorg/json/JSONObject;
    .end local v9    # "objMissionAlert":Lcom/bzbs/lib/survey/bean/MissionAlert;
    :cond_30
    return-void

    .line 4481
    .restart local v7    # "i":I
    .restart local v8    # "json_mission":Lorg/json/JSONObject;
    :catch_31
    move-exception v6

    .line 4482
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a

    .line 4477
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_7
.end method

.method private getLayout()Landroid/view/View;
    .registers 23

    .prologue
    .line 4745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/bzbs/lib/survey/control/CustomPager;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 4746
    .local v19, "view_pager_survey":Landroid/view/View;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutRootSurvey:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 4747
    .local v14, "layoutRootSurvey":Landroid/widget/LinearLayout;
    if-eqz v14, :cond_142

    .line 4748
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1f
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v2, v0, :cond_142

    .line 4749
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 4750
    .local v18, "view_field_row":Landroid/view/View;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutQuestion:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 4751
    .local v12, "layoutQuestion":Landroid/widget/RelativeLayout;
    if-eqz v12, :cond_13e

    .line 4752
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutInfoChoice:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 4753
    .local v6, "layoutInfoChoice":Landroid/widget/RelativeLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutInfoCheckbox:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 4754
    .local v5, "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutInfoInput:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 4755
    .local v8, "layoutInfoInput":Landroid/widget/RelativeLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutDate:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 4756
    .local v3, "layoutDate":Landroid/widget/RelativeLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutTime:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 4757
    .local v17, "layoutTime":Landroid/widget/RelativeLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutInfoTextArea:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 4758
    .local v11, "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutQuestionwithBox:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 4759
    .local v13, "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 4760
    .local v16, "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 4761
    .local v15, "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutImageInput:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 4762
    .local v4, "layoutImageInput":Landroid/widget/RelativeLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutInfoRate:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 4763
    .local v10, "layoutInfoRate":Landroid/widget/LinearLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutInfoEmotion:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 4764
    .local v7, "layoutInfoEmotion":Landroid/widget/LinearLayout;
    sget v20, Lcom/bzbs/lib/survey/R$id;->layoutInfoLocation:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 4766
    .local v9, "layoutInfoLocation":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_dc

    .line 4796
    .end local v2    # "j":I
    .end local v3    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v4    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v5    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v6    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v7    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v8    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v9    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v10    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v11    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v12    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v13    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v15    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .end local v16    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v17    # "layoutTime":Landroid/widget/RelativeLayout;
    .end local v18    # "view_field_row":Landroid/view/View;
    :goto_db
    return-object v6

    .line 4768
    .restart local v2    # "j":I
    .restart local v3    # "layoutDate":Landroid/widget/RelativeLayout;
    .restart local v4    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .restart local v5    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .restart local v6    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .restart local v7    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .restart local v8    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .restart local v9    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .restart local v10    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .restart local v11    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .restart local v12    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .restart local v13    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .restart local v15    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .restart local v16    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .restart local v17    # "layoutTime":Landroid/widget/RelativeLayout;
    .restart local v18    # "view_field_row":Landroid/view/View;
    :cond_dc
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_e4

    move-object v6, v5

    .line 4769
    goto :goto_db

    .line 4770
    :cond_e4
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_ec

    move-object v6, v8

    .line 4771
    goto :goto_db

    .line 4772
    :cond_ec
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_f4

    move-object v6, v3

    .line 4773
    goto :goto_db

    .line 4774
    :cond_f4
    invoke-virtual/range {v17 .. v17}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_fd

    move-object/from16 v6, v17

    .line 4775
    goto :goto_db

    .line 4776
    :cond_fd
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_105

    move-object v6, v11

    .line 4777
    goto :goto_db

    .line 4778
    :cond_105
    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_10d

    move-object v6, v13

    .line 4779
    goto :goto_db

    .line 4780
    :cond_10d
    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_116

    move-object/from16 v6, v16

    .line 4781
    goto :goto_db

    .line 4782
    :cond_116
    invoke-virtual {v15}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_11e

    move-object v6, v15

    .line 4783
    goto :goto_db

    .line 4784
    :cond_11e
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_126

    move-object v6, v4

    .line 4785
    goto :goto_db

    .line 4786
    :cond_126
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_12e

    move-object v6, v10

    .line 4787
    goto :goto_db

    .line 4788
    :cond_12e
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_136

    move-object v6, v7

    .line 4789
    goto :goto_db

    .line 4790
    :cond_136
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v20

    if-nez v20, :cond_13e

    move-object v6, v9

    .line 4791
    goto :goto_db

    .line 4748
    .end local v3    # "layoutDate":Landroid/widget/RelativeLayout;
    .end local v4    # "layoutImageInput":Landroid/widget/RelativeLayout;
    .end local v5    # "layoutInfoCheckbox":Landroid/widget/RelativeLayout;
    .end local v6    # "layoutInfoChoice":Landroid/widget/RelativeLayout;
    .end local v7    # "layoutInfoEmotion":Landroid/widget/LinearLayout;
    .end local v8    # "layoutInfoInput":Landroid/widget/RelativeLayout;
    .end local v9    # "layoutInfoLocation":Landroid/widget/LinearLayout;
    .end local v10    # "layoutInfoRate":Landroid/widget/LinearLayout;
    .end local v11    # "layoutInfoTextArea":Landroid/widget/RelativeLayout;
    .end local v13    # "layoutQuestionwithBox":Landroid/widget/RelativeLayout;
    .end local v15    # "layoutScanCodeContinuousInput":Landroid/widget/RelativeLayout;
    .end local v16    # "layoutScanCodeInput":Landroid/widget/RelativeLayout;
    .end local v17    # "layoutTime":Landroid/widget/RelativeLayout;
    :cond_13e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f

    .line 4796
    .end local v2    # "j":I
    .end local v12    # "layoutQuestion":Landroid/widget/RelativeLayout;
    .end local v18    # "view_field_row":Landroid/view/View;
    :cond_142
    const/4 v6, 0x0

    goto :goto_db
.end method

.method private getOutputMediaFile(I)Ljava/io/File;
    .registers 9
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 3681
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {p0}, Lcom/bzbs/lib/survey/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3682
    .local v1, "mediaStorageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 3683
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 3703
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1c
    :goto_1c
    return-object v3

    .line 3688
    .restart local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1d
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 3689
    .local v2, "timeStamp":Ljava/lang/String;
    const/16 v4, 0x64

    if-ne p1, v4, :cond_90

    .line 3690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "BB_IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->path:Ljava/lang/String;

    .line 3691
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "BB_IMG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mediaFile:Ljava/io/File;

    .line 3698
    :goto_8d
    sget-object v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mediaFile:Ljava/io/File;

    goto :goto_1c

    .line 3692
    :cond_90
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_1c

    .line 3693
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "VID_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mediaFile:Ljava/io/File;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c4} :catch_c5

    goto :goto_8d

    .line 3700
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :catch_c5
    move-exception v0

    .line 3701
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c
.end method

.method private getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 3671
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 3672
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 3673
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 3675
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getRandomData(I)Ljava/util/ArrayList;
    .registers 10
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4442
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p1, :cond_3a

    .line 4443
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    int-to-double v6, p1

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v3, v4, -0x1

    .line 4444
    .local v3, "randomNumber":I
    const/4 v1, 0x0

    .line 4445
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2d

    .line 4446
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_37

    .line 4447
    const/4 v1, 0x1

    .line 4451
    :cond_2d
    if-nez v1, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 4445
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 4453
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "randomNumber":I
    :cond_3a
    return-object v0
.end method

.method private getZxingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4120
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.google.zxing.client.android.SCAN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4121
    .local v4, "zxingIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4122
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4123
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_79

    .line 4124
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 4125
    .local v1, "app":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v6, "zxing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 4126
    const-string/jumbo v5, "OAT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "1:= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", 2:= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 4128
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4133
    .end local v1    # "app":Landroid/content/pm/ResolveInfo;
    :cond_79
    return-object v4

    .line 4123
    .restart local v1    # "app":Landroid/content/pm/ResolveInfo;
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method private initialLayout()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 442
    sget v6, Lcom/bzbs/lib/survey/R$id;->vp_survey_list:I

    invoke-virtual {p0, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/bzbs/lib/survey/control/CustomPager;

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    .line 443
    sget v6, Lcom/bzbs/lib/survey/R$id;->imgBack:I

    invoke-virtual {p0, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;

    .line 444
    sget v6, Lcom/bzbs/lib/survey/R$id;->imgNext:I

    invoke-virtual {p0, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;

    .line 445
    sget v6, Lcom/bzbs/lib/survey/R$id;->imgRestart:I

    invoke-virtual {p0, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 446
    .local v4, "imgRestart":Landroid/widget/ImageView;
    sget v6, Lcom/bzbs/lib/survey/R$id;->imgExit:I

    invoke-virtual {p0, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 447
    .local v3, "imgExit":Landroid/widget/ImageView;
    sget v6, Lcom/bzbs/lib/survey/R$id;->tvPage:I

    invoke-virtual {p0, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvPage:Landroid/widget/TextView;

    .line 449
    new-instance v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$4;

    invoke-direct {v6, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$4;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    new-instance v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$5;

    invoke-direct {v6, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$5;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    const/4 v5, 0x0

    .line 470
    .local v5, "intLast":I
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    if-eqz v6, :cond_72

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_72

    .line 471
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 474
    :cond_72
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v6, v8}, Lcom/bzbs/lib/survey/control/CustomPager;->setPagingEnabled(Z)V

    .line 475
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    new-instance v7, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;

    invoke-direct {v7, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$6;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v6, v7}, Lcom/bzbs/lib/survey/control/CustomPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v0, "adBuzzItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/AdBuzzItem;>;"
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string/jumbo v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 497
    new-instance v7, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    invoke-direct {v7, v6}, Lcom/bzbs/lib/survey/bean/AdBuzzItem;-><init>(Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iput v9, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contentCount:I

    .line 499
    iput-boolean v9, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isVideo:Z

    .line 506
    :goto_b1
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraSurvey:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    if-eqz v6, :cond_11a

    .line 507
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_bc
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraSurvey:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_11a

    .line 508
    new-instance v7, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraSurvey:Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    invoke-direct {v7, v6}, Lcom/bzbs/lib/survey/bean/AdBuzzItem;-><init>(Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    .line 501
    .end local v2    # "i":I
    :cond_e3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e4
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_10b

    .line 502
    new-instance v7, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    invoke-direct {v7, v6}, Lcom/bzbs/lib/survey/bean/AdBuzzItem;-><init>(Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_e4

    .line 504
    :cond_10b
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/lib/survey/bean/CampaignExtraAd;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contentCount:I

    goto :goto_b1

    .line 513
    .end local v2    # "i":I
    :cond_11a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_14f

    .line 514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    iput-boolean v9, v6, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->IsLastItem:Z

    .line 515
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->allPage:I

    .line 516
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvPage:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Page\n 1/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->allPage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :cond_14f
    iget v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contentCount:I

    if-nez v6, :cond_16c

    .line 520
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 521
    .local v1, "d1":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    .line 522
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 523
    const-string/jumbo v6, "OAT"

    const-string/jumbo v7, "START"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v1    # "d1":Ljava/util/Date;
    :cond_16c
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->thankyou_message:Ljava/lang/String;

    if-eqz v6, :cond_180

    .line 527
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->thankyou_message:Ljava/lang/String;

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strThankyouMessage:Ljava/lang/String;

    .line 529
    :cond_180
    new-instance v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-direct {v6, p0, p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .line 530
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-virtual {v6, v7}, Lcom/bzbs/lib/survey/control/CustomPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 531
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->adapter:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-virtual {v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bzbs/lib/survey/control/CustomPager;->setOffscreenPageLimit(I)V

    .line 533
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;

    new-instance v7, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;

    invoke-direct {v7, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$7;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;

    new-instance v7, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;

    invoke-direct {v7, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$8;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->pbSurvey:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 622
    return-void
.end method

.method private initialParam()V
    .registers 5

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 427
    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/bzbs/lib/survey/bean/Campaign;

    iput-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    .line 428
    const-string/jumbo v1, "ThemePrimary"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ThemePrimary:I

    .line 429
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ThemePrimary => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->ThemePrimary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 430
    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$3;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$3;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 437
    :cond_45
    return-void
.end method

.method public static moreThanOnce(Ljava/util/ArrayList;I)Z
    .registers 8
    .param p1, "searched"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 922
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 923
    .local v1, "numCount":I
    const/4 v0, 0x0

    .line 925
    .local v0, "more":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 926
    .local v2, "thisNum":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 927
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 931
    .end local v2    # "thisNum":I
    :cond_27
    if-lez v1, :cond_2a

    .line 932
    const/4 v0, 0x1

    .line 935
    :cond_2a
    return v0
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 956
    const-string/jumbo v0, "campaign.adbuzz"

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 958
    const-string/jumbo v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/Campaign;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    .line 959
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->pbSurvey:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 961
    :cond_24
    return-void
.end method

.method private setCheckRadioJumpDefault()I
    .registers 2

    .prologue
    .line 914
    const/16 v0, -0x63

    iput v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    return v0
.end method

.method private setDataContinue(Landroid/widget/LinearLayout;)V
    .registers 12
    .param p1, "llContentRow"    # Landroid/widget/LinearLayout;

    .prologue
    .line 4800
    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;

    const-string/jumbo v9, "layout_inflater"

    .line 4801
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 4802
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->continueDataModels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_58

    .line 4803
    iget-object v8, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->continueDataModels:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/models/ContinueDataModel;

    .line 4805
    .local v0, "continueDataModel":Lcom/bzbs/lib/survey/models/ContinueDataModel;
    sget v8, Lcom/bzbs/lib/survey/R$layout;->bz_survey_continue_row:I

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 4807
    .local v7, "viewContentRow":Landroid/view/View;
    sget v8, Lcom/bzbs/lib/survey/R$id;->tv_model:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4808
    .local v5, "tvModel":Landroid/widget/TextView;
    sget v8, Lcom/bzbs/lib/survey/R$id;->tv_serial:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 4809
    .local v6, "tvSerial":Landroid/widget/TextView;
    sget v8, Lcom/bzbs/lib/survey/R$id;->img_delete:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 4811
    .local v3, "imgDelete":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/models/ContinueDataModel;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4812
    invoke-virtual {v0}, Lcom/bzbs/lib/survey/models/ContinueDataModel;->getSerial()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4814
    move v1, v2

    .line 4815
    .local v1, "finalI":I
    new-instance v8, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;

    invoke-direct {v8, p0, v1, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$25;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ILandroid/widget/LinearLayout;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4860
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4802
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4862
    .end local v0    # "continueDataModel":Lcom/bzbs/lib/survey/models/ContinueDataModel;
    .end local v1    # "finalI":I
    .end local v3    # "imgDelete":Landroid/widget/ImageView;
    .end local v5    # "tvModel":Landroid/widget/TextView;
    .end local v6    # "tvSerial":Landroid/widget/TextView;
    .end local v7    # "viewContentRow":Landroid/view/View;
    :cond_58
    return-void
.end method

.method private setPageModel(ILcom/bzbs/lib/survey/bean/StackModel$PagesEntity;I)V
    .registers 10
    .param p1, "pageIndex"    # I
    .param p2, "page"    # Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    .param p3, "adsCount"    # I

    .prologue
    .line 826
    if-eqz p2, :cond_cb

    .line 827
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->listStackPage:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_7
    :goto_7
    const/4 v2, 0x0

    .line 846
    .local v2, "isUpdateData":Z
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 847
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6b

    .line 848
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getPage()I

    move-result v3

    if-ne v3, p1, :cond_101

    .line 849
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Update Page -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getPage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Stack => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getListStack()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strUpdate:Ljava/lang/String;

    .line 850
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 851
    const/4 v2, 0x1

    .line 856
    .end local v0    # "i":I
    :cond_6b
    if-nez v2, :cond_74

    .line 857
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->listStackPage:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/survey/bean/StackModel;->setPages(Ljava/util/ArrayList;)V

    .line 860
    :cond_74
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bzbs/lib/survey/bean/StackModel;->getStackAll(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/survey/bean/StackModel;->setListNext(Ljava/util/ArrayList;)V

    .line 861
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackModels:Lcom/bzbs/lib/survey/bean/StackModel;

    invoke-virtual {v4}, Lcom/bzbs/lib/survey/bean/StackModel;->getPages()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bzbs/lib/survey/bean/StackModel;->getStackAll(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    .line 863
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_94
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_ca

    .line 864
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_105

    .line 865
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    .line 866
    iget v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    if-le v3, p3, :cond_105

    .line 867
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkRadioJump:I

    .line 872
    :cond_ca
    return-void

    .line 829
    .end local v0    # "i":I
    .end local v2    # "isUpdateData":Z
    :cond_cb
    new-instance p2, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    .end local p2    # "page":Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    invoke-direct {p2}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;-><init>()V

    .line 830
    .restart local p2    # "page":Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackNextPage:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->setListStack(Ljava/util/ArrayList;)V

    .line 831
    invoke-virtual {p2, p1}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->setPage(I)V

    .line 832
    const/4 v1, 0x0

    .line 833
    .local v1, "isExist":Z
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_da
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->listStackPage:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_f5

    .line 834
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->listStackPage:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getPage()I

    move-result v3

    invoke-virtual {p2}, Lcom/bzbs/lib/survey/bean/StackModel$PagesEntity;->getPage()I

    move-result v4

    if-ne v3, v4, :cond_fe

    .line 835
    const/4 v1, 0x1

    .line 839
    :cond_f5
    if-nez v1, :cond_7

    .line 840
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->listStackPage:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 833
    :cond_fe
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 847
    .end local v1    # "isExist":Z
    .restart local v2    # "isUpdateData":Z
    :cond_101
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    .line 863
    :cond_105
    add-int/lit8 v0, v0, 0x1

    goto :goto_94
.end method

.method private showDialogAlertOut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3543
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3544
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3545
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "No"

    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$14;

    invoke-direct {v4, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$14;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "Yes"

    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$13;

    invoke-direct {v4, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$13;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    .line 3550
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3557
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3558
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3559
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$11;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3314
    return-void
.end method

.method private stepEnd(ZZ)V
    .registers 4
    .param p1, "btnNo"    # Z
    .param p2, "isCompletedSurvey"    # Z

    .prologue
    .line 4254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stepEnd(ZZZ)V

    .line 4255
    return-void
.end method

.method private stepEnd(ZZZ)V
    .registers 13
    .param p1, "btnNo"    # Z
    .param p2, "isCompletedSurvey"    # Z
    .param p3, "showCode"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 4278
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyID:Ljava/lang/String;

    const-string/jumbo v5, "70"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 4279
    const-string/jumbo v4, "content://someURI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4280
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4281
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "json_redeem"

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->postSubmitModel:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    invoke-virtual {v5, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4282
    invoke-virtual {p0, v7, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 4283
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 4295
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_32
    const-string/jumbo v4, "GalaxyReward"

    const-string/jumbo v5, "GalaxyReward"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 4299
    const-string/jumbo v4, "content://someURI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4300
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4301
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "campaignId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4302
    const-string/jumbo v4, "OAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "paramCampaign.ID= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    invoke-virtual {p0, v7, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 4308
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_89
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 4310
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkCallPhone()V

    .line 4325
    :try_start_8f
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "open link"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 4326
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 4327
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v3, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->and_link:Ljava/lang/String;

    .line 4328
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{token}"

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&contace_number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contact_number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4329
    const-string/jumbo v4, "campaign.adbuzz"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(url and_link)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    move-object v0, v3

    .line 4339
    .local v0, "finalUrl":Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$19;

    invoke-direct {v5, p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$19;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4396
    .end local v0    # "finalUrl":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_10c
    :goto_10c
    return-void

    .line 4349
    :cond_10d
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v3, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->link:Ljava/lang/String;

    .line 4350
    .restart local v3    # "url":Ljava/lang/String;
    const-string/jumbo v4, "{token}"

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 4351
    const-string/jumbo v4, "campaign.adbuzz"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(url open link)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    move-object v0, v3

    .line 4361
    .restart local v0    # "finalUrl":Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$20;

    invoke-direct {v5, p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$20;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_14e} :catch_14f

    goto :goto_10c

    .line 4392
    .end local v0    # "finalUrl":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :catch_14f
    move-exception v4

    goto :goto_10c
.end method

.method private turnGPSOff()V
    .registers 5

    .prologue
    .line 4173
    :try_start_0
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4174
    .local v1, "provider":Ljava/lang/String;
    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4176
    .local v0, "poke":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4177
    const-string/jumbo v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4178
    const-string/jumbo v2, "3"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4179
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 4185
    .end local v0    # "poke":Landroid/content/Intent;
    .end local v1    # "provider":Ljava/lang/String;
    :cond_35
    :goto_35
    return-void

    .line 4182
    :catch_36
    move-exception v2

    goto :goto_35
.end method

.method private turnGPSOn()V
    .registers 7

    .prologue
    .line 4154
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4155
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enabled"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4156
    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 4158
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "location_providers_allowed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4159
    .local v3, "provider":Ljava/lang/String;
    const-string/jumbo v4, "gps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 4160
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4161
    .local v2, "poke":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4162
    const-string/jumbo v4, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4163
    const-string/jumbo v4, "3"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4164
    invoke-virtual {p0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    .line 4169
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "poke":Landroid/content/Intent;
    .end local v3    # "provider":Ljava/lang/String;
    :cond_47
    :goto_47
    return-void

    .line 4166
    :catch_48
    move-exception v0

    .line 4167
    .local v0, "c":Ljava/lang/Exception;
    const-string/jumbo v4, "This device is not support"

    invoke-direct {p0, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    goto :goto_47
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 4138
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 4140
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
    .line 3380
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    .prologue
    .line 3385
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    .prologue
    .line 3390
    const/4 v0, 0x0

    return v0
.end method

.method public deleteMedia(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3648
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    if-eqz v0, :cond_2c

    .line 3649
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    .line 3650
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3651
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3653
    :cond_1e
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 3655
    :cond_22
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2c

    .line 3656
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v2, v0, Lcom/bzbs/lib/survey/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 3659
    :cond_2c
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 3660
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3661
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3662
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3663
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvImageUrl:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3664
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    iget v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3668
    :cond_7d
    return-void
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 3375
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 3350
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 3351
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 3353
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getDefaultJump()I
    .registers 2

    .prologue
    .line 918
    const/16 v0, -0x63

    return v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 3342
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 3344
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getJson_badges()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 4717
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->json_badges:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getJson_mission()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 4725
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->json_mission:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getPoints()J
    .registers 3

    .prologue
    .line 4693
    iget-wide v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->points:J

    return-wide v0
.end method

.method public getPrivilegeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4709
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->PrivilegeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStrAdsMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4701
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strAdsMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 3395
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 3367
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 3369
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 26
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 3708
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3714
    const/16 v2, 0x26b5

    move/from16 v0, p1

    if-ne v0, v2, :cond_1a

    .line 3715
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$15;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3728
    :cond_1a
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_120

    const/16 v2, 0xb

    move/from16 v0, p1

    if-ne v0, v2, :cond_120

    .line 3730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 3731
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_data"

    aput-object v3, v4, v2

    .line 3732
    .local v4, "filePathColumn":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v3, v3, Lcom/bzbs/lib/survey/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3733
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3734
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3735
    .local v11, "columnIndex":I
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3736
    .local v15, "filePath":Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3738
    invoke-static {v15}, Lcom/bzbs/lib/survey/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3739
    .local v9, "bmp":Landroid/graphics/Bitmap;
    if-nez v9, :cond_6e

    .line 3740
    sget v2, Lcom/bzbs/lib/survey/R$string;->post_check_your_picture:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    .line 3867
    .end local v4    # "filePathColumn":[Ljava/lang/String;
    .end local v9    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "columnIndex":I
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "filePath":Ljava/lang/String;
    :cond_6d
    :goto_6d
    return-void

    .line 3743
    .restart local v4    # "filePathColumn":[Ljava/lang/String;
    .restart local v9    # "bmp":Landroid/graphics/Bitmap;
    .restart local v11    # "columnIndex":I
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "filePath":Ljava/lang/String;
    :cond_6e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    if-eqz v2, :cond_98

    .line 3744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_98

    .line 3745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 3746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3748
    :cond_91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 3752
    :cond_98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v9, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 3753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_be

    .line 3754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3756
    :cond_be
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3761
    if-eqz v9, :cond_111

    .line 3762
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 3763
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 3765
    :cond_110
    const/4 v9, 0x0

    .line 3767
    :cond_111
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6d

    .line 3769
    .end local v4    # "filePathColumn":[Ljava/lang/String;
    .end local v9    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "columnIndex":I
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "filePath":Ljava/lang/String;
    :cond_120
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_21b

    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_21b

    .line 3770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/lib/survey/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3771
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1ef

    .line 3772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    if-eqz v2, :cond_161

    .line 3773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_161

    .line 3774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 3775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3777
    :cond_15a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 3781
    :cond_161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iput-object v8, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 3782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_187

    .line 3783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3785
    :cond_187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageCancel:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgImageUrl:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3790
    if-eqz v8, :cond_1da

    .line 3791
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1d9

    .line 3792
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 3794
    :cond_1d9
    const/4 v8, 0x0

    .line 3797
    :cond_1da
    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v3, v3, Lcom/bzbs/lib/survey/util/async/PostData;->gPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6d

    .line 3800
    :cond_1ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    if-eqz v2, :cond_6d

    .line 3801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6d

    .line 3802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_212

    .line 3803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3805
    :cond_212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/bzbs/lib/survey/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto/16 :goto_6d

    .line 3809
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_21b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_26f

    .line 3810
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_263

    .line 3811
    const-string/jumbo v2, "SCAN_RESULT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3812
    .local v18, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 3815
    .end local v18    # "result":Ljava/lang/String;
    :cond_263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "#5"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6d

    .line 3817
    :cond_26f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER_CONTINUE:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_348

    .line 3818
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6d

    .line 3821
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getLayout()Landroid/view/View;

    move-result-object v20

    .line 3822
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_6d

    .line 3823
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    if-ne v2, v3, :cond_6d

    .line 3824
    const-string/jumbo v2, "SCAN_RESULT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3825
    .restart local v18    # "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->dataContinues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3831
    sget v2, Lcom/bzbs/lib/survey/R$id;->layout_continue:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 3832
    .local v17, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v16, 0x0

    .local v16, "i1":I
    :goto_2bc
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_6d

    .line 3833
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 3835
    .local v13, "editBarcode":Landroid/widget/EditText;
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeInput:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 3836
    .local v19, "rl":Landroid/widget/RelativeLayout;
    sget v2, Lcom/bzbs/lib/survey/R$id;->btnGetCode:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 3837
    .local v10, "btnGetCode":Landroid/widget/TextView;
    sget v2, Lcom/bzbs/lib/survey/R$id;->etFieldInputCode:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 3838
    .local v14, "etFieldInputCode":Landroid/widget/EditText;
    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_344

    .line 3839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    .line 3840
    new-instance v21, Landroid/content/Intent;

    const-class v2, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3841
    .local v21, "zxing":Landroid/content/Intent;
    const-string/jumbo v2, "com.google.zxing.client.android.SCAN.SCAN_MODE"

    const-string/jumbo v3, "QR_CODE_MODE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3842
    const-string/jumbo v2, "appName"

    sget v3, Lcom/bzbs/lib/survey/R$string;->my_app_buzzebee:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3843
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_6d

    goto/16 :goto_6d

    .line 3832
    .end local v21    # "zxing":Landroid/content/Intent;
    :cond_344
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2bc

    .line 3852
    .end local v10    # "btnGetCode":Landroid/widget/TextView;
    .end local v13    # "editBarcode":Landroid/widget/EditText;
    .end local v14    # "etFieldInputCode":Landroid/widget/EditText;
    .end local v16    # "i1":I
    .end local v17    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v18    # "result":Ljava/lang/String;
    .end local v19    # "rl":Landroid/widget/RelativeLayout;
    .end local v20    # "v":Landroid/view/View;
    :cond_348
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->RC_BARCODE_SCANNER_CONTINUE_BREAK:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_6d

    .line 3853
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6d

    .line 3856
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getLayout()Landroid/view/View;

    move-result-object v20

    .line 3857
    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_6d

    .line 3858
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutScanCodeContinuousInput:I

    if-ne v2, v3, :cond_6d

    .line 3859
    const-string/jumbo v2, "SCAN_RESULT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3860
    .restart local v18    # "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvScanCode:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->dataContinues:Ljava/util/ArrayList;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6d
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 3539
    sget v0, Lcom/bzbs/lib/survey/R$string;->app_name:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/bzbs/lib/survey/R$string;->survey_confirm_exit:I

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showDialogAlertOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 3540
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x1

    .line 3432
    iget-boolean v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isOnComplete:Z

    if-nez v4, :cond_3d

    .line 3433
    iput-boolean v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isOnComplete:Z

    .line 3434
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-boolean v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->IsConditionPass:Z

    if-ne v4, v6, :cond_64

    .line 3435
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v4, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3436
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 3437
    .local v2, "d1":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    .line 3438
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3441
    const/4 v4, 0x2

    const-string/jumbo v5, ""

    invoke-direct {p0, v4, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkMultiCheckBokNextPage(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 3442
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3470
    .end local v2    # "d1":Ljava/util/Date;
    :cond_3d
    :goto_3d
    return-void

    .line 3447
    .restart local v2    # "d1":Ljava/util/Date;
    :cond_3e
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stackCount:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v5}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3448
    iget v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I

    .line 3449
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    iget v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I

    invoke-virtual {v4, v5, v6}, Lcom/bzbs/lib/survey/control/CustomPager;->setCurrentItem(IZ)V

    .line 3450
    const-string/jumbo v4, "OAT"

    const-string/jumbo v5, "START"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 3452
    .end local v2    # "d1":Ljava/util/Date;
    :cond_64
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v4, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3453
    const-string/jumbo v3, ""

    .line 3454
    .local v3, "txtAlert":Ljava/lang/String;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 3455
    sget v4, Lcom/bzbs/lib/survey/R$string;->no_network_connection_toast:I

    invoke-virtual {p0, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3459
    :goto_7f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3460
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string/jumbo v5, "OK"

    new-instance v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$12;

    invoke-direct {v6, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$12;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3466
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3467
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_3d

    .line 3457
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_a0
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v3, v4, Lcom/bzbs/lib/survey/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    goto :goto_7f
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 4735
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4737
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 4738
    iput-boolean v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isLanscape:Z

    .line 4742
    :cond_b
    :goto_b
    return-void

    .line 4739
    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_b

    .line 4740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isLanscape:Z

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 328
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "campaign"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 329
    const-string/jumbo v6, "campaign"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/bzbs/lib/survey/bean/Campaign;

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    .line 330
    new-instance v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;

    invoke-direct {v6, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {p0, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    :cond_22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 343
    invoke-virtual {p0, v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->requestWindowFeature(I)Z

    .line 346
    sget v6, Lcom/bzbs/lib/survey/R$layout;->bz_survey_v2_list:I

    invoke-virtual {p0, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setContentView(I)V

    .line 347
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "isReset"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v6, v8, :cond_43

    .line 348
    const v6, 0x10a0002

    const v7, 0x10a0003

    invoke-virtual {p0, v6, v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->overridePendingTransition(II)V

    .line 351
    :cond_43
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->initAnalyticsSurvey(Landroid/content/Context;)V

    .line 352
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "Survey Screen"

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->sendAnalyticsScreen(Landroid/app/Activity;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/lib/survey/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 361
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "fonts/kit55p.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFontDefault:Landroid/graphics/Typeface;

    .line 363
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;

    .line 364
    new-instance v6, Lcom/bzbs/lib/survey/util/async/PostData;

    invoke-direct {v6}, Lcom/bzbs/lib/survey/util/async/PostData;-><init>()V

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    .line 365
    new-instance v6, Lcom/bzbs/lib/survey/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bzbs/lib/survey/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->cd:Lcom/bzbs/lib/survey/util/ConnectionDetector;

    .line 366
    new-instance v6, Lcom/bzbs/lib/survey/util/GPSTracker;

    invoke-direct {v6, p0}, Lcom/bzbs/lib/survey/util/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gps:Lcom/bzbs/lib/survey/util/GPSTracker;

    .line 370
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 371
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 373
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I

    .line 374
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenHeight:I

    .line 375
    iget v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I

    iput v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gImageWidth:I

    .line 376
    iget v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gImageWidth:I

    mul-int/lit16 v6, v6, 0xc8

    div-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gImageHeight:I

    .line 379
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 380
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 381
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenHeight:I

    .line 382
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I

    .line 384
    iget v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I

    .line 385
    .local v5, "width":I
    iget v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenHeight:I

    .line 387
    .local v2, "height":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gScreenWidth:I

    const/high16 v8, 0x43100000

    invoke-virtual {p0, v8}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->GetPixelFromDips(F)I

    move-result v8

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    invoke-direct {v6, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 388
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->params:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 390
    sget v6, Lcom/bzbs/lib/survey/R$id;->pbSurvey:I

    invoke-virtual {p0, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->pbSurvey:Landroid/widget/ProgressBar;

    .line 391
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->pbSurvey:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 392
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;

    new-instance v7, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$2;

    invoke-direct {v7, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$2;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    const-wide/16 v8, 0x320

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 419
    .local v0, "d1":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    .line 420
    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->calStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 421
    const-string/jumbo v6, "OAT"

    const-string/jumbo v7, "START"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 3423
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 3428
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 3474
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 3475
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3476
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    .line 3479
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 3405
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 3406
    const-string/jumbo v0, "campaign.adbuzz"

    const-string/jumbo v1, "private void onPause() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1d

    .line 3414
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3415
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    .line 3418
    :cond_1d
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->turnGPSOff()V

    .line 3419
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;

    if-eqz v0, :cond_16

    .line 3485
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-virtual {v0, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->setMediaPlayer(Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;)V

    .line 3486
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;

    sget v0, Lcom/bzbs/lib/survey/R$id;->videoSurfaceContainer:I

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->setAnchorView(Landroid/view/ViewGroup;)V

    .line 3488
    :cond_16
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1f

    .line 3489
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3491
    :cond_1f
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 951
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 952
    const-string/jumbo v0, "campaign.adbuzz"

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 3111
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 3112
    const-string/jumbo v2, "campaign.adbuzz"

    const-string/jumbo v3, "private void onResume() {"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_9c

    .line 3129
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    if-eqz v2, :cond_9c

    .line 3130
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gVideoLayout:Landroid/view/View;

    sget v3, Lcom/bzbs/lib/survey/R$id;->videoSurface:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    .line 3131
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3132
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 3133
    .local v1, "videoHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 3134
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3135
    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 3137
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    .line 3138
    new-instance v2, Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/control/VideoControllerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;

    .line 3140
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;

    new-instance v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$10;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$10;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/survey/control/VideoControllerView;->setOnRqExitListener(Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;)V

    .line 3148
    :try_start_57
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3149
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 3150
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri vdo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3152
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3153
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3154
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_9c} :catch_9d
    .catch Ljava/lang/SecurityException; {:try_start_57 .. :try_end_9c} :catch_a8
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_9c} :catch_b3
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_9c} :catch_be

    .line 3173
    .end local v1    # "videoHolder":Landroid/view/SurfaceHolder;
    :cond_9c
    :goto_9c
    return-void

    .line 3155
    .restart local v1    # "videoHolder":Landroid/view/SurfaceHolder;
    :catch_9d
    move-exception v0

    .line 3156
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "IllegalArgumentException"

    invoke-direct {p0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    .line 3157
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_9c

    .line 3158
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a8
    move-exception v0

    .line 3159
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "SecurityException"

    invoke-direct {p0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    .line 3160
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_9c

    .line 3161
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_b3
    move-exception v0

    .line 3162
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "IllegalStateException"

    invoke-direct {p0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_9c

    .line 3164
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_be
    move-exception v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "IOException"

    invoke-direct {p0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    .line 3166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9c
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 941
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 942
    const-string/jumbo v0, "campaign.adbuzz"

    const-string/jumbo v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 946
    const-string/jumbo v0, "paramCampaign"

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 947
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3495
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;

    if-eqz v0, :cond_9

    .line 3496
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->controller:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->show()V

    .line 3498
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public openGallery(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xc

    .line 3623
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iput v3, v1, Lcom/bzbs/lib/survey/util/async/PostData;->gModeMedia:I

    .line 3624
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3625
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3626
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3627
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iput v3, v1, Lcom/bzbs/lib/survey/util/async/PostData;->gModeMedia:I

    .line 3628
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 3335
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 3337
    :cond_9
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 3317
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isOnComplete:Z

    .line 3318
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3319
    .local v0, "in":Landroid/content/Intent;
    const-string/jumbo v1, "campaign"

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3320
    const-string/jumbo v1, "isReset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3321
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3322
    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 3323
    return-void
.end method

.method public seekTo(I)V
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 3360
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 3362
    :cond_9
    return-void
.end method

.method public setJson_badges(Lorg/json/JSONArray;)V
    .registers 2
    .param p1, "json_badges"    # Lorg/json/JSONArray;

    .prologue
    .line 4721
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->json_badges:Lorg/json/JSONArray;

    .line 4722
    return-void
.end method

.method public setJson_mission(Lorg/json/JSONArray;)V
    .registers 2
    .param p1, "json_mission"    # Lorg/json/JSONArray;

    .prologue
    .line 4729
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->json_mission:Lorg/json/JSONArray;

    .line 4730
    return-void
.end method

.method public setPoints(J)V
    .registers 4
    .param p1, "points"    # J

    .prologue
    .line 4697
    iput-wide p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->points:J

    .line 4698
    return-void
.end method

.method public setPrivilegeMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "privilegeMessage"    # Ljava/lang/String;

    .prologue
    .line 4713
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->PrivilegeMessage:Ljava/lang/String;

    .line 4714
    return-void
.end method

.method public setStrAdsMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "strAdsMessage"    # Ljava/lang/String;

    .prologue
    .line 4705
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strAdsMessage:Ljava/lang/String;

    .line 4706
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 3328
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3330
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
    .line 3503
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 3504
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 3506
    :cond_9
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 3511
    :try_start_0
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_e

    .line 3512
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 3513
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 3519
    :cond_e
    :goto_e
    return-void

    .line 3515
    :catch_f
    move-exception v0

    .line 3516
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "surfaceCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 3524
    return-void
.end method

.method public takePicture(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3631
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    const/16 v2, 0xc

    iput v2, v1, Lcom/bzbs/lib/survey/util/async/PostData;->gModeMedia:I

    .line 3632
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3633
    .local v0, "i":Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFileUri:Landroid/net/Uri;

    .line 3634
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFileUri:Landroid/net/Uri;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFileUri:Landroid/net/Uri;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 3635
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFileUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/bzbs/lib/survey/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 3636
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    sget-object v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mediaFile:Ljava/io/File;

    iput-object v2, v1, Lcom/bzbs/lib/survey/util/async/PostData;->gMediaFile:Ljava/io/File;

    .line 3637
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    sget-object v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->path:Ljava/lang/String;

    iput-object v2, v1, Lcom/bzbs/lib/survey/util/async/PostData;->gPath:Ljava/lang/String;

    .line 3638
    const-string/jumbo v1, "output"

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3639
    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3641
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;

    const/16 v2, 0xb

    iput v2, v1, Lcom/bzbs/lib/survey/util/async/PostData;->gModeMedia:I

    .line 3645
    :goto_4a
    return-void

    .line 3643
    :cond_4b
    sget v1, Lcom/bzbs/lib/survey/R$string;->post_check_your_memory_card:I

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public toggleFullScreen()V
    .registers 1

    .prologue
    .line 3401
    return-void
.end method

.method public validateEmail(Ljava/lang/String;)Z
    .registers 6
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 3530
    const-string/jumbo v0, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 3531
    .local v0, "EMAIL_PATTERN":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3532
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3533
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method
