.class public Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
.super Landroid/support/v4/app/Fragment;
.source "MarketPlaceList2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;,
        Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;
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

.field private gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

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

.field private gContentFilter:Landroid/widget/LinearLayout;

.field private gContentFooter:Landroid/widget/LinearLayout;

.field private gCurrentFilterCategory:Ljava/lang/String;

.field private gCurrentFilterCenter:Ljava/lang/String;

.field private gCurrentFilterMode:Ljava/lang/String;

.field private gCurrentFilterPlace:Ljava/lang/String;

.field private gCurrentFilterPoints:J

.field private gCurrentFilterSponsor:Ljava/lang/String;

.field private gCurrentFilterTextSearch:Ljava/lang/String;

.field private gDpi:I

.field private gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

.field private gIsHasData:Z

.field private gIsLoadingMore:Z

.field private gLastTimeShowBuyPoint:J

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

.field private mIsPlayingAnimation:Z

.field private mItemPosition:I

.field private mLeak:Landroid/view/View;

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;

.field private myLastVisiblePos:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    const-string v0, "buzzebees.marketlist.fragment"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->LOGCAT:Ljava/lang/String;

    .line 70
    const-string v0, "buzzebees.marketlist.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->LOGCATLC:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->RC_MARKET_DETAIL:I

    .line 95
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsHasData:Z

    .line 99
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gListPerPage:I

    .line 100
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mListState:Landroid/os/Parcelable;

    .line 110
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mListPosition:I

    .line 111
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mItemPosition:I

    .line 114
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mIsPlayingAnimation:Z

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gLastTimeShowBuyPoint:J

    .line 124
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSDK_INT:I

    .line 128
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->booleanCancelRunnable:Z

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mHandler:Landroid/os/Handler;

    .line 136
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

    .line 138
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    const-string v0, "buzzebees.marketlist.fragment"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->LOGCAT:Ljava/lang/String;

    .line 70
    const-string v0, "buzzebees.marketlist.fragment.lc"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->LOGCATLC:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->RC_MARKET_DETAIL:I

    .line 95
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsHasData:Z

    .line 99
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gListPerPage:I

    .line 100
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mListState:Landroid/os/Parcelable;

    .line 110
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mListPosition:I

    .line 111
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mItemPosition:I

    .line 114
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mIsPlayingAnimation:Z

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gLastTimeShowBuyPoint:J

    .line 124
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSDK_INT:I

    .line 128
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->booleanCancelRunnable:Z

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mHandler:Landroid/os/Handler;

    .line 140
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I

    .line 141
    iput-object p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 143
    iput-wide p4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    .line 144
    iput-object p6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 145
    iput-object p7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 146
    iput-object p8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 147
    iput-object p9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 148
    return-void
.end method

.method private ProcessJsonCampaign(Ljava/lang/String;)V
    .registers 4
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 907
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 908
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$9;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 966
    :cond_1c
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->ProcessJsonCampaign(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 782
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getCache_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    return-wide v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 798
    invoke-direct/range {p0 .. p8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$19(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsHasData:Z

    return v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/control/PullToRefreshGridView;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    return-object v0
.end method

.method static synthetic access$20(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$21(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$23(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mListState:Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$24(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V
    .registers 2

    .prologue
    .line 111
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mItemPosition:I

    return-void
.end method

.method static synthetic access$25(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V
    .registers 2

    .prologue
    .line 110
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mListPosition:I

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->myLastVisiblePos:I

    return v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mIsPlayingAnimation:Z

    return v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFilter:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$29()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 1339
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->inFromBottomAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->booleanCancelRunnable:Z

    return v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Z)V
    .registers 2

    .prologue
    .line 114
    iput-boolean p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mIsPlayingAnimation:Z

    return-void
.end method

.method static synthetic access$31()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 1355
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->outToBottomAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$32(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V
    .registers 2

    .prologue
    .line 113
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->myLastVisiblePos:I

    return-void
.end method

.method static synthetic access$33(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

    return-object v0
.end method

.method static synthetic access$34()Landroid/content/Context;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$35(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->RC_MARKET_DETAIL:I

    return v0
.end method

.method static synthetic access$36(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Z
    .registers 2

    .prologue
    .line 756
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->get_all()Z

    move-result v0

    return v0
.end method

.method static synthetic access$37(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I

    return v0
.end method

.method static synthetic access$38(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    return v0
.end method

.method static synthetic access$39(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Z)V
    .registers 2

    .prologue
    .line 96
    iput-boolean p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsHasData:Z

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Z)V
    .registers 2

    .prologue
    .line 95
    iput-boolean p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    return-void
.end method

.method static synthetic access$40(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V
    .registers 1

    .prologue
    .line 968
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->setCampaignUI()V

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gRunnable2:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;I)V
    .registers 2

    .prologue
    .line 100
    iput p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    return-void
.end method

.method private getCache_name()Ljava/lang/String;
    .registers 4

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, "cache_name":Ljava/lang/String;
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 785
    const-string v0, "market_free"

    .line 795
    :goto_8
    return-object v0

    .line 786
    :cond_9
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 787
    const-string v0, "market_draw"

    .line 788
    goto :goto_8

    :cond_11
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 789
    const-string v0, "market_deal"

    .line 790
    goto :goto_8

    :cond_19
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    .line 791
    const-string v0, "market_all"

    .line 792
    goto :goto_8

    .line 793
    :cond_21
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private get_all()Z
    .registers 6

    .prologue
    .line 757
    const/4 v0, 0x1

    .line 758
    .local v0, "isAll":Z
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 759
    const/4 v0, 0x0

    .line 761
    :cond_c
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 762
    const/4 v0, 0x0

    .line 764
    :cond_17
    iget-wide v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_20

    .line 765
    const/4 v0, 0x0

    .line 767
    :cond_20
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 768
    const/4 v0, 0x0

    .line 770
    :cond_2b
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 771
    const/4 v0, 0x0

    .line 773
    :cond_36
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 774
    const/4 v0, 0x0

    .line 776
    :cond_45
    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    if-lez v1, :cond_4a

    .line 777
    const/4 v0, 0x0

    .line 779
    :cond_4a
    return v0
.end method

.method private static inFromBottomAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1349
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1350
    .local v0, "inFromBottom":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1351
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1352
    return-object v0
.end method

.method private static inFromTopAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1326
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1327
    .local v0, "inFromTop":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1328
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1329
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

    .line 800
    iget-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    if-eqz v2, :cond_c

    .line 801
    const-string v2, "buzzebees.marketlist.fragment"

    const-string v3, "loadCampaign --> can not load, because the current loading is not finish..."

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_c
    iput-boolean v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    .line 806
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadCampaign : gTabState"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gCurrentFilterMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/campaign?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContext:Landroid/content/Context;

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sponsorId=0&format=json&type=list2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, "url":Ljava/lang/String;
    const/4 v0, 0x1

    .line 812
    .local v0, "isAll":Z
    const-string v2, ""

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 813
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

    .line 817
    :cond_75
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 818
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

    .line 819
    const/4 v0, 0x0

    .line 822
    :cond_95
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 823
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

    .line 824
    const/4 v0, 0x0

    .line 827
    :cond_b5
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_d3

    .line 828
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

    .line 829
    const/4 v0, 0x0

    .line 832
    :cond_d3
    const-string v2, ""

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f3

    .line 833
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

    .line 834
    const/4 v0, 0x0

    .line 837
    :cond_f3
    const-string v2, ""

    invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_113

    .line 838
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

    .line 839
    const/4 v0, 0x0

    .line 842
    :cond_113
    if-eqz p8, :cond_135

    const-string v2, ""

    invoke-virtual {p8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_135

    .line 843
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

    .line 844
    const/4 v0, 0x0

    .line 847
    :cond_135
    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    if-lez v2, :cond_13a

    .line 848
    const/4 v0, 0x0

    .line 851
    :cond_13a
    iput-boolean v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    .line 853
    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    if-eqz v2, :cond_159

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&$skip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 859
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

    .line 860
    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$GetCampaignListener;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Z)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 861
    return-void
.end method

.method private static outToBottomAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1365
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1366
    .local v0, "outToBottom":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1367
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1368
    return-object v0
.end method

.method private static outToTopAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1333
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1334
    .local v0, "outToTop":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1335
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1336
    return-object v0
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 721
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 723
    const-string v0, "gCampaignViews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 725
    const-string v0, "gCurrentFilterTextSearch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 726
    const-string v0, "gCurrentFilterCategory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 727
    const-string v0, "gCurrentFilterPoints"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    .line 728
    const-string v0, "gCurrentFilterCenter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 729
    const-string v0, "gCurrentFilterMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 730
    const-string v0, "gCurrentFilterSponsor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 731
    const-string v0, "gCurrentFilterPlace"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 733
    const-string v0, "gIsLoadingMore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    .line 734
    const-string v0, "gIsHasData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsHasData:Z

    .line 736
    const-string v0, "gSumListPerPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    .line 742
    :cond_62
    return-void
.end method

.method private setCampaignUI()V
    .registers 4

    .prologue
    .line 970
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

    if-nez v0, :cond_64

    .line 971
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "setCampaignUI | gAdapter == null"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Landroid/content/Context;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

    .line 976
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 978
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 989
    :goto_2d
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mListPosition="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mListPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mItemPosition="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mItemPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    .line 998
    return-void

    .line 980
    :cond_5d
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2d

    .line 983
    :cond_64
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "setCampaignUI | gAdapter != null"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->notifyDataSetChanged()V

    .line 986
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshGridView;->refreshDrawableState()V

    goto :goto_2d
.end method


# virtual methods
.method public UpdatePoint(J)V
    .registers 9
    .param p1, "points"    # J

    .prologue
    .line 1286
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

    .line 1289
    :try_start_1a
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 1290
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MarketPlaceMainFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1294
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1295
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const-string v3, "MarketPlaceMainFragment"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    .line 1296
    .local v2, "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-virtual {v2, p1, p2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->updatePoint(J)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_47} :catch_48

    .line 1303
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    :cond_47
    :goto_47
    return-void

    .line 1300
    :catch_48
    move-exception v0

    .line 1301
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
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1084
    const-string v0, "all"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1085
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1086
    iput v12, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 1090
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doFilterAll |gCurrentFilterTextSearch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterAll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1095
    .local v9, "layoutFilterAll":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterFree:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1096
    .local v11, "layoutFilterFree":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterDeal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1097
    .local v10, "layoutFilterDeal":Landroid/widget/LinearLayout;
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter_down:I

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1098
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1099
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1100
    return-void
.end method

.method public doFilterCat(Ljava/lang/String;)V
    .registers 15
    .param p1, "cat"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 1103
    const-string v0, "all"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1104
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1105
    iput v12, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    .line 1106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 1109
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doFilterAll |gCurrentFilterTextSearch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterAll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1114
    .local v9, "layoutFilterAll":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterFree:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1115
    .local v11, "layoutFilterFree":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterDeal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1116
    .local v10, "layoutFilterDeal":Landroid/widget/LinearLayout;
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1117
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1118
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1119
    return-void
.end method

.method public doFilterDeal()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1065
    const-string v0, "deal"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1066
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1067
    iput v12, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 1071
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "doFilterDeal"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1075
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterAll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1076
    .local v9, "layoutFilterAll":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterFree:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1077
    .local v11, "layoutFilterFree":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterDeal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1078
    .local v10, "layoutFilterDeal":Landroid/widget/LinearLayout;
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1079
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1080
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter_down:I

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1081
    return-void
.end method

.method public doFilterDraw()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1047
    const-string v0, "draw"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1048
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1049
    iput v12, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 1053
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterAll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1057
    .local v9, "layoutFilterAll":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterFree:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1058
    .local v11, "layoutFilterFree":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterDeal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1059
    .local v10, "layoutFilterDeal":Landroid/widget/LinearLayout;
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1060
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1061
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1062
    return-void
.end method

.method public doFilterFree()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1029
    const-string v0, "free_ads"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1030
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1031
    iput v12, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    .line 1032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 1035
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterAll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1039
    .local v9, "layoutFilterAll":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterFree:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1040
    .local v11, "layoutFilterFree":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v1, Lic/buzzebeeslib/R$id;->layoutFilterDeal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1041
    .local v10, "layoutFilterDeal":Landroid/widget/LinearLayout;
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1042
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter_down:I

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1043
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_style_button_filter:I

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1044
    return-void
.end method

.method public doRefresh()V
    .registers 10

    .prologue
    .line 1001
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "doRefresh"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-wide v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    iget-object v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->loadCampaign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$10;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$10;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gRunnable3:Ljava/lang/Runnable;

    .line 1011
    const-wide/16 v2, 0x3e8

    .line 1004
    invoke-virtual {v0, v1, v2, v3}, Lic/buzzebeeslib/control/PullToRefreshGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1012
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 292
    if-eqz p1, :cond_8

    .line 295
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 298
    :cond_8
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$5;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener2;)V

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->myLastVisiblePos:I

    .line 321
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$6;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 446
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$7;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 471
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$8;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Landroid/os/Bundle;)V

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gRunnable1:Ljava/lang/Runnable;

    .line 555
    const-wide/16 v2, 0x64

    .line 471
    invoke-virtual {v0, v1, v2, v3}, Lic/buzzebeeslib/control/PullToRefreshGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 556
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 746
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 747
    const/4 v0, -0x1

    if-ne p2, v0, :cond_13

    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->RC_MARKET_DETAIL:I

    if-ne p1, v0, :cond_13

    .line 748
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

    if-eqz v0, :cond_13

    .line 749
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->notifyDataSetChanged()V

    .line 754
    :cond_13
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 160
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    iput-boolean v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->booleanCancelRunnable:Z

    .line 174
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->setRetainInstance(Z)V

    .line 177
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 180
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 181
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 183
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "cache_market"

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 185
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 186
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 187
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gScreenHeight:I

    .line 188
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gScreenWidth:I

    .line 190
    iget v5, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gScreenWidth:I

    .line 191
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gScreenHeight:I

    .line 193
    .local v2, "height":I
    if-le v2, v5, :cond_92

    .end local v2    # "height":I
    :goto_67
    div-int/lit8 v3, v2, 0x2

    .line 194
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 195
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 196
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 197
    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v6, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 199
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_92
    move v2, v5

    .line 193
    goto :goto_67
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v9

    sput-object v9, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContext:Landroid/content/Context;

    .line 212
    sget v9, Lic/buzzebeeslib/R$layout;->bz_market_place_fragment_list2:I

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    .line 214
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->gridCampaign:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lic/buzzebeeslib/control/PullToRefreshGridView;

    iput-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    .line 215
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->contentFooter:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFooter:Landroid/widget/LinearLayout;

    .line 216
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->contentFilter:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContentFilter:Landroid/widget/LinearLayout;

    .line 218
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "fonts/kit55p.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 220
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 221
    .local v8, "tvPageHeader":Landroid/widget/TextView;
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 223
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->tvFilterAll:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 224
    .local v5, "tvFilterAll":Landroid/widget/TextView;
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->tvFilterFree:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 225
    .local v7, "tvFilterFree":Landroid/widget/TextView;
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->tvFilterDeal:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 226
    .local v6, "tvFilterDeal":Landroid/widget/TextView;
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->layoutButtonMenu:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 231
    .local v1, "layoutButtonMenu":Landroid/widget/RelativeLayout;
    new-instance v9, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$1;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->layoutFilterAll:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 245
    .local v2, "layoutFilterAll":Landroid/widget/LinearLayout;
    new-instance v9, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$2;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$2;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->layoutFilterFree:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 256
    .local v4, "layoutFilterFree":Landroid/widget/LinearLayout;
    new-instance v9, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$3;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$3;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    sget v10, Lic/buzzebeeslib/R$id;->layoutFilterDeal:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 267
    .local v3, "layoutFilterDeal":Landroid/widget/LinearLayout;
    new-instance v9, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$4;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$4;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    return-object v9
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 626
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 630
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 634
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 636
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gAdapter:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    .line 638
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    .line 640
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mHandler:Landroid/os/Handler;

    .line 642
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gListNearBy:Landroid/widget/ListView;

    .line 644
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    .line 645
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 646
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    .line 647
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 648
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 649
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 650
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 652
    iput-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsHasData:Z

    .line 655
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gRunnable:Ljava/lang/Runnable;

    .line 656
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    .line 658
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gTabState:I

    .line 660
    sput-object v3, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gContext:Landroid/content/Context;

    .line 662
    iput-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mListState:Landroid/os/Parcelable;

    .line 663
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mListPosition:I

    .line 664
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mItemPosition:I

    .line 666
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gLastTimeShowBuyPoint:J

    .line 668
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gScreenWidth:I

    .line 669
    iput v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gScreenHeight:I

    .line 670
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 605
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->booleanCancelRunnable:Z

    .line 608
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gRunnable1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 609
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gRunnable2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 610
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gRunnable3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 615
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 616
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/support/v4/app/Fragment;I)V

    .line 618
    :cond_26
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mLeak:Landroid/view/View;

    .line 622
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 674
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 678
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 584
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 589
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 590
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 592
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 593
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 568
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 573
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 575
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSDK_INT:I

    .line 577
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 578
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 579
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gDpi:I

    .line 580
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 682
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 694
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 696
    const-string v0, "gCampaignViews"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 698
    const-string v0, "gCurrentFilterTextSearch"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterTextSearch:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v0, "gCurrentFilterCategory"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCategory:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v0, "gCurrentFilterPoints"

    iget-wide v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPoints:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 701
    const-string v0, "gCurrentFilterCenter"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterCenter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v0, "gCurrentFilterMode"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v0, "gCurrentFilterSponsor"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterSponsor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "gCurrentFilterPlace"

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCurrentFilterPlace:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v0, "gIsLoadingMore"

    iget-boolean v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsLoadingMore:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    const-string v0, "gIsHasData"

    iget-boolean v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gIsHasData:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 709
    const-string v0, "gSumListPerPage"

    iget v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gSumListPerPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 710
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 560
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 564
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 597
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 601
    return-void
.end method

.method public playPointsAndBadge()V
    .registers 7

    .prologue
    .line 1306
    const-string v3, "buzzebees.marketlist.fragment"

    const-string v4, "private void playPointsAndBadge() {"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    :try_start_7
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 1310
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MarketPlaceMainFragment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1315
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1316
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const-string v3, "MarketPlaceMainFragment"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    .line 1317
    .local v2, "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->playPointsAndBadge()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_34} :catch_35

    .line 1323
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "marketPlaceMainFragment":Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
    :cond_34
    :goto_34
    return-void

    .line 1320
    :catch_35
    move-exception v0

    .line 1321
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
    .line 1015
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1016
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$11;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$11;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1024
    :cond_1a
    return-void
.end method
