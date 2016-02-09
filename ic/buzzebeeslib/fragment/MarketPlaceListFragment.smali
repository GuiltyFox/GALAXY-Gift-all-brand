.class public Lic/buzzebeeslib/fragment/MarketPlaceListFragment;
.super Landroid/support/v4/app/Fragment;
.source "MarketPlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;,
        Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_market"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"

.field private static gContext:Landroid/content/Context;


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final LOGCATLC:Ljava/lang/String;

.field private RC_MARKET_DETAIL:I

.field private booleanCancelRunnable:Z

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

.field private gCampaignViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field private gCurrentFilterCategory:Ljava/lang/String;

.field private gCurrentFilterCenter:Ljava/lang/String;

.field private gCurrentFilterMode:Ljava/lang/String;

.field private gCurrentFilterPlace:Ljava/lang/String;

.field private gCurrentFilterPoints:J

.field private gCurrentFilterSponsor:Ljava/lang/String;

.field private gCurrentFilterTextSearch:Ljava/lang/String;

.field private gDpi:I

.field private gIsHasData:Z

.field private gIsLoadingMore:Z

.field private gLastTimeShowBuyPoint:J

.field private gLayoutBuyPoint:Landroid/widget/RelativeLayout;

.field private gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

.field protected gListNearBy:Landroid/widget/ListView;

.field private final gListPerPage:I

.field private gRunnable:Ljava/lang/Runnable;

.field private gRunnable1:Ljava/lang/Runnable;

.field private gRunnable2:Ljava/lang/Runnable;

.field private gRunnable3:Ljava/lang/Runnable;

.field private gSDK_INT:I

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gSumListPerPage:I

.field private gTabState:I

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mLeak:Landroid/view/View;

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 68
    const-string v0, "buzzebees.marketlist.fragment"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->LOGCAT:Ljava/lang/String;

    .line 69
    const-string v0, "buzzebees.marketlist.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->LOGCATLC:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->RC_MARKET_DETAIL:I

    .line 95
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsHasData:Z

    .line 99
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListPerPage:I

    .line 100
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListState:Landroid/os/Parcelable;

    .line 110
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListPosition:I

    .line 111
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mItemPosition:I

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLastTimeShowBuyPoint:J

    .line 121
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSDK_INT:I

    .line 125
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->booleanCancelRunnable:Z

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mHandler:Landroid/os/Handler;

    .line 133
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "pTabState"    # I
    .param p2, "pTextSearch"    # Ljava/lang/String;
    .param p3, "pFilter_category_id"    # Ljava/lang/String;
    .param p4, "pFilter_points"    # J
    .param p6, "pFilter_center"    # Ljava/lang/String;
    .param p7, "pFilter_mode"    # Ljava/lang/String;
    .param p8, "pFilter_sponsor"    # Ljava/lang/String;
    .param p9, "pFilter_location"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 68
    const-string v0, "buzzebees.marketlist.fragment"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->LOGCAT:Ljava/lang/String;

    .line 69
    const-string v0, "buzzebees.marketlist.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->LOGCATLC:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->RC_MARKET_DETAIL:I

    .line 95
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsHasData:Z

    .line 99
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListPerPage:I

    .line 100
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListState:Landroid/os/Parcelable;

    .line 110
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListPosition:I

    .line 111
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mItemPosition:I

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLastTimeShowBuyPoint:J

    .line 121
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSDK_INT:I

    .line 125
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->booleanCancelRunnable:Z

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mHandler:Landroid/os/Handler;

    .line 137
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I

    .line 138
    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 140
    iput-wide p4, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    .line 141
    iput-object p6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 142
    iput-object p7, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 143
    iput-object p8, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 144
    iput-object p9, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private ProcessJsonCampaign(Ljava/lang/String;)V
    .registers 4
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 881
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 882
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$6;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 960
    :cond_1c
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->ProcessJsonCampaign(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 756
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getCache_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$11(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    return-wide v0
.end method

.method static synthetic access$14(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 772
    invoke-direct/range {p0 .. p8}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$20(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)J
    .registers 3

    .prologue
    .line 113
    iget-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLastTimeShowBuyPoint:J

    return-wide v0
.end method

.method static synthetic access$21()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 1417
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->inFromTopAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;J)V
    .registers 3

    .prologue
    .line 113
    iput-wide p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLastTimeShowBuyPoint:J

    return-void
.end method

.method static synthetic access$23()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 1424
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->outToTopAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$25(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsHasData:Z

    return v0
.end method

.method static synthetic access$26(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$27(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Landroid/view/View;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$29(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListState:Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->booleanCancelRunnable:Z

    return v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;I)V
    .registers 2

    .prologue
    .line 110
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListPosition:I

    return-void
.end method

.method static synthetic access$31(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;I)V
    .registers 2

    .prologue
    .line 111
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mItemPosition:I

    return-void
.end method

.method static synthetic access$32(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

    return-object v0
.end method

.method static synthetic access$33()Landroid/content/Context;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$34(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->RC_MARKET_DETAIL:I

    return v0
.end method

.method static synthetic access$35(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Z
    .registers 2

    .prologue
    .line 730
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->get_all()Z

    move-result v0

    return v0
.end method

.method static synthetic access$36(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I

    return v0
.end method

.method static synthetic access$37(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    return v0
.end method

.method static synthetic access$38(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Z)V
    .registers 2

    .prologue
    .line 96
    iput-boolean p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsHasData:Z

    return-void
.end method

.method static synthetic access$39(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSDK_INT:I

    return v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Z)V
    .registers 2

    .prologue
    .line 95
    iput-boolean p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    return-void
.end method

.method static synthetic access$40(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)V
    .registers 1

    .prologue
    .line 962
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->setCampaignUI()V

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable2:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gDpi:I

    return v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$9(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;I)V
    .registers 2

    .prologue
    .line 100
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    return-void
.end method

.method private getCache_name()Ljava/lang/String;
    .registers 4

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "cache_name":Ljava/lang/String;
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 759
    const-string v0, "market_free"

    .line 769
    :goto_8
    return-object v0

    .line 760
    :cond_9
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 761
    const-string v0, "market_draw"

    .line 762
    goto :goto_8

    :cond_11
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 763
    const-string v0, "market_deal"

    .line 764
    goto :goto_8

    :cond_19
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    .line 765
    const-string v0, "market_all"

    .line 766
    goto :goto_8

    .line 767
    :cond_21
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private get_all()Z
    .registers 6

    .prologue
    .line 731
    const/4 v0, 0x1

    .line 732
    .local v0, "isAll":Z
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 733
    const/4 v0, 0x0

    .line 735
    :cond_c
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 736
    const/4 v0, 0x0

    .line 738
    :cond_17
    iget-wide v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_20

    .line 739
    const/4 v0, 0x0

    .line 741
    :cond_20
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 742
    const/4 v0, 0x0

    .line 744
    :cond_2b
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 745
    const/4 v0, 0x0

    .line 747
    :cond_36
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 748
    const/4 v0, 0x0

    .line 750
    :cond_45
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    if-lez v1, :cond_4a

    .line 751
    const/4 v0, 0x0

    .line 753
    :cond_4a
    return v0
.end method

.method private static inFromTopAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1418
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1419
    .local v0, "inFromTop":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1420
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1421
    return-object v0
.end method

.method private loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "TextSearch"    # Ljava/lang/String;
    .param p2, "filter_category_id"    # Ljava/lang/String;
    .param p3, "filter_points"    # J
    .param p5, "filter_center"    # Ljava/lang/String;
    .param p6, "filter_mode"    # Ljava/lang/String;
    .param p7, "filter_sponsor"    # Ljava/lang/String;
    .param p8, "filter_location"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 774
    iget-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    if-eqz v2, :cond_c

    .line 775
    const-string v2, "buzzebees.marketlist.fragment"

    const-string v3, "loadCampaign --> can not load, because the current loading is not finish..."

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_c
    iput-boolean v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    .line 780
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadCampaign : gTabState"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gCurrentFilterMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/campaign?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gContext:Landroid/content/Context;

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sponsorId=0&format=json&type=list2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "url":Ljava/lang/String;
    const/4 v0, 0x1

    .line 786
    .local v0, "isAll":Z
    const-string v2, ""

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 791
    :cond_75
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 793
    const/4 v0, 0x0

    .line 796
    :cond_95
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&cat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 798
    const/4 v0, 0x0

    .line 801
    :cond_b5
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_d3

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&min_point="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    const/4 v0, 0x0

    .line 806
    :cond_d3
    const-string v2, ""

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f3

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&center="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 808
    const/4 v0, 0x0

    .line 811
    :cond_f3
    const-string v2, ""

    invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_113

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 813
    const/4 v0, 0x0

    .line 816
    :cond_113
    if-eqz p8, :cond_135

    const-string v2, ""

    invoke-virtual {p8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_135

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 818
    const/4 v0, 0x0

    .line 821
    :cond_135
    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    if-lez v2, :cond_13a

    .line 822
    const/4 v0, 0x0

    .line 825
    :cond_13a
    iput-boolean v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    .line 827
    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    if-eqz v2, :cond_159

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&$skip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 833
    :cond_159
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$GetCampaignListener;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Z)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 835
    return-void
.end method

.method private static outToTopAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1425
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1426
    .local v0, "outToTop":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1427
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1428
    return-object v0
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 686
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 688
    const-string v0, "gCampaignViews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 690
    const-string v0, "gCurrentFilterTextSearch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 691
    const-string v0, "gCurrentFilterCategory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 692
    const-string v0, "gCurrentFilterPoints"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    .line 693
    const-string v0, "gCurrentFilterCenter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 694
    const-string v0, "gCurrentFilterMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 695
    const-string v0, "gCurrentFilterSponsor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 696
    const-string v0, "gCurrentFilterPlace"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 698
    const-string v0, "gIsLoadingMore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    .line 699
    const-string v0, "gIsHasData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsHasData:Z

    .line 701
    const-string v0, "gSumListPerPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    .line 705
    :try_start_62
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListState:Landroid/os/Parcelable;

    .line 706
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListPosition:I

    .line 707
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mItemPosition:I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7a} :catch_7b

    .line 716
    :cond_7a
    :goto_7a
    return-void

    .line 708
    :catch_7b
    move-exception v0

    goto :goto_7a
.end method

.method private setCampaignUI()V
    .registers 4

    .prologue
    .line 964
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

    if-nez v0, :cond_78

    .line 965
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "setCampaignUI | gAdapter == null"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

    .line 970
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_71

    .line 972
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 983
    :goto_2d
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mListPosition="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mItemPosition="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mItemPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_64

    .line 988
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 989
    :cond_64
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListPosition:I

    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mItemPosition:I

    invoke-virtual {v0, v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setSelectionFromTop(II)V

    .line 991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    .line 992
    return-void

    .line 974
    :cond_71
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2d

    .line 977
    :cond_78
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "setCampaignUI | gAdapter != null"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->notifyDataSetChanged()V

    .line 980
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->refreshDrawableState()V

    goto :goto_2d
.end method


# virtual methods
.method public UpdatePoint(J)V
    .registers 9
    .param p1, "points"    # J

    .prologue
    .line 1378
    const-string v3, "buzzebees.marketlist.fragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "public void UpdatePoint("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :try_start_1a
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 1382
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MarketPlaceMainFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1386
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1387
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const-string v3, "MarketPlaceMainFragment"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    .line 1388
    .local v2, "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-virtual {v2, p1, p2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->updatePoint(J)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_47} :catch_48

    .line 1395
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    :cond_47
    :goto_47
    return-void

    .line 1392
    :catch_48
    move-exception v0

    .line 1393
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "buzzebees.marketlist.fragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|playPointsAndBadge):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method public doFilterAll()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1068
    const-string v0, "all"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1069
    iput v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 1073
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doFilterAll |gCurrentFilterTextSearch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_49

    .line 1077
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    :cond_49
    return-void
.end method

.method public doFilterDeal()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1055
    const-string v0, "deal"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1056
    iput v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    .line 1057
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 1060
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "doFilterDeal"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_3a

    .line 1063
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    :cond_3a
    return-void
.end method

.method public doFilterDraw()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1043
    const-string v0, "draw"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1044
    iput v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 1048
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_33

    .line 1050
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    :cond_33
    return-void
.end method

.method public doFilterFree()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1024
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "before reset data "

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v0, "free_ads"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1027
    iput v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    .line 1028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 1032
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "done reset data "

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_41

    .line 1037
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    :cond_41
    return-void
.end method

.method public doRefresh()V
    .registers 10

    .prologue
    .line 995
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "doRefresh"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$7;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$7;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)V

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable3:Ljava/lang/Runnable;

    .line 1005
    const-wide/16 v2, 0x3e8

    .line 998
    invoke-virtual {v0, v1, v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1006
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 239
    if-eqz p1, :cond_8

    .line 242
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 245
    :cond_8
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnRefreshListener(Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;)V

    .line 260
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$2;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 381
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$3;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 406
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$4;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$4;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$5;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Landroid/os/Bundle;)V

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable1:Ljava/lang/Runnable;

    .line 500
    const-wide/16 v2, 0x64

    .line 416
    invoke-virtual {v0, v1, v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 501
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 720
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 721
    const/4 v0, -0x1

    if-ne p2, v0, :cond_13

    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->RC_MARKET_DETAIL:I

    if-ne p1, v0, :cond_13

    .line 722
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

    if-eqz v0, :cond_13

    .line 723
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;->notifyDataSetChanged()V

    .line 728
    :cond_13
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 157
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    iput-boolean v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->booleanCancelRunnable:Z

    .line 171
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->setRetainInstance(Z)V

    .line 174
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 177
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 180
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_market"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 182
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 183
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 184
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gScreenHeight:I

    .line 185
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gScreenWidth:I

    .line 187
    iget v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gScreenWidth:I

    .line 188
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gScreenHeight:I

    .line 190
    .local v2, "height":I
    if-le v2, v5, :cond_92

    .end local v2    # "height":I
    :goto_67
    div-int/lit8 v3, v2, 0x2

    .line 191
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 192
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 193
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 194
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v6, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 196
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_92
    move v2, v5

    .line 190
    goto :goto_67
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gContext:Landroid/content/Context;

    .line 209
    sget v0, Lic/buzzebeeslib/R$layout;->bz_market_place_fragment_list:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mLeak:Landroid/view/View;

    .line 211
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$idMarketPlace3PullToRefresh;->pull_refresh_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/PullToRefreshListView;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    .line 212
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$idMarketPlace3PullToRefresh;->layoutBuyPoint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;

    .line 214
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$layout;->bz_list_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;

    .line 217
    :try_start_38
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_47

    .line 218
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->addFooterView(Landroid/view/View;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_47} :catch_4a

    .line 224
    :cond_47
    :goto_47
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mLeak:Landroid/view/View;

    return-object v0

    .line 220
    :catch_4a
    move-exception v0

    goto :goto_47
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 571
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 575
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 579
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 581
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceListFragment$MarketPlace3Adapter;

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 583
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    .line 584
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLayoutBuyPoint:Landroid/widget/RelativeLayout;

    .line 586
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mHandler:Landroid/os/Handler;

    .line 588
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListNearBy:Landroid/widget/ListView;

    .line 590
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->footerListView:Landroid/view/View;

    .line 592
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 593
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 594
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    .line 595
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 598
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 600
    iput-boolean v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsHasData:Z

    .line 603
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable:Ljava/lang/Runnable;

    .line 604
    iput v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    .line 606
    iput v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gTabState:I

    .line 608
    sput-object v2, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gContext:Landroid/content/Context;

    .line 610
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListState:Landroid/os/Parcelable;

    .line 611
    iput v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListPosition:I

    .line 612
    iput v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mItemPosition:I

    .line 614
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gLastTimeShowBuyPoint:J

    .line 616
    iput v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gScreenWidth:I

    .line 617
    iput v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gScreenHeight:I

    .line 618
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 550
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->booleanCancelRunnable:Z

    .line 553
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 554
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 555
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gRunnable3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 560
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 561
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/support/v4/app/Fragment;I)V

    .line 563
    :cond_26
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mLeak:Landroid/view/View;

    .line 567
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 622
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 626
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 529
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 534
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 535
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 537
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 538
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 513
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 518
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 520
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSDK_INT:I

    .line 522
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 523
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 524
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gDpi:I

    .line 525
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 642
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    const-string v2, "gCampaignViews"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCampaignViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 646
    const-string v2, "gCurrentFilterTextSearch"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v2, "gCurrentFilterCategory"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCategory:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v2, "gCurrentFilterPoints"

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPoints:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 649
    const-string v2, "gCurrentFilterCenter"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterCenter:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v2, "gCurrentFilterMode"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterMode:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v2, "gCurrentFilterSponsor"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v2, "gCurrentFilterPlace"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gCurrentFilterPlace:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v2, "gIsLoadingMore"

    iget-boolean v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsLoadingMore:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 655
    const-string v2, "gIsHasData"

    iget-boolean v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gIsHasData:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 657
    const-string v2, "gSumListPerPage"

    iget v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gSumListPerPage:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 661
    :try_start_57
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListState:Landroid/os/Parcelable;

    .line 662
    const-string v2, "listState"

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 665
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListPosition:I

    .line 666
    const-string v2, "listPosition"

    iget v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 670
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_88

    :goto_7e
    iput v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mItemPosition:I

    .line 671
    const-string v1, "itemPosition"

    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 675
    .end local v0    # "itemView":Landroid/view/View;
    :goto_87
    return-void

    .line 670
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_88
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_8b} :catch_8d

    move-result v1

    goto :goto_7e

    .line 672
    .end local v0    # "itemView":Landroid/view/View;
    :catch_8d
    move-exception v1

    goto :goto_87
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 505
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 509
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 542
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 546
    return-void
.end method

.method public playPointsAndBadge()V
    .registers 7

    .prologue
    .line 1398
    const-string v3, "buzzebees.marketlist.fragment"

    const-string v4, "private void playPointsAndBadge() {"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    :try_start_7
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 1402
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MarketPlaceMainFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1407
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1408
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const-string v3, "MarketPlaceMainFragment"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    .line 1409
    .local v2, "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->playPointsAndBadge()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_34} :catch_35

    .line 1415
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    :cond_34
    :goto_34
    return-void

    .line 1412
    :catch_35
    move-exception v0

    .line 1413
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "buzzebees.marketlist.fragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|playPointsAndBadge):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1009
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1010
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$8;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceListFragment$8;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1018
    :cond_1a
    return-void
.end method
