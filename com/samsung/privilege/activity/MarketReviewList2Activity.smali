.class public Lcom/samsung/privilege/activity/MarketReviewList2Activity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;,
        Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetCampaignListener;,
        Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;,
        Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;,
        Lcom/samsung/privilege/activity/MarketReviewList2Activity$ProcessActionLikeListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_gift"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private RC_PERMISSIONS_WALL:I

.field private RC_REVIEW_POST:I

.field private TAG:Ljava/lang/String;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

.field private gHandler:Landroid/os/Handler;

.field private gIsHaveMoreData:Z

.field private gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

.field private gLoading:Z

.field private gMarketReviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/MarketReview;",
            ">;"
        }
    .end annotation
.end field

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private header_no_review_ListView:Landroid/view/View;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;

.field private paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

.field private paramCampaignID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 64
    const-string v0, "MarketReviewList2Activity"

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->LOGCAT:Ljava/lang/String;

    .line 65
    const-class v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    .line 81
    const/16 v0, 0x21

    iput v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->RC_PERMISSIONS_WALL:I

    .line 84
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->RC_REVIEW_POST:I

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    .line 220
    iput v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListPosition:I

    .line 221
    iput v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mItemPosition:I

    .line 467
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gLoading:Z

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)V
    .registers 1

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->setLayoutByCatch()V

    return-void
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 2

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V

    return-void
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    return-void
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Z
    .registers 2

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gLoading:Z

    return v0
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gIsHaveMoreData:Z

    return v0
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Z)V
    .registers 2

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->loadMarketReview(Z)V

    return-void
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/MarketReviewList2Activity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 3

    .prologue
    .line 1050
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->actionLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Z)V
    .registers 2

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gIsHaveMoreData:Z

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Z)V
    .registers 2

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->setLayoutByReview(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/samsung/privilege/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Z)V
    .registers 2

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gLoading:Z

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private actionLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 8
    .param p1, "isLike"    # Z
    .param p2, "tagLike"    # Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .prologue
    const/4 v4, 0x0

    .line 1051
    if-eqz p1, :cond_71

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/like?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1054
    const-string v1, "POINTS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=blue>RQ(LikeMarketReview,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1056
    :cond_68
    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$ProcessActionLikeListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$ProcessActionLikeListener;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    invoke-static {v0, v4, v1, v4}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 1064
    :goto_70
    return-void

    .line 1058
    .end local v0    # "url":Ljava/lang/String;
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/like?method=delete&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1059
    .restart local v0    # "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 1060
    const-string v1, "POINTS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=blue>RQ(UnLikeMarketReview,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1062
    :cond_d6
    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$ProcessActionLikeListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$ProcessActionLikeListener;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    invoke-static {v0, v4, v1, v4}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_70
.end method

.method private getCampaign(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetCampaignListener;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetCampaignListener;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method private initialLayout()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 326
    const v4, 0x7f30000f

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 328
    .local v2, "tvHeaderCaption":Landroid/widget/TextView;
    if-eqz v2, :cond_2a

    .line 329
    :try_start_c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 330
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 331
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_97

    .line 337
    .end local v0    # "font":Landroid/graphics/Typeface;
    :cond_2a
    :goto_2a
    iget-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    if-eqz v4, :cond_35

    .line 338
    iget-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_35
    const v4, 0x7f300006

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/control/PullToRefreshListView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    .line 343
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300ed

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    .line 345
    iget-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    const/high16 v5, 0x7f200000

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 346
    .local v3, "tvInfo":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 347
    .local v1, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 348
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 350
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030122

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->footerListView:Landroid/view/View;

    .line 353
    iget-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v5, Lcom/samsung/privilege/activity/MarketReviewList2Activity$2;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$2;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setOnRefreshListener(Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;)V

    .line 359
    iget-object v4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v5, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$3;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 395
    return-void

    .line 333
    .end local v1    # "tf":Landroid/graphics/Typeface;
    .end local v3    # "tvInfo":Landroid/widget/TextView;
    :catch_97
    move-exception v4

    goto :goto_2a
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 291
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    if-nez v0, :cond_20

    .line 292
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "campaignID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaignID:Ljava/lang/String;

    .line 294
    :cond_20
    return-void
.end method

.method private loadMarketReview(Z)V
    .registers 6
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 470
    iget-boolean v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gLoading:Z

    if-eqz v1, :cond_c

    .line 471
    const-string v1, "buzzebees.MarketReview"

    const-string v2, "loadMarketReview --> can not load, because the current loading is not finish..."

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_b
    return-void

    .line 473
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gLoading:Z

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/buzz?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_77

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_77

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&lastRowKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MarketReview;

    iget-object v1, v1, Lcom/samsung/privilege/bean/MarketReview;->RowKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    :cond_77
    const-string v1, "buzzebees.MarketReview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadMarketReview --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetMarketReviewRequestListener;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Z)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_b
.end method

.method private processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 3
    .param p1, "pTagLike"    # Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .prologue
    .line 684
    new-instance v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 709
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 262
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->setLayoutByReview(Z)V

    .line 268
    :try_start_1d
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    .line 269
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListPosition:I

    .line 270
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mItemPosition:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_36

    .line 277
    :cond_35
    :goto_35
    return-void

    .line 271
    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method private setLayoutByCatch()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MarketReview_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "catch_MarketReview":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    .line 401
    :try_start_24
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 402
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_5f

    move-result v6

    if-lt v3, v6, :cond_34

    .line 421
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_30
    invoke-direct {p0, v9}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->loadMarketReview(Z)V

    .line 425
    :goto_33
    return-void

    .line 404
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_34
    :try_start_34
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 406
    .local v5, "json_market_review":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/privilege/bean/MarketReview;

    invoke-direct {v7, v5}, Lcom/samsung/privilege/bean/MarketReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_42} :catch_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_42} :catch_5f

    .line 402
    .end local v5    # "json_market_review":Lorg/json/JSONObject;
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 407
    :catch_45
    move-exception v1

    .line 408
    .local v1, "e":Lorg/json/JSONException;
    :try_start_46
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

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5e} :catch_5f

    goto :goto_42

    .line 411
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_5f
    move-exception v2

    .line 412
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

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 423
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_79
    invoke-direct {p0, v9}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->loadMarketReview(Z)V

    goto :goto_33
.end method

.method private setLayoutByReview(Z)V
    .registers 7
    .param p1, "pLoadMore"    # Z

    .prologue
    const/4 v4, 0x0

    .line 429
    if-eqz p1, :cond_10

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->notifyDataSetChanged()V

    .line 460
    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->footerListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 465
    :goto_f
    return-void

    .line 432
    :cond_10
    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    .line 433
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_38

    move-result v1

    if-lez v1, :cond_57

    .line 436
    :try_start_25
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v1, :cond_30

    .line 438
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_6b

    .line 444
    :cond_30
    :goto_30
    :try_start_30
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_8

    .line 461
    :catch_38
    move-exception v0

    .line 462
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

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v1, v4}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_f

    .line 447
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_57
    :try_start_57
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_38

    .line 450
    :try_start_5d
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 452
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_8

    .line 454
    :catch_69
    move-exception v1

    goto :goto_8

    .line 440
    :catch_6b
    move-exception v1

    goto :goto_30
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->finish()V

    .line 602
    return-void
.end method

.method public doLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 7
    .param p1, "isLike"    # Z
    .param p2, "tagLike"    # Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$6;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    .line 1047
    const-wide/16 v2, 0x64

    .line 1038
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1048
    return-void
.end method

.method public doLikeAnimation(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 619
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 620
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .line 621
    .local v3, "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    iget-object v5, v3, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v5, v5, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-eqz v5, :cond_48

    const/4 v0, 0x0

    .line 623
    .local v0, "isLike":Z
    :goto_1e
    iget-object v5, v3, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v5, v5, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-nez v5, :cond_4a

    .line 626
    iget-object v1, v3, Lcom/samsung/privilege/bean/TagLikeMarketReview;->layoutLike:Landroid/widget/RelativeLayout;

    .line 628
    .local v1, "layoutLike":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f040011

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 629
    .local v2, "likeClickAnimation1":Landroid/view/animation/Animation;
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 630
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 631
    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 633
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 634
    new-instance v4, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;

    invoke-direct {v4, p0, v3, v0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/bean/TagLikeMarketReview;ZLandroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 681
    .end local v0    # "isLike":Z
    .end local v1    # "layoutLike":Landroid/widget/RelativeLayout;
    .end local v2    # "likeClickAnimation1":Landroid/view/animation/Animation;
    .end local v3    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    :goto_47
    return-void

    .restart local v3    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    :cond_48
    move v0, v4

    .line 621
    goto :goto_1e

    .line 675
    .restart local v0    # "isLike":Z
    :cond_4a
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V

    .line 676
    invoke-virtual {p0, v0, v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->doLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    goto :goto_47

    .line 679
    .end local v0    # "isLike":Z
    .end local v3    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    :cond_51
    const v4, 0x7f0a0302

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_47
.end method

.method public doPostMarketReview(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 609
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 610
    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 612
    iget v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->RC_REVIEW_POST:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 616
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_27
    return-void

    .line 614
    :cond_28
    const v1, 0x7f0a0302

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public doRefresh(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->loadMarketReview(Z)V

    .line 606
    return-void
.end method

.method public doSeeMore(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 722
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 724
    .local v1, "position":I
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/bean/MarketReview;

    .line 726
    .local v2, "review":Lcom/samsung/privilege/bean/MarketReview;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    .line 727
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->notifyDataSetChanged()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 731
    .end local v1    # "position":I
    .end local v2    # "review":Lcom/samsung/privilege/bean/MarketReview;
    :goto_1a
    return-void

    .line 728
    :catch_1b
    move-exception v0

    .line 729
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

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 550
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 551
    const/4 v8, -0x1

    if-ne p2, v8, :cond_55

    iget v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->RC_REVIEW_POST:I

    if-ne p1, v8, :cond_55

    .line 554
    :try_start_a
    const-string v8, "response_text"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, "response_text":Ljava/lang/String;
    if-eqz v6, :cond_55

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55

    .line 557
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->doRefresh(Landroid/view/View;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_70

    .line 559
    const/4 v4, 0x0

    .line 560
    .local v4, "points":I
    :try_start_1f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_24} :catch_56
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_70

    .line 563
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    :try_start_24
    const-string v8, "buzzebees"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_8a
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_29} :catch_56

    move-result-object v2

    .line 566
    .local v2, "json_buzzebees":Lorg/json/JSONObject;
    :try_start_2a
    const-string v8, "points"

    invoke-static {v2, v8}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 567
    if-lez v4, :cond_42

    .line 568
    sget-object v8, Lcom/samsung/privilege/AppSetting;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 569
    const-string v7, "comment"

    .line 570
    .local v7, "strFrom":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;

    invoke-static {v4, v7, v8, p0}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_42} :catch_8e
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_42} :catch_56

    .line 579
    .end local v7    # "strFrom":Ljava/lang/String;
    :cond_42
    :goto_42
    :try_start_42
    const-string v8, "new_user_rank"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 580
    .local v3, "json_user_rank":Lorg/json/JSONObject;
    const-string v8, "rank"

    invoke-static {v3, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, "rank":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/samsung/privilege/UserLogin;->SetRank(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_55} :catch_8c
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_55} :catch_56

    .line 598
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v3    # "json_user_rank":Lorg/json/JSONObject;
    .end local v4    # "points":I
    .end local v5    # "rank":Ljava/lang/String;
    .end local v6    # "response_text":Ljava/lang/String;
    :cond_55
    :goto_55
    return-void

    .line 590
    .restart local v4    # "points":I
    .restart local v6    # "response_text":Ljava/lang/String;
    :catch_56
    move-exception v0

    .line 591
    .local v0, "e":Lorg/json/JSONException;
    :try_start_57
    const-string v8, "buzzebees.wall4"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(JSONException|ProcessActionLikeListener|onComplete):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6f} :catch_70

    goto :goto_55

    .line 594
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "points":I
    .end local v6    # "response_text":Ljava/lang/String;
    :catch_70
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "MarketReviewList2Activity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error while back from review post:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 587
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v4    # "points":I
    .restart local v6    # "response_text":Ljava/lang/String;
    :catch_8a
    move-exception v8

    goto :goto_55

    .line 582
    .restart local v2    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_8c
    move-exception v8

    goto :goto_55

    .line 573
    :catch_8e
    move-exception v8

    goto :goto_42
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_d2

    .line 95
    const-string v8, "buzzebees.MarketReview"

    const-string v9, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_c
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->requestWindowFeature(I)Z

    .line 100
    const v8, 0x7f0300fc

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->setContentView(I)V

    .line 102
    const v8, 0x7f070031

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 103
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "768830479847872"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 104
    const v8, 0x7f0202b6

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :goto_35
    const v8, 0x7f30000e

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 114
    .local v4, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_113

    .line 115
    const v8, 0x7f0202ba

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    :goto_4e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 121
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;

    .line 124
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 125
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "cache_gift"

    invoke-direct {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3e800000

    invoke-virtual {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 129
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gScreenHeight:I

    .line 132
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gScreenWidth:I

    .line 134
    iget v7, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gScreenWidth:I

    .line 135
    .local v7, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gScreenHeight:I

    .line 137
    .local v2, "height":I
    if-le v2, v7, :cond_11b

    .end local v2    # "height":I
    :goto_9e
    div-int/lit8 v5, v2, 0x2

    .line 138
    .local v5, "longest":I
    new-instance v8, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 139
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v9, 0x7f02039f

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 140
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 141
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 144
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->initialParam()V

    .line 145
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->initialLayout()V

    .line 147
    if-nez p1, :cond_123

    .line 148
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    if-eqz v8, :cond_11d

    .line 149
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->setLayoutByCatch()V

    .line 156
    :goto_d1
    return-void

    .line 97
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "imgFlag":Landroid/widget/ImageView;
    .end local v4    # "imgLogo":Landroid/widget/ImageView;
    .end local v5    # "longest":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "width":I
    :cond_d2
    const-string v8, "buzzebees.MarketReview"

    const-string v9, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 105
    .restart local v3    # "imgFlag":Landroid/widget/ImageView;
    :cond_db
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1525635597652592"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f3

    .line 106
    const v8, 0x7f0202b5

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_35

    .line 107
    :cond_f3
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "517155661760483"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10b

    .line 108
    const v8, 0x7f0202b7

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_35

    .line 110
    :cond_10b
    const v8, 0x7f0202b8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_35

    .line 117
    .restart local v4    # "imgLogo":Landroid/widget/ImageView;
    :cond_113
    const v8, 0x7f0202b9

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4e

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "width":I
    :cond_11b
    move v2, v7

    .line 137
    goto :goto_9e

    .line 151
    .end local v2    # "height":I
    .restart local v5    # "longest":I
    :cond_11d
    iget-object v8, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaignID:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getCampaign(Ljava/lang/String;)V

    goto :goto_d1

    .line 154
    :cond_123
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_d1
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 210
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 211
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 213
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 190
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 193
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 194
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 204
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 205
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 254
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 167
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 170
    new-instance v0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)V

    invoke-static {v0}, Lcom/facebook/android/PostEvents;->addPostListener(Lcom/facebook/android/PostEvents$PostListener;)V

    .line 177
    :try_start_19
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_24

    .line 178
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 179
    :cond_24
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListPosition:I

    iget v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mItemPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->setSelectionFromTop(II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_3d

    .line 184
    :goto_2d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    return-void

    .line 180
    :catch_3d
    move-exception v0

    goto :goto_2d
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    const-string v2, "buzzebees.MarketReview"

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    const-string v2, "paramCampaign"

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 235
    :try_start_18
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    .line 236
    const-string v2, "listState"

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListPosition:I

    .line 240
    const-string v2, "listPosition"

    iget v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_49

    :goto_3f
    iput v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mItemPosition:I

    .line 245
    const-string v1, "itemPosition"

    iget v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    .end local v0    # "itemView":Landroid/view/View;
    :goto_48
    return-void

    .line 244
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4c} :catch_4e

    move-result v1

    goto :goto_3f

    .line 246
    .end local v0    # "itemView":Landroid/view/View;
    :catch_4e
    move-exception v1

    goto :goto_48
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 160
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 161
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 199
    const-string v0, "buzzebees.MarketReview"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    return-void
.end method
