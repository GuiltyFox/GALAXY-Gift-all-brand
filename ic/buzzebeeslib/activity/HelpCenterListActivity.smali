.class public Lic/buzzebeeslib/activity/HelpCenterListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "HelpCenterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/HelpCenterListActivity$AnimateFirstDisplayListener;,
        Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;,
        Lic/buzzebeeslib/activity/HelpCenterListActivity$GetCampaignListener;,
        Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;,
        Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;,
        Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;,
        Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;,
        Lic/buzzebeeslib/activity/HelpCenterListActivity$StickerAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_gift"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"

.field private static final MEDIA_TYPE_IMAGE:I = 0x64

.field private static final MEDIA_TYPE_VIDEO:I = 0xc8

.field private static final RC_BrowseImage:I = 0xb

.field private static final RC_TakePhoto:I = 0x15

.field private static mediaFile:Ljava/io/File;

.field private static path:Ljava/lang/String;


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final MENU_BrowseImage:I

.field private final MENU_DeletePhoto:I

.field private final MENU_TakePhoto:I

.field private RC_PERMISSIONS_WALL:I

.field private RC_REVIEW_OF_REVIEW:I

.field private RC_REVIEW_POST:I

.field private TAG:Ljava/lang/String;

.field private animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private btnChat:Landroid/widget/Button;

.field private contentChatbox:Landroid/widget/LinearLayout;

.field private contentImage:Landroid/widget/LinearLayout;

.field private contentMedia:Landroid/widget/LinearLayout;

.field contentStatus:Landroid/widget/LinearLayout;

.field private contentSticker:Landroid/widget/LinearLayout;

.field private doPosting:Z

.field private etTextMessage:Landroid/widget/EditText;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

.field private gCurrentStickerSet:I

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFileUri:Landroid/net/Uri;

.field private gHandler:Landroid/os/Handler;

.field private gIsHaveMoreData:Z

.field private gListOrder:Landroid/widget/ListView;

.field private gLoading:Z

.field private gMarketReviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignReview;",
            ">;"
        }
    .end annotation
.end field

.field private gPostData:Lic/buzzebeeslib/util/async/PostData;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

.field private header_no_review_ListView:Landroid/view/View;

.field private heightKeyboard:I

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private imgMedia:Landroid/widget/ImageView;

.field imgStatus:Landroid/widget/ImageView;

.field private ivAddSticker:Landroid/widget/ImageView;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;

.field private mPullRefreshListView:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

.field options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private pagerSticker:Landroid/support/v4/view/ViewPager;

.field private paramCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private paramCampaignID:Ljava/lang/String;

.field strType:Ljava/lang/String;

.field private tvCancel:Landroid/widget/TextView;

.field tvPageHeader:Landroid/widget/TextView;

.field tvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 114
    const-class v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;

    .line 115
    const-class v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->TAG:Ljava/lang/String;

    .line 118
    const/16 v0, 0x14

    iput v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->RC_REVIEW_OF_REVIEW:I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    .line 133
    const/16 v0, 0x21

    iput v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->RC_PERMISSIONS_WALL:I

    .line 136
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->RC_REVIEW_POST:I

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->strType:Ljava/lang/String;

    .line 170
    new-instance v0, Lic/buzzebeeslib/activity/HelpCenterListActivity$AnimateFirstDisplayListener;

    invoke-direct {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$AnimateFirstDisplayListener;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListState:Landroid/os/Parcelable;

    .line 310
    iput v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListPosition:I

    .line 311
    iput v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mItemPosition:I

    .line 723
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gLoading:Z

    .line 1755
    iput v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gCurrentStickerSet:I

    .line 1761
    const/4 v0, 0x1

    iput v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->MENU_BrowseImage:I

    .line 1762
    const/4 v0, 0x2

    iput v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->MENU_TakePhoto:I

    .line 1763
    const/4 v0, 0x3

    iput v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->MENU_DeletePhoto:I

    .line 1770
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->doPosting:Z

    .line 113
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/bean/Campaign;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V
    .registers 1

    .prologue
    .line 647
    invoke-direct {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->setLayoutByCatch()V

    return-void
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 2

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->processLikeAction(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    return-void
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->header_no_review_ListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    return-void
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->pagerSticker:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/util/async/PostData;)V
    .registers 2

    .prologue
    .line 1754
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    return-void
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentMedia:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/HelpCenterListActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->etTextMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentImage:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentSticker:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/HelpCenterListActivity;I)V
    .registers 2

    .prologue
    .line 142
    iput p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->heightKeyboard:I

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->btnChat:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/HelpCenterListActivity;)I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->RC_REVIEW_OF_REVIEW:I

    return v0
.end method

.method static synthetic access$29(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Z
    .registers 2

    .prologue
    .line 723
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gLoading:Z

    return v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Z
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gIsHaveMoreData:Z

    return v0
.end method

.method static synthetic access$31(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$32(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V
    .registers 2

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->loadMarketReview(Z)V

    return-void
.end method

.method static synthetic access$33(Lic/buzzebeeslib/activity/HelpCenterListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 3

    .prologue
    .line 1458
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V
    .registers 2

    .prologue
    .line 131
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gIsHaveMoreData:Z

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V
    .registers 2

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->setLayoutByReview(Z)V

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lic/buzzebeeslib/control/newpull/PullToRefreshListView;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mPullRefreshListView:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V
    .registers 2

    .prologue
    .line 723
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gLoading:Z

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    return-object v0
.end method

.method private actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 7
    .param p1, "isLike"    # Z
    .param p2, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    const/4 v3, 0x0

    .line 1460
    if-eqz p1, :cond_3b

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/like?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    invoke-static {v0, v3, v1, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 1478
    :goto_3a
    return-void

    .line 1472
    .end local v0    # "url":Ljava/lang/String;
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/like?method=delete&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1476
    .restart local v0    # "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    invoke-static {v0, v3, v1, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_3a
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1979
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1980
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 1982
    .local v0, "app_installed":Z
    const/4 v3, 0x1

    :try_start_6
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1983
    const/4 v0, 0x1

    .line 1987
    :goto_a
    return v0

    .line 1984
    :catch_b
    move-exception v1

    .line 1985
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static getOutputMediaFile(I)Ljava/io/File;
    .registers 8
    .param p0, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 1060
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "BuzzeBees"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1061
    .local v1, "mediaStorageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1062
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1082
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1a
    :goto_1a
    return-object v3

    .line 1067
    .restart local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1b
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "timeStamp":Ljava/lang/String;
    const/16 v4, 0x64

    if-ne p0, v4, :cond_89

    .line 1069
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

    sput-object v4, Lic/buzzebeeslib/activity/HelpCenterListActivity;->path:Ljava/lang/String;

    .line 1070
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

    sput-object v4, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mediaFile:Ljava/io/File;

    .line 1077
    :goto_86
    sget-object v3, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mediaFile:Ljava/io/File;

    goto :goto_1a

    .line 1071
    :cond_89
    const/16 v4, 0xc8

    if-ne p0, v4, :cond_1a

    .line 1072
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

    sput-object v4, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mediaFile:Ljava/io/File;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bb} :catch_bc

    goto :goto_86

    .line 1079
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :catch_bc
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a
.end method

.method private static getOutputMediaFileUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 1049
    invoke-static {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 1050
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b

    .line 1051
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1053
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private initialLayout()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x42900000

    .line 434
    sget v5, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->tvPageHeader:Landroid/widget/TextView;

    .line 435
    sget v5, Lic/buzzebeeslib/R$id;->contentChatbox:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentChatbox:Landroid/widget/LinearLayout;

    .line 437
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentChatbox:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    sget v5, Lic/buzzebeeslib/R$id;->etTextMessage:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->etTextMessage:Landroid/widget/EditText;

    .line 440
    sget v5, Lic/buzzebeeslib/R$id;->btnChat:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->btnChat:Landroid/widget/Button;

    .line 441
    sget v5, Lic/buzzebeeslib/R$id;->contentImage:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentImage:Landroid/widget/LinearLayout;

    .line 442
    sget v5, Lic/buzzebeeslib/R$id;->contentSticker:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentSticker:Landroid/widget/LinearLayout;

    .line 443
    sget v5, Lic/buzzebeeslib/R$id;->pagerSticker:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->pagerSticker:Landroid/support/v4/view/ViewPager;

    .line 444
    sget v5, Lic/buzzebeeslib/R$id;->gridStickerSet:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    .line 445
    sget v5, Lic/buzzebeeslib/R$id;->contentMedia:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentMedia:Landroid/widget/LinearLayout;

    .line 446
    sget v5, Lic/buzzebeeslib/R$id;->imgMedia:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    .line 447
    sget v5, Lic/buzzebeeslib/R$id;->tvCancel:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->tvCancel:Landroid/widget/TextView;

    .line 448
    sget v5, Lic/buzzebeeslib/R$id;->contentStatus:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentStatus:Landroid/widget/LinearLayout;

    .line 449
    sget v5, Lic/buzzebeeslib/R$id;->imgStatus:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgStatus:Landroid/widget/ImageView;

    .line 450
    sget v5, Lic/buzzebeeslib/R$id;->tvStatus:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->tvStatus:Landroid/widget/TextView;

    .line 452
    sget v5, Lic/buzzebeeslib/R$id;->horScr:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    .line 454
    .local v1, "horScr":Landroid/widget/HorizontalScrollView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->GetPixelFromDips(F)I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->GetPixelFromDips(F)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 455
    .local v3, "paramsHori":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v5, v3}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/LibUserLogin;->GetKeyboardHeight(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_ee

    .line 458
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->tvPageHeader:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 459
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->tvPageHeader:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 460
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/LibUserLogin;->GetKeyboardHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getStatusBarHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 461
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentImage:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentSticker:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_ee
    sget v5, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 466
    .local v0, "activityRootView":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/activity/HelpCenterListActivity$2;

    invoke-direct {v6, p0, v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$2;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 484
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/activity/HelpCenterListActivity$3;

    invoke-direct {v6, p0, v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$3;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 499
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->etTextMessage:Landroid/widget/EditText;

    new-instance v6, Lic/buzzebeeslib/activity/HelpCenterListActivity$4;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$4;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 531
    sget v5, Lic/buzzebeeslib/R$id;->mPullRefreshListView:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mPullRefreshListView:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    .line 532
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mPullRefreshListView:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    invoke-virtual {v5}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    .line 533
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelector(I)V

    .line 534
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 535
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mPullRefreshListView:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    invoke-virtual {v5}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->onRefreshComplete()V

    .line 537
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$layout;->bz_header_no_review:I

    invoke-virtual {v5, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->header_no_review_ListView:Landroid/view/View;

    .line 539
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->header_no_review_ListView:Landroid/view/View;

    sget v6, Lic/buzzebeeslib/R$idHeaderNoReview;->tvInfo:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 541
    .local v4, "tvInfo":Landroid/widget/TextView;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$layout;->bz_wall_list_footer:I

    invoke-virtual {v5, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->footerListView:Landroid/view/View;

    .line 544
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mPullRefreshListView:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    new-instance v6, Lic/buzzebeeslib/activity/HelpCenterListActivity$5;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$5;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 558
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mPullRefreshListView:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    new-instance v6, Lic/buzzebeeslib/activity/HelpCenterListActivity$6;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$6;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;)V

    .line 565
    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    new-instance v6, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$7;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 645
    return-void
.end method

.method private initialParam()V
    .registers 5

    .prologue
    .line 380
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "campaign"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/Campaign;

    iput-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 382
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-nez v2, :cond_20

    .line 383
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "campaignID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->paramCampaignID:Ljava/lang/String;

    .line 386
    :cond_20
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->strType:Ljava/lang/String;

    .line 387
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->strType:Ljava/lang/String;

    if-nez v2, :cond_34

    .line 388
    const-string v2, ""

    iput-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->strType:Ljava/lang/String;

    .line 391
    :cond_34
    sget v2, Lic/buzzebeeslib/R$id;->contentHeadbar:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 392
    .local v1, "contentHeadbar":Landroid/widget/RelativeLayout;
    sget v2, Lic/buzzebeeslib/R$id;->btnChat:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 406
    .local v0, "btnChat":Landroid/widget/Button;
    const-string v2, "Send"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 407
    return-void
.end method

.method private loadMarketReview(Z)V
    .registers 6
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 726
    iget-boolean v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gLoading:Z

    if-eqz v1, :cond_c

    .line 727
    const-string v1, "buzzebees.MarketReview"

    const-string v2, "loadMarketReview --> can not load, because the current loading is not finish..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :goto_b
    return-void

    .line 729
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gLoading:Z

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/f-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/list?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_7b

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7b

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&lastRowKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v1, v1, Lic/buzzebeeslib/bean/CampaignReview;->RowKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    :cond_7b
    const-string v1, "buzzebees.MarketReview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadMarketReview --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetMarketReviewRequestListener;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Z)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_b
.end method

.method private processLikeAction(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 3
    .param p1, "pTagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    .line 1181
    new-instance v0, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$11;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1204
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 350
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 352
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    iput-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->setLayoutByReview(Z)V

    .line 358
    :try_start_1d
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListState:Landroid/os/Parcelable;

    .line 359
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListPosition:I

    .line 360
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mItemPosition:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_36

    .line 367
    :cond_35
    :goto_35
    return-void

    .line 361
    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method private saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW(Ljava/lang/String;)V
    .registers 15
    .param p1, "pStrComment"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1919
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;

    const-string v2, "private void saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW() {"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 1922
    .local v4, "postFileName":Ljava/lang/String;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1928
    .local v7, "params":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/f-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/buzz?token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1929
    .local v1, "url":Ljava/lang/String;
    const-string v0, "message"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    :try_start_62
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/Sticker;

    .line 1935
    .local v12, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v12, :cond_73

    .line 1936
    const-string v0, "sticker"

    iget-object v2, v12, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_73} :catch_d9

    .line 1942
    .end local v12    # "sticker":Lic/buzzebeeslib/bean/Sticker;
    :cond_73
    :goto_73
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_c0

    .line 1943
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c0

    .line 1945
    :try_start_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_photo.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1946
    .local v10, "fullpath":Ljava/lang/String;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v11, "out":Ljava/io/FileOutputStream;
    const-string v0, "source"

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_a5} :catch_f3
    .catchall {:try_start_7d .. :try_end_a5} :catchall_128

    .line 1952
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c0

    .line 1953
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1954
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1956
    :cond_bc
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 1962
    .end local v10    # "fullpath":Ljava/lang/String;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    :cond_c0
    :goto_c0
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "RequestParams"

    const-string v3, "Market Review"

    const/16 v6, 0x18

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lic/buzzebeeslib/util/PostAsyncUtil;->saveParamsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1964
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;

    new-instance v2, Lic/buzzebeeslib/activity/HelpCenterListActivity$13;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$13;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1976
    return-void

    .line 1938
    :catch_d9
    move-exception v9

    .line 1939
    .local v9, "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while get sticker!:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 1949
    .end local v9    # "ex":Ljava/lang/Exception;
    :catch_f3
    move-exception v8

    .line 1950
    .local v8, "e":Ljava/lang/Exception;
    :try_start_f4
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(Exception|saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW|1):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_f4 .. :try_end_10c} :catchall_128

    .line 1952
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c0

    .line 1953
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 1954
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1956
    :cond_123
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto :goto_c0

    .line 1951
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_128
    move-exception v0

    .line 1952
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_144

    .line 1953
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_140

    .line 1954
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1956
    :cond_140
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v5, v2, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 1958
    :cond_144
    throw v0
.end method

.method private setLayoutByCatch()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 648
    const-string v6, "HelpCenter"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "catch_MarketReview":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 651
    :try_start_13
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 652
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_4e

    move-result v6

    if-lt v3, v6, :cond_23

    .line 671
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_1f
    invoke-direct {p0, v9}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->loadMarketReview(Z)V

    .line 675
    :goto_22
    return-void

    .line 654
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_23
    :try_start_23
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 656
    .local v5, "json_market_review":Lorg/json/JSONObject;
    iget-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    new-instance v7, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-direct {v7, v5}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_31} :catch_34
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_4e

    .line 652
    .end local v5    # "json_market_review":Lorg/json/JSONObject;
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 657
    :catch_34
    move-exception v1

    .line 658
    .local v1, "e":Lorg/json/JSONException;
    :try_start_35
    const-string v6, "buzzebees.MarketReview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(GetMarketReviewRequestListener|onComplete|for|JSONException):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4d} :catch_4e

    goto :goto_31

    .line 661
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_4e
    move-exception v2

    .line 662
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "buzzebees.MarketReview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(initialLayoutByCatch|step1):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 673
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_68
    invoke-direct {p0, v9}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->loadMarketReview(Z)V

    goto :goto_22
.end method

.method private setLayoutByReview(Z)V
    .registers 7
    .param p1, "pLoadMore"    # Z

    .prologue
    const/4 v4, 0x0

    .line 679
    if-eqz p1, :cond_2c

    .line 680
    :try_start_3
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->notifyDataSetChanged()V

    .line 709
    :goto_8
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7a

    .line 710
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentStatus:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 711
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->tvStatus:Landroid/widget/TextView;

    const-string v2, "No data available"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgStatus:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_empty_photo:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 716
    :goto_24
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 721
    :goto_2b
    return-void

    .line 682
    :cond_2c
    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    .line 683
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    if-eqz v1, :cond_73

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3e} :catch_54

    move-result v1

    if-lez v1, :cond_73

    .line 686
    :try_start_41
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v1, :cond_4c

    .line 688
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4c} :catch_82

    .line 694
    :cond_4c
    :goto_4c
    :try_start_4c
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_53} :catch_54

    goto :goto_8

    .line 717
    :catch_54
    move-exception v0

    .line 718
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "buzzebees.MarketReview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error While Load Market Review...:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2b

    .line 697
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_73
    :try_start_73
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_8

    .line 714
    :cond_7a
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentStatus:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_81} :catch_54

    goto :goto_24

    .line 690
    :catch_82
    move-exception v1

    goto :goto_4c
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 1582
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1584
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public deleteMedia(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1029
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v0, :cond_2a

    .line 1030
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    .line 1031
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1032
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1034
    :cond_1c
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v3, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 1036
    :cond_20
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2a

    .line 1037
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v3, v0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 1041
    :cond_2a
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    if-eqz v0, :cond_45

    .line 1042
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1043
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1044
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentMedia:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1046
    :cond_45
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1097
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->finish()V

    .line 1098
    return-void
.end method

.method public doLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 7
    .param p1, "isLike"    # Z
    .param p2, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    .line 1446
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$12;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$12;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    .line 1455
    const-wide/16 v2, 0x64

    .line 1446
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1456
    return-void
.end method

.method public doLikeAnimation(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 1116
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .line 1117
    .local v3, "tagLike":Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    iget-object v5, v3, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-boolean v5, v5, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    if-eqz v5, :cond_37

    const/4 v0, 0x0

    .line 1119
    .local v0, "isLike":Z
    :goto_e
    iget-object v5, v3, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-boolean v5, v5, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    if-nez v5, :cond_39

    .line 1123
    iget-object v1, v3, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->imgLike:Landroid/widget/ImageView;

    .line 1125
    .local v1, "layoutLike":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$anim;->bz_like_review_step_1:I

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1126
    .local v2, "likeClickAnimation1":Landroid/view/animation/Animation;
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1127
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1128
    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1130
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1131
    new-instance v4, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;

    invoke-direct {v4, p0, v3, v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$10;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;ZLandroid/widget/ImageView;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1178
    .end local v1    # "layoutLike":Landroid/widget/ImageView;
    .end local v2    # "likeClickAnimation1":Landroid/view/animation/Animation;
    :goto_36
    return-void

    .end local v0    # "isLike":Z
    :cond_37
    move v0, v4

    .line 1117
    goto :goto_e

    .line 1172
    .restart local v0    # "isLike":Z
    :cond_39
    invoke-direct {p0, v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->processLikeAction(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    .line 1173
    invoke-virtual {p0, v0, v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->doLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    goto :goto_36
.end method

.method public doPost(Landroid/view/View;)V
    .registers 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1774
    const/4 v3, 0x0

    .line 1776
    .local v3, "isHaveDataPost":Z
    iget-object v11, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->etTextMessage:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1783
    .local v9, "stringComment":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1f

    .line 1784
    sget v11, Lic/buzzebeeslib/R$string;->post_require_text:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    .line 1833
    :goto_1e
    return-void

    .line 1788
    :cond_1f
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_26

    .line 1789
    const/4 v3, 0x1

    .line 1792
    :cond_26
    iget-object v11, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lic/buzzebeeslib/bean/Sticker;

    .line 1793
    .local v7, "sticker":Lic/buzzebeeslib/bean/Sticker;
    if-eqz v7, :cond_31

    .line 1794
    const/4 v3, 0x1

    .line 1797
    :cond_31
    const/4 v4, 0x0

    .line 1798
    .local v4, "isHavePicture":Z
    iget-object v11, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v11, :cond_3e

    .line 1799
    iget-object v11, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v11, v11, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_3e

    .line 1800
    const/4 v3, 0x1

    .line 1801
    const/4 v4, 0x1

    .line 1805
    :cond_3e
    new-instance v1, Lic/buzzebeeslib/util/DeviceHelper;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11}, Lic/buzzebeeslib/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1806
    .local v1, "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    invoke-virtual {v1}, Lic/buzzebeeslib/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 1807
    .local v2, "device_id":Ljava/lang/String;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1808
    .local v0, "AndroidVersion":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "samsung"

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "GT-I9100"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1810
    .local v6, "platform":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "UserId= "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lic/buzzebeeslib/LibUserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Name= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Surname= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "IMEI= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "osVersion= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Platform= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1811
    .local v10, "stringData":Ljava/lang/String;
    const v11, 0x103006b

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->setTheme(I)V

    .line 1813
    if-eqz v3, :cond_1b6

    .line 1814
    if-nez v4, :cond_182

    .line 1815
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "api/buzz/f-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lic/buzzebeeslib/LibUserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/buzz?token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1817
    .local v8, "strURL":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1818
    .local v5, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v11, Lic/buzzebeeslib/bean/InputItem;

    const-string v12, "message"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "------------------------"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    if-eqz v7, :cond_168

    .line 1820
    new-instance v11, Lic/buzzebeeslib/bean/InputItem;

    const-string v12, "sticker"

    iget-object v13, v7, Lic/buzzebeeslib/bean/Sticker;->Text:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1823
    :cond_168
    const-string v11, ""

    sget v12, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v12}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v11, v12, v13}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v11

    iput-object v11, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1824
    new-instance v11, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;

    invoke-direct {v11, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V

    const/4 v12, 0x0

    invoke-static {v8, v5, v11, v12}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 1826
    .end local v5    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v8    # "strURL":Ljava/lang/String;
    :cond_182
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "------------------------"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->saveDataForENUM_MODE_PAGE_POST_FROM_MARKET_REVIEW(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1830
    :cond_1b6
    sget v11, Lic/buzzebeeslib/R$string;->post_require:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method public doPostMarketReview(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1106
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/CampaignPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1108
    iget v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->RC_REVIEW_POST:I

    invoke-virtual {p0, v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1112
    return-void
.end method

.method public doRefresh(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->loadMarketReview(Z)V

    .line 1102
    return-void
.end method

.method public doReviewOfReview(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1223
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1224
    .local v2, "position":I
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/CampaignReview;

    .line 1226
    .local v3, "review":Lic/buzzebeeslib/bean/CampaignReview;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1227
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "Campaign"

    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1228
    const-string v4, "MarketReview"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1229
    iget v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->RC_REVIEW_OF_REVIEW:I

    invoke-virtual {p0, v1, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 1233
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "position":I
    .end local v3    # "review":Lic/buzzebeeslib/bean/CampaignReview;
    :goto_2e
    return-void

    .line 1230
    :catch_2f
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(Exception|doReviewOfReview):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public doSeeMore(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1209
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1211
    .local v1, "position":I
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/CampaignReview;

    .line 1213
    .local v2, "review":Lic/buzzebeeslib/bean/CampaignReview;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    .line 1214
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->notifyDataSetChanged()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1218
    .end local v1    # "position":I
    .end local v2    # "review":Lic/buzzebeeslib/bean/CampaignReview;
    :goto_1a
    return-void

    .line 1215
    :catch_1b
    move-exception v0

    .line 1216
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "buzzebees.MarketReview"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|doSeeMore):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public getStatusBarHeight()I
    .registers 7

    .prologue
    .line 1588
    const/4 v1, 0x0

    .line 1589
    .local v1, "result":I
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1590
    .local v0, "resourceId":I
    if-lez v0, :cond_19

    .line 1591
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1593
    :cond_19
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 23
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 806
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 807
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_6f

    move-object/from16 v0, p0

    iget v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->RC_REVIEW_POST:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_6f

    .line 810
    :try_start_10
    const-string v1, "response_text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 812
    .local v17, "response_text":Ljava/lang/String;
    if-eqz v17, :cond_38

    const-string v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 813
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->doRefresh(Landroid/view/View;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_53

    .line 815
    const/16 v16, 0x0

    .line 816
    .local v16, "points":I
    :try_start_2c
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_33} :catch_39
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_53

    .line 819
    .local v14, "jsonRoot":Lorg/json/JSONObject;
    :try_start_33
    const-string v1, "buzzebees"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_267
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_38} :catch_39

    .line 973
    .end local v14    # "jsonRoot":Lorg/json/JSONObject;
    .end local v16    # "points":I
    .end local v17    # "response_text":Ljava/lang/String;
    :cond_38
    :goto_38
    return-void

    .line 851
    .restart local v16    # "points":I
    .restart local v17    # "response_text":Ljava/lang/String;
    :catch_39
    move-exception v11

    .line 852
    .local v11, "e":Lorg/json/JSONException;
    :try_start_3a
    const-string v1, "buzzebees.wall4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "(JSONException|ProcessActionLikeListener|onComplete):"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_52} :catch_53

    goto :goto_38

    .line 855
    .end local v11    # "e":Lorg/json/JSONException;
    .end local v16    # "points":I
    .end local v17    # "response_text":Ljava/lang/String;
    :catch_53
    move-exception v11

    .line 856
    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error while back from review post:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 858
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_6f
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_113

    move-object/from16 v0, p0

    iget v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->RC_REVIEW_OF_REVIEW:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_113

    .line 860
    :try_start_7c
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->TAG:Ljava/lang/String;

    const-string v2, "Back from review of review."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v1, "review"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lic/buzzebeeslib/bean/CampaignReview;

    .line 862
    .local v15, "marketReview":Lic/buzzebeeslib/bean/CampaignReview;
    if-eqz v15, :cond_108

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Found review:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v15, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_aa
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_38

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lic/buzzebeeslib/bean/CampaignReview;

    .line 866
    .local v18, "reviewBinding":Lic/buzzebeeslib/bean/CampaignReview;
    move-object/from16 v0, v18

    iget-object v1, v0, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    iget-object v2, v15, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 867
    iget v1, v15, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    move-object/from16 v0, v18

    iput v1, v0, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    .line 868
    iget v1, v15, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    move-object/from16 v0, v18

    iput v1, v0, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    .line 870
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->TAG:Ljava/lang/String;

    const-string v2, "Swap object..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->notifyDataSetChanged()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_e6} :catch_e8

    goto/16 :goto_38

    .line 879
    .end local v13    # "j":I
    .end local v15    # "marketReview":Lic/buzzebeeslib/bean/CampaignReview;
    .end local v18    # "reviewBinding":Lic/buzzebeeslib/bean/CampaignReview;
    :catch_e8
    move-exception v11

    .line 880
    .restart local v11    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error while back from review of review:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 864
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v13    # "j":I
    .restart local v15    # "marketReview":Lic/buzzebeeslib/bean/CampaignReview;
    .restart local v18    # "reviewBinding":Lic/buzzebeeslib/bean/CampaignReview;
    :cond_105
    add-int/lit8 v13, v13, 0x1

    goto :goto_aa

    .line 877
    .end local v13    # "j":I
    .end local v18    # "reviewBinding":Lic/buzzebeeslib/bean/CampaignReview;
    :cond_108
    :try_start_108
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->TAG:Ljava/lang/String;

    const-string v2, "Not found review!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_111} :catch_e8

    goto/16 :goto_38

    .line 882
    .end local v15    # "marketReview":Lic/buzzebeeslib/bean/CampaignReview;
    :cond_113
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1c1

    const/16 v1, 0xb

    move/from16 v0, p1

    if-ne v0, v1, :cond_1c1

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 885
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    .line 886
    .local v3, "filePathColumn":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, v2, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 887
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 888
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 889
    .local v9, "columnIndex":I
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 890
    .local v12, "filePath":Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 891
    invoke-static {v12}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 892
    .local v8, "bmp":Landroid/graphics/Bitmap;
    if-nez v8, :cond_167

    .line 893
    sget v1, Lic/buzzebeeslib/R$string;->post_check_your_picture:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 896
    :cond_167
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v1, :cond_191

    .line 897
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_191

    .line 898
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 899
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 901
    :cond_18a
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v2, 0x0

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 905
    :cond_191
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v8, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 909
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    if-eqz v1, :cond_1a5

    .line 910
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 912
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentMedia:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 915
    if-eqz v8, :cond_38

    .line 916
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 917
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_38

    .line 923
    .end local v3    # "filePathColumn":[Ljava/lang/String;
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v9    # "columnIndex":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "filePath":Ljava/lang/String;
    :cond_1c1
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_38

    const/16 v1, 0x15

    move/from16 v0, p1

    if-ne v0, v1, :cond_38

    .line 928
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-static {v1}, Lic/buzzebeeslib/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 929
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_23b

    .line 933
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v1, :cond_202

    .line 934
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_202

    .line 935
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1fb

    .line 936
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 938
    :cond_1fb
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v2, 0x0

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 942
    :cond_202
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput-object v7, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 946
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    if-eqz v1, :cond_216

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 949
    :cond_216
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentMedia:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 951
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imgMedia:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 953
    if-eqz v7, :cond_38

    .line 954
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_238

    .line 955
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 957
    :cond_238
    const/4 v7, 0x0

    .line 959
    goto/16 :goto_38

    .line 963
    :cond_23b
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    if-eqz v1, :cond_38

    .line 964
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_38

    .line 965
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_25e

    .line 966
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v1, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 968
    :cond_25e
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/4 v2, 0x0

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    goto/16 :goto_38

    .line 848
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v16    # "points":I
    .restart local v17    # "response_text":Ljava/lang/String;
    :catch_267
    move-exception v1

    goto/16 :goto_38
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1087
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentSticker:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 1088
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentSticker:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1094
    :goto_f
    return-void

    .line 1089
    :cond_10
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentImage:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1090
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->contentImage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_f

    .line 1092
    :cond_1e
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 195
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 196
    if-eqz p1, :cond_10e

    .line 197
    const-string v6, "buzzebees.MarketReview"

    const-string v7, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_d
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->requestWindowFeature(I)Z

    .line 202
    sget v6, Lic/buzzebeeslib/R$layout;->bz_helpcenter_list:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->setContentView(I)V

    .line 208
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 209
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;

    .line 210
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 211
    iget-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v7, "UA-42649771-1"

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 214
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 215
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 217
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_gift"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 219
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 220
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 221
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gScreenHeight:I

    .line 222
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gScreenWidth:I

    .line 224
    iget v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gScreenWidth:I

    .line 225
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gScreenHeight:I

    .line 227
    .local v2, "height":I
    if-le v2, v5, :cond_117

    .end local v2    # "height":I
    :goto_7a
    div-int/lit8 v3, v2, 0x2

    .line 228
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 229
    iget-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 230
    iget-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 231
    iget-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v6, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 234
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 235
    iget-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 236
    new-instance v6, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    invoke-virtual {v6, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    invoke-virtual {v6, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$drawable;->bz_image_profile_fb_m:I

    invoke-virtual {v6, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v6

    new-instance v7, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    invoke-direct {v7, v8}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v6, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 237
    new-instance v6, Lic/buzzebeeslib/util/async/PostData;

    invoke-direct {v6}, Lic/buzzebeeslib/util/async/PostData;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    .line 239
    sget v6, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->tvPageHeader:Landroid/widget/TextView;

    .line 240
    sget v6, Lic/buzzebeeslib/R$id;->ivAddSticker:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->ivAddSticker:Landroid/widget/ImageView;

    .line 241
    iget-object v6, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->ivAddSticker:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    invoke-direct {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->initialParam()V

    .line 244
    invoke-direct {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->initialLayout()V

    .line 245
    return-void

    .line 199
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "longest":I
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "width":I
    :cond_10e
    const-string v6, "buzzebees.MarketReview"

    const-string v7, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "width":I
    :cond_117
    move v2, v5

    .line 227
    goto/16 :goto_7a
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 300
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 301
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 303
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 278
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 279
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 281
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 282
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 284
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 294
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 295
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 344
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 255
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 256
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 259
    new-instance v0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)V

    invoke-static {v0}, Lic/buzzebeeslib/util/async/PostEvents;->addPostListener(Lic/buzzebeeslib/util/async/PostEvents$PostListener;)V

    .line 266
    :try_start_19
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_24

    .line 267
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 268
    :cond_24
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    iget v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListPosition:I

    iget v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mItemPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_31

    .line 272
    :goto_2d
    invoke-direct {p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->setLayoutByCatch()V

    .line 274
    return-void

    .line 269
    :catch_31
    move-exception v0

    goto :goto_2d
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 316
    const-string v2, "buzzebees.MarketReview"

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    const-string v2, "paramCampaign"

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 325
    :try_start_18
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListState:Landroid/os/Parcelable;

    .line 326
    const-string v2, "listState"

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 329
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListPosition:I

    .line 330
    const-string v2, "listPosition"

    iget v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_49

    :goto_3f
    iput v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mItemPosition:I

    .line 335
    const-string v1, "itemPosition"

    iget v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    .end local v0    # "itemView":Landroid/view/View;
    :goto_48
    return-void

    .line 334
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4c} :catch_4e

    move-result v1

    goto :goto_3f

    .line 336
    .end local v0    # "itemView":Landroid/view/View;
    :catch_4e
    move-exception v1

    goto :goto_48
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 249
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 250
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 288
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 289
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method public openGallery(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xc

    .line 1005
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput v3, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 1006
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1007
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1009
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iput v3, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 1010
    return-void
.end method

.method public openImage(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 991
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 992
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->etTextMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 994
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;

    new-instance v2, Lic/buzzebeeslib/activity/HelpCenterListActivity$9;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$9;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V

    .line 1001
    const-wide/16 v4, 0x32

    .line 994
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1002
    return-void
.end method

.method public openSticker(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 976
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 977
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->etTextMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 979
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;

    new-instance v2, Lic/buzzebeeslib/activity/HelpCenterListActivity$8;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$8;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V

    .line 986
    const-wide/16 v4, 0x32

    .line 979
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 988
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$1;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$1;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method

.method public takePicture(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1013
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/16 v2, 0xc

    iput v2, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 1014
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v0, "i":Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gFileUri:Landroid/net/Uri;

    .line 1016
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gFileUri:Landroid/net/Uri;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gFileUri:Landroid/net/Uri;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1017
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gFileUri:Landroid/net/Uri;

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 1018
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    sget-object v2, Lic/buzzebeeslib/activity/HelpCenterListActivity;->mediaFile:Ljava/io/File;

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gMediaFile:Ljava/io/File;

    .line 1019
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    sget-object v2, Lic/buzzebeeslib/activity/HelpCenterListActivity;->path:Ljava/lang/String;

    iput-object v2, v1, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    .line 1020
    const-string v1, "output"

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1021
    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1022
    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;

    const/16 v2, 0xb

    iput v2, v1, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 1026
    :goto_47
    return-void

    .line 1024
    :cond_48
    sget v1, Lic/buzzebeeslib/R$string;->post_check_your_memory_card:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_47
.end method
