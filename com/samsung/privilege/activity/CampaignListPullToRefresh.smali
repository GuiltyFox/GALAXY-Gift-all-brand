.class public Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
.super Landroid/support/v4/app/Fragment;
.source "CampaignListPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;,
        Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;,
        Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_gift"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"

.field private static gContext:Landroid/content/Context;


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final LOGCATLC:Ljava/lang/String;

.field private RC_CAMPAIGN_DETAIL:I

.field private final TAG:Ljava/lang/String;

.field private cd:Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

.field private gCampaignViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/CampaignView;",
            ">;"
        }
    .end annotation
.end field

.field private gCurrentFilterCategory:Ljava/lang/String;

.field private gCurrentLat:D

.field private gCurrentLon:D

.field private gFoundLocation:Z

.field private gHandler:Landroid/os/Handler;

.field private gIsHasData:Z

.field private gIsLoading:Z

.field private gIsLoadingMore:Z

.field private gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

.field protected gListNearBy:Landroid/widget/ListView;

.field private gListPerPage:I

.field private gLoadMoreCount:I

.field private gPbLoadingMap:Landroid/widget/ProgressBar;

.field private gRunnable:Ljava/lang/Runnable;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gSumListPerPage:I

.field private gTabState:I

.field private gTvLoadingMap:Landroid/widget/TextView;

.field private gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

.field private isConBzBs:Z

.field protected lm:Landroid/location/LocationManager;

.field protected locationListener:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;

.field private mCategoryCode:Ljava/lang/String;

.field private mCategoryName:Ljava/lang/String;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mImageThumbSize:I

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 66
    const-string v0, "buzzebees.marketlist.fragment"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->LOGCAT:Ljava/lang/String;

    .line 67
    const-string v0, "buzzebees.marketlist.fragment.lc"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->LOGCATLC:Ljava/lang/String;

    .line 68
    const-class v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;

    .line 103
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->RC_CAMPAIGN_DETAIL:I

    .line 105
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoadingMore:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsHasData:Z

    .line 109
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListPerPage:I

    .line 110
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gSumListPerPage:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListState:Landroid/os/Parcelable;

    .line 121
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListPosition:I

    .line 122
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mItemPosition:I

    .line 132
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gFoundLocation:Z

    .line 602
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoading:Z

    .line 603
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gLoadMoreCount:I

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mHandler:Landroid/os/Handler;

    .line 138
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "pTabState"    # I
    .param p2, "pTextSearch"    # Ljava/lang/String;
    .param p3, "pFilter_category_id"    # Ljava/lang/String;
    .param p4, "pFilter_points"    # J
    .param p6, "pFilter_center"    # Ljava/lang/String;
    .param p7, "pFilter_mode"    # Ljava/lang/String;
    .param p8, "pFilter_sponsor"    # Ljava/lang/String;
    .param p9, "pFilter_location"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 66
    const-string v0, "buzzebees.marketlist.fragment"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->LOGCAT:Ljava/lang/String;

    .line 67
    const-string v0, "buzzebees.marketlist.fragment.lc"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->LOGCATLC:Ljava/lang/String;

    .line 68
    const-class v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;

    .line 103
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->RC_CAMPAIGN_DETAIL:I

    .line 105
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoadingMore:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsHasData:Z

    .line 109
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListPerPage:I

    .line 110
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gSumListPerPage:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListState:Landroid/os/Parcelable;

    .line 121
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListPosition:I

    .line 122
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mItemPosition:I

    .line 132
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gFoundLocation:Z

    .line 602
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoading:Z

    .line 603
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gLoadMoreCount:I

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mHandler:Landroid/os/Handler;

    .line 142
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gTabState:I

    .line 144
    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;

    .line 150
    return-void
.end method

.method private ProcessJsonCampaign(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "is_catch"    # Z

    .prologue
    .line 712
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 714
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    if-nez v5, :cond_10

    .line 715
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    .line 718
    :cond_10
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1d

    .line 719
    iget v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gSumListPerPage:I

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListPerPage:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gSumListPerPage:I

    .line 722
    :cond_1d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_46

    .line 723
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsHasData:Z

    .line 728
    :goto_26
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_64

    .line 739
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 740
    .local v0, "count_item":I
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;

    invoke-direct {v6, p0, v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$5;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$6;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$6;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 775
    .end local v0    # "count_item":I
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_45
    return-void

    .line 725
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_46
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsHasData:Z
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_26

    .line 772
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_4a
    move-exception v1

    .line 773
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "buzzebees.marketlist.fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetCampaignListener|onComplete|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 730
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_64
    :try_start_64
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 731
    .local v4, "json_campaign":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    if-eqz v5, :cond_76

    .line 732
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v6, v4}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_76} :catch_79

    .line 728
    .end local v4    # "json_campaign":Lorg/json/JSONObject;
    :cond_76
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 734
    :catch_79
    move-exception v1

    .line 735
    .restart local v1    # "e":Lorg/json/JSONException;
    :try_start_7a
    const-string v5, "buzzebees.marketlist.fragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetCampaignListener|onComplete|for|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_92} :catch_4a

    goto :goto_76
.end method

.method private ResetFilter()V
    .registers 2

    .prologue
    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;

    .line 415
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Z)V
    .registers 2

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gFoundLocation:Z

    return-void
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;D)V
    .registers 3

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentLat:D

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;D)V
    .registers 3

    .prologue
    .line 134
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentLon:D

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gTvLoadingMap:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gPbLoadingMap:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 605
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->loadCampaign(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;I)V
    .registers 2

    .prologue
    .line 110
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gSumListPerPage:I

    return-void
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gAdapter:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

    return-void
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 710
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->ProcessJsonCampaign(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$20(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$21(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListPerPage:I

    return v0
.end method

.method static synthetic access$22(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoadingMore:Z

    return v0
.end method

.method static synthetic access$23(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$24(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$25(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Landroid/os/Parcelable;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListState:Landroid/os/Parcelable;

    return-void
.end method

.method static synthetic access$26(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;I)V
    .registers 2

    .prologue
    .line 121
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListPosition:I

    return-void
.end method

.method static synthetic access$27(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;I)V
    .registers 2

    .prologue
    .line 122
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mItemPosition:I

    return-void
.end method

.method static synthetic access$28(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->RC_CAMPAIGN_DETAIL:I

    return v0
.end method

.method static synthetic access$29()Landroid/content/Context;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsHasData:Z

    return v0
.end method

.method static synthetic access$30(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mCategoryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->loadCampaignByCatch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$33(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->restoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$34(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/view/View;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$35(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V
    .registers 1

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->setCampaignUI()V

    return-void
.end method

.method static synthetic access$36(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gFoundLocation:Z

    return v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)I
    .registers 2

    .prologue
    .line 603
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gLoadMoreCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/samsung/privilege/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Z)V
    .registers 2

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoading:Z

    return-void
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method private getLocation()V
    .registers 3

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 963
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "public void getLocation() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V

    .line 1039
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->start()V

    .line 1041
    :cond_1f
    return-void
.end method

.method private loadCampaign(ZLjava/lang/String;)V
    .registers 13
    .param p1, "is_first_load"    # Z
    .param p2, "filter_category_id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const-wide/16 v7, 0x0

    .line 606
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoading:Z

    if-eqz v0, :cond_10

    .line 607
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "loadCampaign --> can not load, because the current loading is not finish..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :goto_f
    return-void

    .line 609
    :cond_10
    iput-boolean v9, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoading:Z

    .line 611
    const-string v0, "nearby"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentLat:D

    cmpl-double v0, v0, v7

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentLon:D

    cmpl-double v0, v0, v7

    if-nez v0, :cond_2a

    .line 612
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getLocation()V

    goto :goto_f

    .line 614
    :cond_2a
    if-eqz p1, :cond_107

    .line 615
    iput v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gLoadMoreCount:I

    .line 616
    iput v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gSumListPerPage:I

    .line 621
    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/campaign?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 622
    .local v6, "url":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&sponsorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=dashboard&visibility=0&format=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 624
    const-string v0, "nearby"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentLat:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentLon:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 632
    :cond_b3
    :goto_b3
    iput-boolean v9, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoadingMore:Z

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&$skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gSumListPerPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "campaign_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "cache_name":Ljava/lang/String;
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 639
    .local v4, "startTime":J
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;ZLjava/lang/String;J)V

    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 618
    .end local v3    # "cache_name":Ljava/lang/String;
    .end local v4    # "startTime":J
    .end local v6    # "url":Ljava/lang/String;
    :cond_107
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gLoadMoreCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gLoadMoreCount:I

    goto/16 :goto_30

    .line 627
    .restart local v6    # "url":Ljava/lang/String;
    :cond_10f
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&cat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_b3
.end method

.method private loadCampaignByCatch(Ljava/lang/String;)V
    .registers 6
    .param p1, "filter_category_id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 588
    const-string v1, "nearby"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 589
    invoke-direct {p0, v3, p1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->loadCampaign(ZLjava/lang/String;)V

    .line 600
    :goto_c
    return-void

    .line 591
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "campaign_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "catch_campaign":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 593
    invoke-direct {p0, v0, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->ProcessJsonCampaign(Ljava/lang/String;Z)V

    .line 595
    invoke-direct {p0, v3, p1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->loadCampaign(ZLjava/lang/String;)V

    goto :goto_c

    .line 597
    :cond_33
    invoke-direct {p0, v3, p1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->loadCampaign(ZLjava/lang/String;)V

    goto :goto_c
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 542
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 543
    const-string v0, "gCampaignViews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    .line 544
    const-string v0, "gCurrentFilterCategory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;

    .line 545
    const-string v0, "gIsLoadingMore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoadingMore:Z

    .line 546
    const-string v0, "gIsHasData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsHasData:Z

    .line 547
    const-string v0, "gSumListPerPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gSumListPerPage:I

    .line 551
    :try_start_32
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListState:Landroid/os/Parcelable;

    .line 552
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListPosition:I

    .line 553
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mItemPosition:I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4a} :catch_4e

    .line 558
    :goto_4a
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->setCampaignUI()V

    .line 562
    :cond_4d
    return-void

    .line 554
    :catch_4e
    move-exception v0

    goto :goto_4a
.end method

.method private setCampaignUI()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 778
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gAdapter:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

    if-nez v0, :cond_6d

    .line 779
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

    sget-object v1, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gAdapter:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

    .line 780
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_67

    .line 781
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gAdapter:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 797
    :goto_23
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mListPosition="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mItemPosition="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mItemPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_5a

    .line 802
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 803
    :cond_5a
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListPosition:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mItemPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->setSelectionFromTop(II)V

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoadingMore:Z

    .line 806
    return-void

    .line 783
    :cond_67
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_23

    .line 789
    :cond_6d
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

    sget-object v1, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gAdapter:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

    .line 790
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8c

    .line 791
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gAdapter:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_23

    .line 793
    :cond_8c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_23
.end method


# virtual methods
.method public getLocationByGPS()V
    .registers 7

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 1046
    :try_start_6
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$9;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$9;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1055
    new-instance v2, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    .line 1058
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v2}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->canGetLocation()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1059
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v2}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentLat:D

    .line 1060
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v2}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentLon:D

    .line 1062
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gCurrentLat "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentLat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gCurrentLon "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentLon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoading:Z

    .line 1066
    const/4 v2, 0x1

    const-string v3, "nearby"

    invoke-direct {p0, v2, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->loadCampaign(ZLjava/lang/String;)V

    .line 1068
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v2}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->stopUsingGPS()V

    .line 1091
    :cond_6d
    :goto_6d
    return-void

    .line 1073
    :cond_6e
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v2}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->showSettingsAlert()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_73} :catch_74

    goto :goto_6d

    .line 1075
    :catch_74
    move-exception v0

    .line 1076
    .local v0, "e":Ljava/lang/Exception;
    const v2, 0x7f0a0319

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1077
    .local v1, "error":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1080
    :cond_a9
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->showToast(Ljava/lang/String;)V

    .line 1082
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$10;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$10;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6d
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 428
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 566
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 567
    const/4 v3, -0x1

    if-ne p2, v3, :cond_34

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->RC_CAMPAIGN_DETAIL:I

    if-ne p1, v3, :cond_34

    .line 568
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gAdapter:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$CampaignListAdapter;->notifyDataSetChanged()V

    .line 571
    :try_start_f
    const-string v3, "redirect"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "redirect":Ljava/lang/String;
    const-string v3, "history"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 574
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v3, :cond_34

    .line 575
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 576
    .local v1, "ra":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->gotoMenuHistory()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_35

    .line 585
    .end local v1    # "ra":Lcom/samsung/privilege/activity/CampaignListActivity;
    .end local v2    # "redirect":Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 579
    :catch_35
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "buzzebees.marketlist.fragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while back from review post:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->setRetainInstance(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 179
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 181
    :cond_18
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gHandler:Landroid/os/Handler;

    .line 185
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 188
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 192
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageThumbSize:I

    .line 194
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "cache_gift"

    invoke-direct {v0, v5, v6}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/high16 v6, 0x3e800000

    invoke-virtual {v0, v5, v6}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 199
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 200
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 202
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gScreenHeight:I

    .line 203
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gScreenWidth:I

    .line 205
    iget v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gScreenWidth:I

    .line 206
    .local v4, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gScreenHeight:I

    .line 217
    .local v2, "height":I
    if-le v2, v4, :cond_b4

    .end local v2    # "height":I
    :goto_7c
    div-int/lit8 v3, v2, 0x2

    .line 222
    .local v3, "longest":I
    new-instance v5, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 223
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v6, 0x7f02039f

    invoke-virtual {v5, v6}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 224
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 225
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 227
    new-instance v5, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->cd:Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

    .line 228
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_b4
    move v2, v4

    .line 217
    goto :goto_7c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 242
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v4, "category_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "categoryCode":Ljava/lang/String;
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mCategoryCode:Ljava/lang/String;

    .line 244
    const-string v4, "category_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "categoryName":Ljava/lang/String;
    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mCategoryName:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gContext:Landroid/content/Context;

    .line 248
    const v4, 0x7f0300b3

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 250
    .local v3, "view":Landroid/view/View;
    const/high16 v4, 0x7f420000

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/control/PullToRefreshListView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    .line 251
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030122

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->footerListView:Landroid/view/View;

    .line 252
    const v4, 0x7f420001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gPbLoadingMap:Landroid/widget/ProgressBar;

    .line 253
    const v4, 0x7f420002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gTvLoadingMap:Landroid/widget/TextView;

    .line 255
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v5, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$1;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setOnRefreshListener(Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;)V

    .line 270
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v5, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$2;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 310
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v5, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 362
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v5, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;

    invoke-direct {v5, p0, p3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$4;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Landroid/os/Bundle;)V

    .line 402
    const-wide/16 v6, 0x64

    .line 362
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/privilege/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    return-object v3
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 479
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 484
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 485
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 471
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 475
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 489
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 493
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 451
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 455
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 457
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 458
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 459
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 440
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 445
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 447
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 497
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 507
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 509
    const-string v2, "gCampaignViews"

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 510
    const-string v2, "gCurrentFilterCategory"

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCurrentFilterCategory:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v2, "gIsLoadingMore"

    iget-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsLoadingMore:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 512
    const-string v2, "gIsHasData"

    iget-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsHasData:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 513
    const-string v2, "gSumListPerPage"

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gSumListPerPage:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    :try_start_2d
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListState:Landroid/os/Parcelable;

    .line 518
    const-string v2, "listState"

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 521
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListPosition:I

    .line 522
    const-string v2, "listPosition"

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_5e

    :goto_54
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mItemPosition:I

    .line 527
    const-string v1, "itemPosition"

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    .end local v0    # "itemView":Landroid/view/View;
    :goto_5d
    return-void

    .line 526
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_5e
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_61} :catch_63

    move-result v1

    goto :goto_54

    .line 528
    .end local v0    # "itemView":Landroid/view/View;
    :catch_63
    move-exception v1

    goto :goto_5d
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 432
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 436
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 463
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 467
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$7;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 816
    return-void
.end method
