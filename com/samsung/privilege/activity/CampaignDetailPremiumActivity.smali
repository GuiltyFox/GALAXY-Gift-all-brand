.class public Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CampaignDetailPremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;,
        Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;,
        Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;,
        Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetPointsListener;,
        Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;,
        Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;,
        Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;,
        Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;,
        Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_gift"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private RC_BEAM:I

.field private RC_WEBVIEW_BOOKING:I

.field private RC_WEBVIEW_BUY_POINT:I

.field private RC_WEBVIEW_CUSTOMINPUT:I

.field private TAG:Ljava/lang/String;

.field private doRedeeming:Z

.field private footerListView:Landroid/view/View;

.field private formatter:Ljava/text/NumberFormat;

.field private gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

.field private gCacheCampaign:Ljava/lang/String;

.field private gCampaignBranches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/PlaceNewDetail;",
            ">;"
        }
    .end annotation
.end field

.field private gCenterX:F

.field private gCenterY:F

.field private gCurrentLat:D

.field private gCurrentLon:D

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFetching:Z

.field private gFont:Landroid/graphics/Typeface;

.field private gFoundLocation:Z

.field private gHandler:Landroid/os/Handler;

.field private gIsHasData:Z

.field private gIsLoadImaged:Z

.field private gIsLoadingMore:Z

.field private gIsPlayDetailAnimation:Z

.field private gLastRank:J

.field private gListBranch:Landroid/widget/ListView;

.field private gListPerPage:I

.field private gPbLoadingCampaign:Landroid/widget/ProgressBar;

.field private gPbLoadingMap:Landroid/widget/ProgressBar;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gTvLoadingMap:Landroid/widget/TextView;

.field private gTvPoint:Landroid/widget/TextView;

.field private gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

.field private isContinueUrl:Z

.field protected lm:Landroid/location/LocationManager;

.field protected locationListener:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

.field private paramCampaignID:I

.field private paramFromList:Z

.field private paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 114
    const-string v0, "campaign.detail"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->LOGCAT:Ljava/lang/String;

    .line 115
    const-class v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->formatter:Ljava/text/NumberFormat;

    .line 121
    iput v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    .line 140
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFoundLocation:Z

    .line 144
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadingMore:Z

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsHasData:Z

    .line 146
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListPerPage:I

    .line 156
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsPlayDetailAnimation:Z

    .line 158
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_BEAM:I

    .line 159
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    .line 160
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BUY_POINT:I

    .line 161
    const/16 v0, 0x28

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BOOKING:I

    .line 473
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadImaged:Z

    .line 1479
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    .line 1480
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->isContinueUrl:Z

    .line 2330
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    .line 2696
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCacheCampaign:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private GetProfileData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2815
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me/user?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2816
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;)V

    invoke-static {v0, v1, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 2817
    return-void
.end method

.method private PlayAnimationFinish()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 839
    const v2, 0x7f3c000c

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 841
    .local v0, "layoutScrollView":Landroid/widget/ScrollView;
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->outToTopAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 842
    .local v1, "outToTop":Landroid/view/animation/Animation;
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 843
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 844
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 846
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 847
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 864
    iget-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsPlayDetailAnimation:Z

    if-nez v2, :cond_2b

    .line 865
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->finish()V

    .line 867
    :cond_2b
    return-void
.end method

.method private ProcessJsonPlace(Ljava/lang/String;Z)V
    .registers 15
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "loadMore"    # Z

    .prologue
    const/16 v11, 0x8

    .line 2470
    const/4 v0, 0x0

    .line 2471
    .local v0, "count_item":I
    :try_start_3
    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f3

    .line 2472
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2473
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_7f

    .line 2486
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 2491
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_1b
    if-eqz v0, :cond_21

    iget v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListPerPage:I

    if-ge v0, v8, :cond_11e

    .line 2492
    :cond_21
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsHasData:Z

    .line 2493
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getFooterViewsCount()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_d9

    move-result v8

    if-eqz v8, :cond_33

    .line 2496
    :try_start_2c
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_f6

    .line 2509
    :cond_33
    :goto_33
    :try_start_33
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v9, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;

    invoke-direct {v9, p0, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2527
    const v8, 0x7f400006

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2528
    .local v7, "tvMapMessage":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_137

    .line 2529
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v9, 0x7f0902fe

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2530
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2536
    :goto_71
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadingMore:Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_74} :catch_d9

    .line 2541
    .end local v7    # "tvMapMessage":Landroid/widget/TextView;
    :goto_74
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2542
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvLoadingMap:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2543
    return-void

    .line 2475
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_7f
    :try_start_7f
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2476
    .local v5, "json_place_new":Lorg/json/JSONObject;
    const-string v8, "LocationID"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2477
    .local v3, "id":Ljava/lang/String;
    new-instance v6, Lcom/samsung/privilege/bean/PlaceNewDetail;

    invoke-direct {v6, v3}, Lcom/samsung/privilege/bean/PlaceNewDetail;-><init>(Ljava/lang/String;)V

    .line 2478
    .local v6, "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    const-string v8, "Name"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    .line 2479
    const-string v8, "Latitude"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F

    .line 2480
    const-string v8, "Longitude"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F

    .line 2481
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_bb} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_bb} :catch_d9

    .line 2473
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "json_place_new":Lorg/json/JSONObject;
    .end local v6    # "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    :goto_bb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 2482
    :catch_bf
    move-exception v1

    .line 2483
    .local v1, "e":Lorg/json/JSONException;
    :try_start_c0
    const-string v8, "campaign.detail"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(placesRequestListener|onComplete|for|JSONException):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d8} :catch_d9

    goto :goto_bb

    .line 2537
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_d9
    move-exception v1

    .line 2538
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "campaign.detail"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(Exception|ProcessJsonPlace):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    .line 2488
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f3
    const/4 v0, 0x0

    goto/16 :goto_1b

    .line 2497
    :catch_f6
    move-exception v1

    .line 2498
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_f7
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->footerListView:Landroid/view/View;

    const/high16 v9, 0x7f240000

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2499
    const-string v8, "campaign.detail"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(Exception|removeFooterView):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 2503
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_11e
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsHasData:Z

    .line 2504
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v8

    if-nez v8, :cond_33

    .line 2505
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->footerListView:Landroid/view/View;

    const/high16 v9, 0x7f240000

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_33

    .line 2532
    .restart local v7    # "tvMapMessage":Landroid/widget/TextView;
    :cond_137
    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2533
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_141} :catch_d9

    goto/16 :goto_71
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvPoint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvPoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 3

    .prologue
    .line 2736
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 2

    .prologue
    .line 1479
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V
    .registers 1

    .prologue
    .line 1180
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->processLikeAction()V

    return-void
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 2

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFoundLocation:Z

    return-void
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;D)V
    .registers 4

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLat:D

    return-void
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;D)V
    .registers 4

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLon:D

    return-void
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvLoadingMap:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)D
    .registers 3

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLat:D

    return-wide v0
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)D
    .registers 3

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLon:D

    return-wide v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ZDD)V
    .registers 6

    .prologue
    .line 2373
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->fetchPlaces(ZDD)V

    return-void
.end method

.method static synthetic access$21(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 2468
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->ProcessJsonPlace(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$22(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$23(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 2

    .prologue
    .line 2330
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    return-void
.end method

.method static synthetic access$24(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$25(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCacheCampaign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-void
.end method

.method static synthetic access$27(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 2

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->initialLayout(Z)V

    return-void
.end method

.method static synthetic access$28(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$29(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFoundLocation:Z

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/NFCTag;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    return-object v0
.end method

.method static synthetic access$30(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$31(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 2

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadingMore:Z

    return-void
.end method

.method static synthetic access$32(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;J)V
    .registers 4

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gLastRank:J

    return-void
.end method

.method static synthetic access$33(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)J
    .registers 3

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gLastRank:J

    return-wide v0
.end method

.method static synthetic access$34(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$35(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    return-object v0
.end method

.method static synthetic access$36(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    return-void
.end method

.method static synthetic access$37(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$38(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$39(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/ProgressBar;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_BEAM:I

    return v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1098
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V
    .registers 1

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPoints()V

    return-void
.end method

.method private bigToSmallAnimation()Landroid/view/animation/Animation;
    .registers 8

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    .line 2094
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterX:F

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterY:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2095
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2096
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2097
    return-object v0
.end method

.method private checkRedeemError(Z)Ljava/lang/String;
    .registers 16
    .param p1, "isCheckNFC"    # Z

    .prologue
    const v12, 0x7f09035f

    const v8, 0x7f09035d

    const v11, 0x7f0901bd

    const/4 v10, 0x2

    const/4 v9, 0x6

    .line 1237
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 1240
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v7

    if-nez v7, :cond_23

    .line 1241
    const v7, 0x7f090309

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1401
    :goto_22
    return-object v7

    .line 1266
    :cond_23
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_2f

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_d4

    .line 1267
    :cond_2f
    iget-boolean v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramFromList:Z

    if-eqz v7, :cond_bd

    .line 1269
    :try_start_33
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xa

    if-lt v7, v8, :cond_93

    .line 1270
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "nfc"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NfcManager;

    .line 1271
    .local v3, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v3}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1273
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_7d

    .line 1274
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1275
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_5f

    .line 1277
    const v7, 0x7f09035d

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1279
    :cond_5f
    const v7, 0x7f090354

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1282
    :cond_67
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_75

    .line 1284
    const v7, 0x7f09035e

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1286
    :cond_75
    const v7, 0x7f0901be

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1290
    :cond_7d
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_8b

    .line 1292
    const v7, 0x7f09035f

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1294
    :cond_8b
    const v7, 0x7f0901bd

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1298
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v3    # "manager":Landroid/nfc/NfcManager;
    :cond_93
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_a1

    .line 1300
    const v7, 0x7f09035d

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1302
    :cond_a1
    const v7, 0x7f0901bd

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_a7} :catch_aa

    move-result-object v7

    goto/16 :goto_22

    .line 1305
    :catch_aa
    move-exception v2

    .line 1306
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_b7

    .line 1308
    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1310
    :cond_b7
    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1314
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_bd
    if-eqz p1, :cond_d4

    .line 1315
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_cb

    .line 1317
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1319
    :cond_cb
    const v7, 0x7f090354

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1325
    :cond_d4
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_e3

    .line 1326
    if-eqz p1, :cond_e3

    .line 1328
    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1333
    :cond_e3
    if-nez p1, :cond_fb

    .line 1334
    :try_start_e5
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-nez v7, :cond_115

    .line 1335
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eqz v7, :cond_115

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_115

    .line 1338
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    goto/16 :goto_22

    .line 1342
    :cond_fb
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eqz v7, :cond_115

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_115

    .line 1345
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_10b} :catch_10d

    goto/16 :goto_22

    .line 1348
    :catch_10d
    move-exception v2

    .line 1349
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.RedeemMedia)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_115
    :try_start_115
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-wide v8, v7, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_183

    .line 1356
    new-instance v4, Ljava/util/Date;

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-wide v8, v7, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v10, 0x6270

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1357
    .local v4, "nextRedeemDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1371
    .local v1, "currentDate":Ljava/util/Date;
    invoke-virtual {v1, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_183

    .line 1374
    const v7, 0x7f0902fd

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1375
    .local v6, "str_nextredeemdate":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMM yyyy HH:mm"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-wide v10, v9, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v12, 0x6270

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1376
    .local v5, "strNextRedeemDate":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_178} :catch_17b

    move-result-object v7

    goto/16 :goto_22

    .line 1379
    .end local v1    # "currentDate":Ljava/util/Date;
    .end local v4    # "nextRedeemDate":Ljava/util/Date;
    .end local v5    # "strNextRedeemDate":Ljava/lang/String;
    .end local v6    # "str_nextredeemdate":Ljava/lang/String;
    :catch_17b
    move-exception v2

    .line 1380
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.NextRedeemDate > 0)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_183
    :try_start_183
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    if-lez v7, :cond_1a4

    .line 1385
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemCount:I

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v8, v8, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    if-lt v7, v8, :cond_1a4

    .line 1386
    const v7, 0x7f09030a

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_199} :catch_19c

    move-result-object v7

    goto/16 :goto_22

    .line 1389
    :catch_19c
    move-exception v2

    .line 1390
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.RedeemCount >= paramCampaign.RedeemMostPerPerson)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1a4
    :try_start_1a4
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    if-lt v7, v8, :cond_1bf

    .line 1395
    const v7, 0x7f09030b

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1b4} :catch_1b7

    move-result-object v7

    goto/16 :goto_22

    .line 1397
    :catch_1b7
    move-exception v2

    .line 1398
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.ItemCountSold >= paramCampaign.Quantity)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1bf
    const-string v7, ""

    goto/16 :goto_22
.end method

.method private doInitialBranch()V
    .registers 7

    .prologue
    .line 2655
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 2656
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    .line 2658
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2659
    .local v0, "arrTemps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    array-length v4, v0

    if-lt v1, v4, :cond_44

    .line 2666
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    .line 2667
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_57

    .line 2668
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2673
    .end local v0    # "arrTemps":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_43
    :goto_43
    return-void

    .line 2660
    .restart local v0    # "arrTemps":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_44
    aget-object v3, v0, v1

    .line 2661
    .local v3, "str":Ljava/lang/String;
    new-instance v2, Lcom/samsung/privilege/bean/PlaceNewDetail;

    const-string v4, ""

    invoke-direct {v2, v4}, Lcom/samsung/privilege/bean/PlaceNewDetail;-><init>(Ljava/lang/String;)V

    .line 2662
    .local v2, "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    iput-object v3, v2, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    .line 2663
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2659
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 2670
    .end local v2    # "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    .end local v3    # "str":Ljava/lang/String;
    :cond_57
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_43
.end method

.method private fetchPlaces(Z)V
    .registers 5
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 2333
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    if-eqz v0, :cond_c

    .line 2334
    const-string v0, "campaign.detail"

    const-string v1, "if (gFetching == true) {// do nothing..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    :goto_b
    return-void

    .line 2336
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    .line 2337
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchPlaces("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    if-nez p1, :cond_35

    .line 2340
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$17;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$17;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2351
    :cond_35
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$18;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$18;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private fetchPlaces(ZDD)V
    .registers 14
    .param p1, "pLoadMore"    # Z
    .param p2, "lat"    # D
    .param p4, "lon"    # D

    .prologue
    .line 2374
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    if-eqz v0, :cond_c

    .line 2375
    const-string v0, "campaign.detail"

    const-string v1, "if (gFetching == true) {// do nothing..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    :goto_b
    return-void

    .line 2377
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    .line 2378
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchPlaces("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    if-nez p1, :cond_49

    .line 2381
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$19;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$19;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2392
    :cond_49
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$20;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$20;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;DDZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "pNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 2737
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 2738
    return-void
.end method

.method private getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "pNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 2699
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "campaign_detail-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2700
    .local v1, "catch_campaign":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 2702
    :try_start_1f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2703
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    new-instance v0, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v0, v3}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    .line 2705
    .local v0, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 2707
    new-instance v6, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$22;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$22;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2714
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCacheCampaign:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_35} :catch_96

    .line 2721
    .end local v0    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 2722
    .local v4, "token":Ljava/lang/String;
    if-eqz v4, :cond_95

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    .line 2723
    new-instance v6, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$23;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$23;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2730
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "api/campaign/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&format=json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2731
    .local v5, "url":Ljava/lang/String;
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "url="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    new-instance v6, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;

    invoke-direct {v6, p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ILcom/samsung/privilege/bean/NFCTag;)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 2734
    .end local v5    # "url":Ljava/lang/String;
    :cond_95
    return-void

    .line 2715
    .end local v4    # "token":Ljava/lang/String;
    :catch_96
    move-exception v2

    .line 2717
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error while load cache campaign!"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method private getLocation()V
    .registers 3

    .prologue
    .line 2133
    const-string v0, "campaign.detail"

    const-string v1, "public void getLocation() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    .line 2223
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->start()V

    .line 2224
    return-void
.end method

.method private getPoints()V
    .registers 3

    .prologue
    .line 870
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    .line 896
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 897
    return-void
.end method

.method private goBooking(Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 7
    .param p1, "pCampain"    # Lcom/samsung/privilege/bean/CampaignView;

    .prologue
    .line 1659
    if-eqz p1, :cond_9a

    .line 1660
    iget-object v3, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    if-eqz v3, :cond_9a

    iget-object v3, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1662
    :try_start_10
    iget-object v2, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_c1

    .line 1665
    .local v2, "url":Ljava/lang/String;
    :try_start_12
    const-string v3, "<uid>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1666
    new-instance v0, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1667
    .local v0, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v3, "<deviceId>"

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_32} :catch_c3

    move-result-object v2

    .line 1672
    .end local v0    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_33
    :try_start_33
    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 1673
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1675
    :cond_52
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 1676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1681
    :goto_7f
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1682
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1683
    const-string v3, "enable_webview_back"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1684
    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BOOKING:I

    invoke-virtual {p0, v1, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1690
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_9a
    :goto_9a
    return-void

    .line 1678
    .restart local v2    # "url":Ljava/lang/String;
    :cond_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_bf} :catch_c1

    move-result-object v2

    goto :goto_7f

    .line 1685
    .end local v2    # "url":Ljava/lang/String;
    :catch_c1
    move-exception v3

    goto :goto_9a

    .line 1668
    .restart local v2    # "url":Ljava/lang/String;
    :catch_c3
    move-exception v3

    goto/16 :goto_33
.end method

.method private goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 14
    .param p1, "pCampain"    # Lcom/samsung/privilege/bean/CampaignView;

    .prologue
    .line 1606
    if-eqz p1, :cond_3a

    .line 1607
    iget-object v8, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    if-eqz v8, :cond_3a

    iget-object v8, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 1609
    :try_start_10
    iget-object v7, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    .line 1611
    .local v7, "url":Ljava/lang/String;
    const-string v8, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_22

    const-string v8, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 1612
    :cond_22
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1613
    .local v3, "arrTemp":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-lt v8, v9, :cond_7b

    .line 1614
    const/4 v8, 0x1

    aget-object v1, v3, v8
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_79

    .line 1617
    .local v1, "android_ns":Ljava/lang/String;
    :try_start_2f
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1618
    .local v0, "LaunchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_3a} :catch_5a

    .line 1656
    .end local v0    # "LaunchIntent":Landroid/content/Intent;
    .end local v1    # "android_ns":Ljava/lang/String;
    .end local v3    # "arrTemp":[Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-void

    .line 1619
    .restart local v1    # "android_ns":Ljava/lang/String;
    .restart local v3    # "arrTemp":[Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_3b
    move-exception v5

    .line 1620
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_3c
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "market://details?id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_59
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_59} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_59} :catch_79

    goto :goto_3a

    .line 1622
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_5a
    move-exception v2

    .line 1623
    .local v2, "anfe":Landroid/content/ActivityNotFoundException;
    :try_start_5b
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://play.google.com/store/apps/details?id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3a

    .line 1651
    .end local v1    # "android_ns":Ljava/lang/String;
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v3    # "arrTemp":[Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catch_79
    move-exception v8

    goto :goto_3a

    .line 1626
    .restart local v3    # "arrTemp":[Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_7b
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_89} :catch_79

    goto :goto_3a

    .line 1630
    .end local v3    # "arrTemp":[Ljava/lang/String;
    :cond_8a
    :try_start_8a
    const-string v8, "<uid>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1631
    new-instance v4, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1632
    .local v4, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v8, "<deviceId>"

    invoke-virtual {v4}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_aa} :catch_134

    move-result-object v7

    .line 1637
    .end local v4    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_ab
    :try_start_ab
    const-string v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ca

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ca

    .line 1638
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1640
    :cond_ca
    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 1641
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1646
    :goto_f7
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1648
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "url"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1649
    iget v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BUY_POINT:I

    invoke-virtual {p0, v6, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3a

    .line 1643
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_10e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "?token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_132} :catch_79

    move-result-object v7

    goto :goto_f7

    .line 1633
    :catch_134
    move-exception v8

    goto/16 :goto_ab
.end method

.method private inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2108
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2110
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2111
    .local v0, "inFromBottom":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2112
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2113
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2115
    return-object v9
.end method

.method private inFromTopAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 821
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 822
    .local v0, "inFromTop":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 823
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 824
    return-object v0
.end method

.method private initialFont()V
    .registers 30

    .prologue
    .line 369
    const v27, 0x7f0c029f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 370
    .local v4, "layoutCenter":Landroid/widget/RelativeLayout;
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 371
    const v27, 0x7f0c02b9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 372
    .local v6, "layoutToolBottom":Landroid/widget/LinearLayout;
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    const v27, 0x7f0c005b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 375
    .local v16, "tvHeaderCaption":Landroid/widget/TextView;
    const v27, 0x7f0c012a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 376
    .local v19, "tvPoint":Landroid/widget/TextView;
    const v27, 0x7f0c029e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 377
    .local v21, "tvPointP":Landroid/widget/TextView;
    const v27, 0x7f0c0129

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 379
    .local v20, "tvPointCaption":Landroid/widget/TextView;
    const v27, 0x7f0c02a4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 380
    .local v18, "tvPeriodCaption":Landroid/widget/TextView;
    const v27, 0x7f0c02a5

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 382
    .local v17, "tvPeriod":Landroid/widget/TextView;
    const v27, 0x7f0c02b4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 383
    .local v12, "tvCampaignName":Landroid/widget/TextView;
    const v27, 0x7f0c00a6

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 385
    .local v11, "tvCampaignDesc":Landroid/widget/TextView;
    const v27, 0x7f0c02c0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 386
    .local v26, "tvTabMenuDetail":Landroid/widget/TextView;
    const v27, 0x7f0c02c2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 387
    .local v25, "tvTabMenuCondition":Landroid/widget/TextView;
    const v27, 0x7f0c02c4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 388
    .local v24, "tvTabMenuBranch":Landroid/widget/TextView;
    const v27, 0x7f0c02c6

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 389
    .local v14, "tvDetail":Landroid/widget/TextView;
    const v27, 0x7f0c0131

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 390
    .local v13, "tvCondition":Landroid/widget/TextView;
    const v27, 0x7f0c02c9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 392
    .local v7, "tvBranchTemp":Landroid/widget/TextView;
    const v27, 0x7f0c02af

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 393
    .local v9, "tvButtonLike":Landroid/widget/TextView;
    const v27, 0x7f0c02ac

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 394
    .local v8, "tvButtonComment":Landroid/widget/TextView;
    const v27, 0x7f0c02a9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 396
    .local v10, "tvButtonShare":Landroid/widget/TextView;
    const v27, 0x7f0c00be

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 397
    .local v15, "tvError":Landroid/widget/TextView;
    const v27, 0x7f0c0102

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 398
    .local v22, "tvRedeem":Landroid/widget/TextView;
    const v27, 0x7f0c02bb

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 401
    .local v23, "tvRedeemWarning":Landroid/widget/TextView;
    :try_start_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextSize(F)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v27

    const-string v28, "fonts/kit55p.ttf"

    invoke-static/range {v27 .. v28}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 454
    .local v3, "font_kit55p":Landroid/graphics/Typeface;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 455
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 456
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_373
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_373} :catch_3a8

    .line 461
    .end local v3    # "font_kit55p":Landroid/graphics/Typeface;
    :goto_373
    const v27, 0x7f0c029b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 462
    .local v5, "layoutMyPoint":Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v27

    if-eqz v27, :cond_38e

    .line 463
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 471
    :goto_38d
    return-void

    .line 465
    :cond_38e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_3a0

    .line 466
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_38d

    .line 468
    :cond_3a0
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_38d

    .line 457
    .end local v5    # "layoutMyPoint":Landroid/widget/RelativeLayout;
    :catch_3a8
    move-exception v27

    goto :goto_373
.end method

.method private initialLayout(Z)V
    .registers 58
    .param p1, "isFromCache"    # Z

    .prologue
    .line 476
    const v4, 0x7f0c005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 477
    .local v47, "tvHeaderCaption":Landroid/widget/TextView;
    const v4, 0x7f0c02b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 478
    .local v43, "tvCampaignName":Landroid/widget/TextView;
    const v4, 0x7f0c00a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 479
    .local v42, "tvCampaignDesc":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    new-instance v18, Ljava/text/DecimalFormat;

    const-string v4, "###,###,###.##"

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 486
    .local v18, "formatterHasDigi":Ljava/text/NumberFormat;
    const v4, 0x7f0c02b6

    :try_start_4e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    .line 487
    .local v48, "tvLine3":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5cb

    .line 488
    const v4, 0x7f090269

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_76} :catch_5ed

    .line 502
    .end local v48    # "tvLine3":Landroid/widget/TextView;
    :goto_76
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_92

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_670

    .line 504
    :cond_92
    const v4, 0x7f0c02b7

    :try_start_95
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 505
    .local v49, "tvLine4":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->OriginalPrice:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    .line 506
    .local v30, "original_price":D
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " THB"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPaintFlags(I)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_e1} :catch_99c

    .line 513
    .end local v30    # "original_price":D
    .end local v49    # "tvLine4":Landroid/widget/TextView;
    :goto_e1
    const v4, 0x7f0c02b8

    :try_start_e4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    .line 514
    .local v50, "tvLine5":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    .line 515
    .restart local v30    # "original_price":D
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " THB"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_125} :catch_999

    .line 526
    .end local v30    # "original_price":D
    .end local v50    # "tvLine5":Landroid/widget/TextView;
    :goto_125
    const v4, 0x7f0c02c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/TextView;

    .line 527
    .local v45, "tvDetail":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    const-string v7, "<br>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_694

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :goto_14d
    const v4, 0x7f0c0131

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    .line 534
    .local v44, "tvCondition":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    const-string v7, "<br>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a1

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :goto_175
    const v4, 0x7f0c02af

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 541
    .local v41, "tvButtonLike":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    invoke-static {v7}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " Likes"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    const v4, 0x7f0c02ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 544
    .local v40, "tvButtonComment":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->Buzz:I

    invoke-static {v7}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " Comments"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    const v4, 0x7f0c02ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 547
    .local v19, "imgButtonLike":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v4, v4, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-eqz v4, :cond_6ae

    .line 548
    const v4, 0x7f020364

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 555
    :goto_1ea
    const v4, 0x7f0c0102

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 556
    .local v52, "tvRedeem":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b8

    .line 557
    const v4, 0x7f090300

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    :goto_211
    const/16 v22, 0x1

    .line 563
    .local v22, "isChangeCaption":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "8"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v4, v4, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-nez v4, :cond_6c8

    .line 564
    const/16 v22, 0x1

    .line 571
    :goto_22b
    if-eqz v22, :cond_24e

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    if-eqz v4, :cond_24e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24e

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :cond_24e
    const v4, 0x7f0c02b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 578
    .local v28, "layoutToolBottom":Landroid/widget/LinearLayout;
    const v4, 0x7f0c02ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 579
    .local v23, "layoutButtonRedeem":Landroid/widget/LinearLayout;
    const v4, 0x7f0c02bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    .line 580
    .local v26, "layoutError":Landroid/widget/RelativeLayout;
    const v4, 0x7f0c02a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 581
    .local v24, "layoutButtonShare":Landroid/widget/LinearLayout;
    const v4, 0x7f0c02bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    .line 582
    .local v53, "tvRedeemWarning":Landroid/widget/TextView;
    const v4, 0x7f0c00be

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    .line 583
    .local v46, "tvError":Landroid/widget/TextView;
    if-eqz p1, :cond_6e6

    .line 584
    const/16 v4, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    const/16 v4, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 637
    :goto_2a0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    if-eqz v4, :cond_2d6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d6

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "N/A"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d6

    .line 639
    const/16 v4, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    const/16 v4, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 644
    :cond_2d6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "402705486466922"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_990

    .line 645
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 650
    :goto_2ec
    const v4, 0x7f0c012a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvPoint:Landroid/widget/TextView;

    .line 651
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v4, "#,###,###"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 652
    .local v17, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v32

    .line 653
    .local v32, "points":J
    const-wide/16 v10, 0x0

    cmp-long v4, v32, v10

    if-lez v4, :cond_321

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvPoint:Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    :cond_321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 658
    .local v16, "cal":Ljava/util/Calendar;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v54

    .line 660
    .local v54, "tz":Ljava/util/TimeZone;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd MMM yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v4, v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v10, v10, Lcom/samsung/privilege/bean/CampaignView;->StartDate:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/privilege/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {v54 .. v54}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    div-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v38

    .line 661
    .local v38, "strStartDate":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd MMM yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v4, v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v10, v10, Lcom/samsung/privilege/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/privilege/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {v54 .. v54}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    div-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v34

    .line 663
    .local v34, "strExpireDate":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 664
    .local v29, "period":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "1109"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_480

    .line 665
    const-string v4, "Jan"

    const v7, 0x7f09036d

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 666
    const-string v4, "Feb"

    const v7, 0x7f09036e

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 667
    const-string v4, "Mar"

    const v7, 0x7f09036f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 668
    const-string v4, "Apr"

    const v7, 0x7f090370

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 669
    const-string v4, "May"

    const v7, 0x7f090371

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 670
    const-string v4, "Jun"

    const v7, 0x7f090372

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 671
    const-string v4, "Jul"

    const v7, 0x7f090373

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 672
    const-string v4, "Aug"

    const v7, 0x7f090374

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 673
    const-string v4, "Sep"

    const v7, 0x7f090375

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 674
    const-string v4, "Oct"

    const v7, 0x7f090376

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 675
    const-string v4, "Nov"

    const v7, 0x7f090377

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 676
    const-string v4, "Dec"

    const v7, 0x7f090378

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 678
    :cond_480
    const v4, 0x7f0c02a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/TextView;

    .line 679
    .local v51, "tvPeriod":Landroid/widget/TextView;
    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "api/agency/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/picture"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 682
    .local v5, "img_campaign_agency":Ljava/lang/String;
    const-string v4, "https"

    const-string v7, "http"

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 683
    if-eqz v5, :cond_4e0

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e0

    .line 684
    const v4, 0x7f0c02b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 685
    .local v6, "imgAgency":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v7, 0x0

    const v8, 0x7f0203a7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 688
    .end local v6    # "imgAgency":Landroid/widget/ImageView;
    :cond_4e0
    sget-object v55, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    .line 689
    .local v55, "urlPrefix":Ljava/lang/String;
    const-string v4, "/"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f9

    .line 690
    const/4 v4, 0x0

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v55

    .line 693
    :cond_4f9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadImaged:Z

    if-nez v4, :cond_5a5

    .line 694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v4}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlThumb()Ljava/lang/String;

    move-result-object v8

    .line 695
    .local v8, "img_campaign_thumbnail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v4}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v21

    .line 697
    .local v21, "img_campaign_large":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x6

    if-lt v4, v7, :cond_568

    .line 698
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v55 .. v55}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "?type=thumbnail"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 699
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v55 .. v55}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "?type=large"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 702
    :cond_568
    const v4, 0x7f0c01c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 703
    .local v9, "imgCampaignThumb":Landroid/widget/ImageView;
    const v4, 0x7f0c02b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 705
    .local v20, "imgCampaignBig":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    const v11, 0x7f0203a7

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 706
    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v13, 0x0

    const v14, 0x7f0203a7

    const/4 v15, 0x0

    move-object/from16 v11, v21

    move-object/from16 v12, v20

    invoke-virtual/range {v10 .. v15}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 708
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadImaged:Z

    .line 711
    .end local v8    # "img_campaign_thumbnail":Ljava/lang/String;
    .end local v9    # "imgCampaignThumb":Landroid/widget/ImageView;
    .end local v20    # "imgCampaignBig":Landroid/widget/ImageView;
    .end local v21    # "img_campaign_large":Ljava/lang/String;
    :cond_5a5
    const v4, 0x7f0c029f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    .line 712
    .local v25, "layoutCenter":Landroid/widget/RelativeLayout;
    const v4, 0x7f0c02a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ScrollView;

    .line 713
    .local v27, "layoutScrollView":Landroid/widget/ScrollView;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 714
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doInitialBranch()V

    .line 717
    return-void

    .line 489
    .end local v5    # "img_campaign_agency":Ljava/lang/String;
    .end local v16    # "cal":Ljava/util/Calendar;
    .end local v17    # "formatter":Ljava/text/DecimalFormat;
    .end local v19    # "imgButtonLike":Landroid/widget/ImageView;
    .end local v22    # "isChangeCaption":Z
    .end local v23    # "layoutButtonRedeem":Landroid/widget/LinearLayout;
    .end local v24    # "layoutButtonShare":Landroid/widget/LinearLayout;
    .end local v25    # "layoutCenter":Landroid/widget/RelativeLayout;
    .end local v26    # "layoutError":Landroid/widget/RelativeLayout;
    .end local v27    # "layoutScrollView":Landroid/widget/ScrollView;
    .end local v28    # "layoutToolBottom":Landroid/widget/LinearLayout;
    .end local v29    # "period":Ljava/lang/String;
    .end local v32    # "points":J
    .end local v34    # "strExpireDate":Ljava/lang/String;
    .end local v38    # "strStartDate":Ljava/lang/String;
    .end local v40    # "tvButtonComment":Landroid/widget/TextView;
    .end local v41    # "tvButtonLike":Landroid/widget/TextView;
    .end local v44    # "tvCondition":Landroid/widget/TextView;
    .end local v45    # "tvDetail":Landroid/widget/TextView;
    .end local v46    # "tvError":Landroid/widget/TextView;
    .end local v51    # "tvPeriod":Landroid/widget/TextView;
    .end local v52    # "tvRedeem":Landroid/widget/TextView;
    .end local v53    # "tvRedeemWarning":Landroid/widget/TextView;
    .end local v54    # "tz":Ljava/util/TimeZone;
    .end local v55    # "urlPrefix":Ljava/lang/String;
    .restart local v48    # "tvLine3":Landroid/widget/TextView;
    :cond_5cb
    :try_start_5cb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f0

    .line 490
    const v4, 0x7f090268

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    .line 498
    .end local v48    # "tvLine3":Landroid/widget/TextView;
    :catch_5ed
    move-exception v4

    goto/16 :goto_76

    .line 491
    .restart local v48    # "tvLine3":Landroid/widget/TextView;
    :cond_5f0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_645

    .line 492
    :cond_60c
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "0"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v10, v10, Lcom/samsung/privilege/bean/CampaignView;->Discount:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    .line 493
    :cond_645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "7"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_667

    .line 494
    const v4, 0x7f09026b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    .line 496
    :cond_667
    const-string v4, ""

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_66e
    .catch Ljava/lang/Exception; {:try_start_5cb .. :try_end_66e} :catch_5ed

    goto/16 :goto_76

    .line 520
    .end local v48    # "tvLine3":Landroid/widget/TextView;
    :cond_670
    const v4, 0x7f0c02b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 521
    .restart local v49    # "tvLine4":Landroid/widget/TextView;
    const v4, 0x7f0c02b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    .line 522
    .restart local v50    # "tvLine5":Landroid/widget/TextView;
    const/4 v4, 0x4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    const/4 v4, 0x4

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_125

    .line 530
    .end local v49    # "tvLine4":Landroid/widget/TextView;
    .end local v50    # "tvLine5":Landroid/widget/TextView;
    .restart local v45    # "tvDetail":Landroid/widget/TextView;
    :cond_694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14d

    .line 537
    .restart local v44    # "tvCondition":Landroid/widget/TextView;
    :cond_6a1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_175

    .line 551
    .restart local v19    # "imgButtonLike":Landroid/widget/ImageView;
    .restart local v40    # "tvButtonComment":Landroid/widget/TextView;
    .restart local v41    # "tvButtonLike":Landroid/widget/TextView;
    :cond_6ae
    const v4, 0x7f020363

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1ea

    .line 559
    .restart local v52    # "tvRedeem":Landroid/widget/TextView;
    :cond_6b8
    const v4, 0x7f0902ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_211

    .line 565
    .restart local v22    # "isChangeCaption":Z
    :cond_6c8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "8"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v4, v4, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-eqz v4, :cond_6e2

    .line 566
    const/16 v22, 0x0

    .line 567
    goto/16 :goto_22b

    .line 568
    :cond_6e2
    const/16 v22, 0x1

    goto/16 :goto_22b

    .line 587
    .restart local v23    # "layoutButtonRedeem":Landroid/widget/LinearLayout;
    .restart local v24    # "layoutButtonShare":Landroid/widget/LinearLayout;
    .restart local v26    # "layoutError":Landroid/widget/RelativeLayout;
    .restart local v28    # "layoutToolBottom":Landroid/widget/LinearLayout;
    .restart local v46    # "tvError":Landroid/widget/TextView;
    .restart local v53    # "tvRedeemWarning":Landroid/widget/TextView;
    :cond_6e6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->checkRedeemError(Z)Ljava/lang/String;

    move-result-object v37

    .line 588
    .local v37, "strRedeemError":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_724

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    sget v7, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    sget v7, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_724

    .line 590
    :cond_71b
    const v4, 0x7f09031a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 593
    :cond_724
    if-eqz v37, :cond_75a

    const-string v4, ""

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75a

    .line 594
    const/16 v4, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    move-object/from16 v0, v46

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 597
    const/16 v4, 0x8

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    const/16 v4, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 634
    :goto_752
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2a0

    .line 600
    :cond_75a
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 601
    const/16 v4, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/privilege/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-lez v4, :cond_8db

    .line 604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/privilege/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    .line 606
    .local v35, "strPoint":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v7, 0x7f09036a

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 607
    .local v36, "strPointUnit":Ljava/lang/String;
    const-string v4, "1"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c5

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v7, 0x7f09036b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 611
    :cond_7c5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7db

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    if-nez v4, :cond_80a

    .line 612
    :cond_7db
    new-instance v4, Ljava/lang/StringBuilder;

    const v7, 0x7f090310

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 614
    :cond_80a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    const/16 v7, 0x3c

    if-ne v4, v7, :cond_856

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    const v7, 0x7f090301

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090310

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 617
    :cond_856
    new-instance v4, Ljava/lang/StringBuilder;

    const v7, 0x7f090302

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090303

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090304

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 618
    .local v39, "strWarning":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090310

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 622
    .end local v35    # "strPoint":Ljava/lang/String;
    .end local v36    # "strPointUnit":Ljava/lang/String;
    .end local v39    # "strWarning":Ljava/lang/String;
    :cond_8db
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    if-nez v4, :cond_921

    .line 623
    :cond_8f1
    new-instance v4, Ljava/lang/StringBuilder;

    const v7, 0x7f090310

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " 0 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f09036b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 625
    :cond_921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    const/16 v7, 0x3c

    if-ne v4, v7, :cond_93b

    .line 626
    const v4, 0x7f090301

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 628
    :cond_93b
    new-instance v4, Ljava/lang/StringBuilder;

    const v7, 0x7f090302

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090303

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090304

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 629
    .restart local v39    # "strWarning":Ljava/lang/String;
    move-object/from16 v0, v53

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 647
    .end local v37    # "strRedeemError":Ljava/lang/String;
    .end local v39    # "strWarning":Ljava/lang/String;
    :cond_990
    const/16 v4, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2ec

    .line 516
    .end local v19    # "imgButtonLike":Landroid/widget/ImageView;
    .end local v22    # "isChangeCaption":Z
    .end local v23    # "layoutButtonRedeem":Landroid/widget/LinearLayout;
    .end local v24    # "layoutButtonShare":Landroid/widget/LinearLayout;
    .end local v26    # "layoutError":Landroid/widget/RelativeLayout;
    .end local v28    # "layoutToolBottom":Landroid/widget/LinearLayout;
    .end local v40    # "tvButtonComment":Landroid/widget/TextView;
    .end local v41    # "tvButtonLike":Landroid/widget/TextView;
    .end local v44    # "tvCondition":Landroid/widget/TextView;
    .end local v45    # "tvDetail":Landroid/widget/TextView;
    .end local v46    # "tvError":Landroid/widget/TextView;
    .end local v52    # "tvRedeem":Landroid/widget/TextView;
    .end local v53    # "tvRedeemWarning":Landroid/widget/TextView;
    :catch_999
    move-exception v4

    goto/16 :goto_125

    .line 508
    :catch_99c
    move-exception v4

    goto/16 :goto_e1
.end method

.method private initialParam()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    .line 344
    const-string v1, "nfc_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/NFCTag;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 346
    iput-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramFromList:Z

    .line 348
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    if-lez v1, :cond_63

    .line 349
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v1, :cond_4a

    .line 350
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramFromList:Z

    .line 351
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-direct {p0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 352
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    :cond_49
    :goto_49
    return-void

    .line 354
    :cond_4a
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    invoke-direct {p0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 355
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_49

    .line 358
    :cond_63
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 359
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    if-eqz v1, :cond_49

    .line 360
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->initialLayout(Z)V

    .line 362
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v1, v1, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 363
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_49
.end method

.method private outToBottomAnimationSet()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2119
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2121
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2122
    .local v0, "outToBottom":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2123
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2124
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2126
    return-object v9
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2101
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2102
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2103
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2104
    return-object v0
.end method

.method private outToTopAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 832
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 833
    .local v0, "outToTop":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 834
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 835
    return-object v0
.end method

.method private processLikeAction()V
    .registers 2

    .prologue
    .line 1181
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1208
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 329
    const-string v0, "buzzebees.market"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 331
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 332
    const-string v0, "paramNFCTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCTag;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 333
    const-string v0, "paramCampaignID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    .line 334
    const-string v0, "paramFromList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramFromList:Z

    .line 336
    const-string v0, "doRedeeming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    .line 337
    const-string v0, "isContinueUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->isContinueUrl:Z

    .line 339
    :cond_43
    return-void
.end method

.method private showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1211
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_44

    .line 1212
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1214
    .local v1, "dialogInfo":Landroid/app/Dialog;
    const v3, 0x7f0300dc

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1215
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1217
    const v3, 0x7f460003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1218
    .local v2, "tvMessage":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1219
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1220
    const v3, 0x7f460004

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1222
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$6;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1234
    .end local v0    # "btnClose":Landroid/widget/Button;
    .end local v1    # "dialogInfo":Landroid/app/Dialog;
    .end local v2    # "tvMessage":Landroid/widget/TextView;
    :cond_44
    return-void
.end method

.method private showRedeem(Ljava/lang/String;)V
    .registers 12
    .param p1, "pCustomInput"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 1693
    const-string v6, ""

    const v7, 0x7f09018d

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7, v9, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1696
    :try_start_10
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1697
    .local v3, "mMessageView":Landroid/widget/TextView;
    if-eqz v3, :cond_2d

    .line 1698
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1699
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_105

    .line 1705
    .end local v3    # "mMessageView":Landroid/widget/TextView;
    :cond_2d
    :goto_2d
    if-eqz p1, :cond_104

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_104

    .line 1706
    new-instance v2, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1707
    .local v2, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1711
    .local v0, "carrier":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "api/campaign/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/redeem?token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&carrier="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1713
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 1714
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1715
    .local v1, "date":Ljava/util/Date;
    const-string v6, "REDEEM"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<font color=blue>REDEEM_RQ{"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}<br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1716
    const-string v6, "REDEEM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "</font><br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1719
    .end local v1    # "date":Ljava/util/Date;
    :cond_f4
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1720
    .local v4, "params":Lcom/loopj/android/http/RequestParams;
    new-instance v6, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v9, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/bean/CampaignView;ZZ)V

    invoke-static {v5, v4, v6}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1722
    .end local v0    # "carrier":Ljava/lang/String;
    .end local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v4    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v5    # "url":Ljava/lang/String;
    :cond_104
    return-void

    .line 1701
    :catch_105
    move-exception v6

    goto/16 :goto_2d
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1106
    return-void
.end method

.method private smallToBig1Animation()Landroid/view/animation/Animation;
    .registers 8

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 2087
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterX:F

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterY:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2088
    .local v0, "smallToBig":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2089
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2090
    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->finish()V

    .line 1110
    return-void
.end method

.method public doComment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1113
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1115
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V

    .line 1116
    return-void
.end method

.method public doGetDirections(Lcom/samsung/privilege/bean/PlaceNewDetail;)V
    .registers 11
    .param p1, "pCurrentPlaceNewDetail"    # Lcom/samsung/privilege/bean/PlaceNewDetail;

    .prologue
    .line 2676
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gFoundLocation="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFoundLocation:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doGetDirections:latitude="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",longitude="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    if-eqz p1, :cond_82

    .line 2682
    iget v6, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F

    float-to-double v2, v6

    .line 2683
    .local v2, "latitude_daddr":D
    iget v6, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F

    float-to-double v4, v6

    .line 2688
    .local v4, "longitude_daddr":D
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://maps.google.com/maps?daddr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2689
    .local v1, "uri":Ljava/lang/String;
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uri="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2691
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "com.google.android.apps.maps"

    const-string v7, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2692
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V

    .line 2694
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "latitude_daddr":D
    .end local v4    # "longitude_daddr":D
    :cond_82
    return-void
.end method

.method public doHome(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1967
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->PlayAnimationFinish()V

    .line 1968
    return-void
.end method

.method public doLike(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1121
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$4;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1139
    return-void
.end method

.method public doLikeAnimation(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 1906
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1907
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-nez v2, :cond_38

    .line 1908
    const v2, 0x7f0c02ad

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1910
    .local v0, "layoutLike":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1911
    .local v1, "likeClickAnimation1":Landroid/view/animation/Animation;
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1912
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1913
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1915
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1916
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1963
    .end local v0    # "layoutLike":Landroid/widget/LinearLayout;
    .end local v1    # "likeClickAnimation1":Landroid/view/animation/Animation;
    :goto_37
    return-void

    .line 1957
    :cond_38
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->processLikeAction()V

    .line 1958
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doLike(Landroid/view/View;)V

    goto :goto_37

    .line 1961
    :cond_40
    const v2, 0x7f090309

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V

    goto :goto_37
.end method

.method public doMyPoint(Landroid/view/View;)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40000000

    .line 1971
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1972
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1973
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1974
    .local v1, "height":I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1975
    .local v7, "width":I
    int-to-float v8, v7

    div-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterX:F

    .line 1976
    int-to-float v8, v1

    div-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterY:F

    .line 1978
    const/high16 v8, 0x7f3d0000

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1979
    .local v4, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    const v8, 0x7f3d0001

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1980
    .local v2, "imagePopupMyPoint":Landroid/widget/ImageView;
    const v8, 0x7f3d0002

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1982
    .local v3, "layoutButton":Landroid/widget/LinearLayout;
    const v8, 0x7f3d0005

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1983
    .local v6, "tvClose":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1984
    const-string v8, "Close"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1054"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 1999
    const v8, 0x7f020357

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2008
    :goto_62
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$11;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$11;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2015
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->smallToBig1Animation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 2016
    .local v5, "smallToBig1":Landroid/view/animation/Animation;
    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2017
    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2018
    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2019
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2020
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2022
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12;

    invoke-direct {v8, p0, v3, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2046
    return-void

    .line 2000
    .end local v5    # "smallToBig1":Landroid/view/animation/Animation;
    :cond_89
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1108"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 2001
    const v8, 0x7f020355

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 2002
    :cond_a0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1109"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 2003
    const v8, 0x7f020356

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 2005
    :cond_b7
    const v8, 0x7f020354

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62
.end method

.method public doMyPointClose(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2049
    const/high16 v4, 0x7f3d0000

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2050
    .local v3, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    const v4, 0x7f3d0001

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2051
    .local v1, "imagePopupMyPoint":Landroid/widget/ImageView;
    const v4, 0x7f3d0002

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2053
    .local v2, "layoutButton":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->bigToSmallAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2054
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2055
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2056
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2057
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2059
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2084
    return-void
.end method

.method public doRedeem(Landroid/view/View;)V
    .registers 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1494
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v12, "8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v11, v11, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-nez v11, :cond_18

    .line 1495
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V

    .line 1603
    :goto_17
    return-void

    .line 1499
    :cond_18
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v12, "7"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 1500
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->goBooking(Lcom/samsung/privilege/bean/CampaignView;)V

    goto :goto_17

    .line 1504
    :cond_2a
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Delivered:Z

    if-eqz v11, :cond_d2

    .line 1505
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8a

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8a

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8a

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8a

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8a

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d2

    .line 1506
    :cond_8a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1507
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v11, 0x7f09025d

    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f09025e

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900b2

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$8;

    invoke-direct {v13, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$8;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 1513
    const v12, 0x7f0900b3

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$9;

    invoke-direct {v13, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$9;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1518
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1519
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_17

    .line 1524
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_d2
    iget-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    if-eqz v11, :cond_df

    .line 1525
    const-string v11, "campaign.detail"

    const-string v12, "if (doRedeeming == true) {"

    invoke-static {v11, v12}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 1527
    :cond_df
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    .line 1528
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->checkRedeemError(Z)Ljava/lang/String;

    move-result-object v8

    .line 1530
    .local v8, "strRedeemError":Ljava/lang/String;
    if-eqz v8, :cond_fa

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_fa

    .line 1531
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-direct {p0, v11, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 1533
    :cond_fa
    new-instance v3, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 1535
    .local v3, "cd":Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
    invoke-virtual {v3}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;->isConnectingToInternet()Z

    move-result v11

    if-nez v11, :cond_113

    .line 1536
    const-string v11, "No internet connection!"

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V

    .line 1537
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    goto/16 :goto_17

    .line 1539
    :cond_113
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1541
    .local v9, "token":Ljava/lang/String;
    if-eqz v9, :cond_2fd

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2fd

    .line 1543
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    if-eqz v11, :cond_147

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_147

    .line 1544
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v13, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v14, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-static {p0, v11, v12, v13, v14}, Lcom/samsung/privilege/util/DialogUtil;->showDialogContinueUrl(Landroid/app/Activity;Landroid/os/Handler;Lcom/samsung/privilege/bean/CampaignView;Lcom/bitmapfun/util/ImageFetcher;Lcom/samsung/privilege/bean/NFCTag;)V

    .line 1545
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    goto/16 :goto_17

    .line 1547
    :cond_147
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->isContinueUrl:Z

    .line 1549
    new-instance v5, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1550
    .local v5, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1554
    .local v2, "carrier":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "api/campaign/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v12, v12, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/redeem?token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&carrier="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1555
    .local v10, "url":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v11, :cond_202

    .line 1556
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-boolean v11, v11, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v11, :cond_297

    .line 1557
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "&nfc=write_back"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1561
    :goto_1a9
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-boolean v11, v11, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v11, :cond_2ac

    .line 1562
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "&redeem_media=nfc_write_back"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1566
    :goto_1c2
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v11, v11, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    if-eqz v11, :cond_202

    .line 1567
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "&location_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v12, v12, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v12, v12, Lcom/samsung/privilege/bean/NFCResult;->location_id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1568
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "&info1="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v12, v12, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v12, v12, Lcom/samsung/privilege/bean/NFCResult;->nfc_info:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1571
    :cond_202
    const-string v11, "campaign.detail"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "(doBuy)url="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_27f

    .line 1573
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1574
    .local v4, "date":Ljava/util/Date;
    const-string v11, "REDEEM"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "<font color=blue>REDEEM_RQ{"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "}{"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v13, v13, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v13, v13, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "}<br>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1575
    const-string v11, "REDEEM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "</font><br>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1578
    .end local v4    # "date":Ljava/util/Date;
    :cond_27f
    new-instance v7, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v7}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1579
    .local v7, "params":Lcom/loopj/android/http/RequestParams;
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v12, "3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c1

    .line 1580
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V

    goto/16 :goto_17

    .line 1559
    .end local v7    # "params":Lcom/loopj/android/http/RequestParams;
    :cond_297
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "&nfc=read"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1a9

    .line 1564
    :cond_2ac
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "&redeem_media=nfc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1c2

    .line 1582
    .restart local v7    # "params":Lcom/loopj/android/http/RequestParams;
    :cond_2c1
    const-string v11, ""

    const v12, 0x7f09018d

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {p0, v11, v12, v13, v14}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1585
    :try_start_2d2
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;

    const v12, 0x102000b

    invoke-virtual {v11, v12}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1586
    .local v6, "mMessageView":Landroid/widget/TextView;
    if-eqz v6, :cond_2ef

    .line 1587
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1588
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_2ef
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2ef} :catch_302

    .line 1594
    .end local v6    # "mMessageView":Landroid/widget/TextView;
    :cond_2ef
    :goto_2ef
    new-instance v11, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    iget-object v12, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v11, p0, v12, v13, v14}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/bean/CampaignView;ZZ)V

    invoke-static {v10, v7, v11}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_17

    .line 1598
    .end local v2    # "carrier":Ljava/lang/String;
    .end local v5    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v7    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v10    # "url":Ljava/lang/String;
    :cond_2fd
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    goto/16 :goto_17

    .line 1590
    .restart local v2    # "carrier":Ljava/lang/String;
    .restart local v5    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v7    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v10    # "url":Ljava/lang/String;
    :catch_302
    move-exception v11

    goto :goto_2ef
.end method

.method public doRedeemXXX(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1483
    invoke-static {p0}, Lcom/samsung/privilege/util/DialogBooking;->showDialogBooking(Landroid/content/Context;)V

    .line 1484
    return-void
.end method

.method public doShare(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1410
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1411
    const v4, 0x7f090339

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1477
    :goto_1b
    return-void

    .line 1413
    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1414
    .local v1, "params":Landroid/os/Bundle;
    const-string v4, "app_id"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v4, "to"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v4, "name"

    const v5, 0x7f090312

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v4, "picture"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://buzzebees.blob.core.windows.net/campaigns/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string v4, "link"

    const-string v5, "http://play.google.com/store/apps/details?id=com.samsung.privilege"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v4, "caption"

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v4, "description"

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 1431
    .local v2, "session":Lcom/facebook/Session;
    if-nez v2, :cond_82

    .line 1432
    invoke-static {p0, v7}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    goto :goto_1b

    .line 1434
    :cond_82
    new-instance v0, Lcom/facebook/widget/WebDialog$Builder;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    const-string v5, "feed"

    invoke-direct {v0, p0, v4, v5, v1}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1435
    .local v0, "builder":Lcom/facebook/widget/WebDialog$Builder;
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$7;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$7;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v0, v4}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 1473
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v3

    .line 1474
    .local v3, "webDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v3}, Lcom/facebook/widget/WebDialog;->show()V

    goto/16 :goto_1b
.end method

.method public doTabMenuBranch(Landroid/view/View;)V
    .registers 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0200ba

    const/16 v12, 0x8

    const/16 v10, 0xaf

    .line 797
    const v9, 0x7f0c02bf

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 798
    .local v5, "layoutTabMenuDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c1

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 799
    .local v4, "layoutTabMenuCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c3

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 800
    .local v3, "layoutTabMenuBranch":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c0

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 801
    .local v8, "tvTabMenuDetail":Landroid/widget/TextView;
    const v9, 0x7f0c02c2

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 802
    .local v7, "tvTabMenuCondition":Landroid/widget/TextView;
    const v9, 0x7f0c02c4

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 803
    .local v6, "tvTabMenuBranch":Landroid/widget/TextView;
    const v9, 0x7f0c02c5

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 804
    .local v2, "layoutContentDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c7

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 805
    .local v1, "layoutContentCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c8

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 807
    .local v0, "layoutContentBranch":Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 808
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 809
    const v9, 0x7f0200bb

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 811
    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 812
    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 813
    const/16 v9, 0x23

    const/16 v10, 0x1f

    const/16 v11, 0x20

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 815
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 816
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 817
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 818
    return-void
.end method

.method public doTabMenuCondition(Landroid/view/View;)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0200ba

    const/16 v13, 0x8

    const/16 v12, 0xaf

    .line 773
    const v9, 0x7f0c02bf

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 774
    .local v5, "layoutTabMenuDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c1

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 775
    .local v4, "layoutTabMenuCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c3

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 776
    .local v3, "layoutTabMenuBranch":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c0

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 777
    .local v8, "tvTabMenuDetail":Landroid/widget/TextView;
    const v9, 0x7f0c02c2

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 778
    .local v7, "tvTabMenuCondition":Landroid/widget/TextView;
    const v9, 0x7f0c02c4

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 779
    .local v6, "tvTabMenuBranch":Landroid/widget/TextView;
    const v9, 0x7f0c02c5

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 780
    .local v2, "layoutContentDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c7

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 781
    .local v1, "layoutContentCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c8

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 783
    .local v0, "layoutContentBranch":Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 784
    const v9, 0x7f0200bb

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 785
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 787
    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 788
    const/16 v9, 0x23

    const/16 v10, 0x1f

    const/16 v11, 0x20

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 789
    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 791
    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 792
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 793
    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 794
    return-void
.end method

.method public doTabMenuDetail(Landroid/view/View;)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0200ba

    const/16 v13, 0x8

    const/16 v12, 0xaf

    .line 749
    const v9, 0x7f0c02bf

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 750
    .local v5, "layoutTabMenuDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c1

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 751
    .local v4, "layoutTabMenuCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c3

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 752
    .local v3, "layoutTabMenuBranch":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c0

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 753
    .local v8, "tvTabMenuDetail":Landroid/widget/TextView;
    const v9, 0x7f0c02c2

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 754
    .local v7, "tvTabMenuCondition":Landroid/widget/TextView;
    const v9, 0x7f0c02c4

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 755
    .local v6, "tvTabMenuBranch":Landroid/widget/TextView;
    const v9, 0x7f0c02c5

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 756
    .local v2, "layoutContentDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c7

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 757
    .local v1, "layoutContentCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0c02c8

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 759
    .local v0, "layoutContentBranch":Landroid/widget/RelativeLayout;
    const v9, 0x7f0200bb

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 760
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 761
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 763
    const/16 v9, 0x23

    const/16 v10, 0x1f

    const/16 v11, 0x20

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 767
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 768
    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 769
    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 770
    return-void
.end method

.method public getLocationByGPS()V
    .registers 9

    .prologue
    .line 2228
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$15;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2237
    new-instance v0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    .line 2240
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->canGetLocation()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2241
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLat:D

    .line 2242
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLon:D

    .line 2244
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gCurrentLat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gCurrentLon "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLon:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLat:D

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLon:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->fetchPlaces(ZDD)V

    .line 2248
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->stopUsingGPS()V

    .line 2277
    :goto_63
    return-void

    .line 2253
    :cond_64
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->showSettingsAlert()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_63

    .line 2255
    :catch_6a
    move-exception v6

    .line 2256
    .local v6, "e":Ljava/lang/Exception;
    const v0, 0x7f090320

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2257
    .local v7, "error":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2260
    :cond_9b
    invoke-direct {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V

    .line 2262
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$16;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$16;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_63
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 721
    if-ne p2, v3, :cond_70

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_BEAM:I

    if-ne p1, v2, :cond_70

    .line 722
    const-string v2, "NextNFCTag"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCTag;

    .line 723
    .local v0, "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    if-eqz v0, :cond_29

    .line 724
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Status"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 725
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Status(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    .line 746
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_29
    :goto_29
    return-void

    .line 726
    .restart local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_2a
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Share"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 727
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, v4, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_29

    .line 728
    :cond_42
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CheckIn"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 729
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_CheckIn(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_29

    .line 730
    :cond_5a
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReDeem"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 731
    invoke-static {v0, p0}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto :goto_29

    .line 734
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_70
    if-ne p2, v3, :cond_8d

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    if-ne p1, v2, :cond_8d

    .line 735
    const-string v2, "bzbs_return_url"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, "return_url":Ljava/lang/String;
    if-eqz v1, :cond_29

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 737
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->isContinueUrl:Z

    .line 738
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showRedeem(Ljava/lang/String;)V

    goto :goto_29

    .line 740
    .end local v1    # "return_url":Ljava/lang/String;
    :cond_8d
    if-ne p2, v3, :cond_93

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BUY_POINT:I

    if-eq p1, v2, :cond_29

    .line 742
    :cond_93
    if-ne p2, v3, :cond_29

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BOOKING:I

    if-ne p1, v2, :cond_29

    .line 743
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPoints()V

    .line 744
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    goto/16 :goto_29
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    if-eqz p1, :cond_100

    .line 169
    const-string v8, "buzzebees.market"

    const-string v9, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_c
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->requestWindowFeature(I)Z

    .line 175
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 183
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 186
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 187
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 189
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "cache_gift"

    invoke-direct {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3e800000

    invoke-virtual {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 191
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 192
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 193
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gScreenHeight:I

    .line 194
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gScreenWidth:I

    .line 196
    iget v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gScreenWidth:I

    .line 197
    .local v7, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gScreenHeight:I

    .line 199
    .local v2, "height":I
    if-le v2, v7, :cond_109

    .end local v2    # "height":I
    :goto_73
    div-int/lit8 v5, v2, 0x2

    .line 200
    .local v5, "longest":I
    new-instance v8, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 201
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v9, 0x7f0203a7

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 202
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 203
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 206
    const v8, 0x7f0300b1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->setContentView(I)V

    .line 208
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    .line 209
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    .line 211
    const v8, 0x7f0c0031

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 212
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "768830479847872"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10c

    .line 213
    const v8, 0x7f0202b8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    :goto_d5
    const v8, 0x7f0c005a

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 223
    .local v4, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_141

    .line 224
    const v8, 0x7f0202bc

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    :goto_ee
    const v8, 0x7f0c02ca

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    .line 234
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->initialFont()V

    .line 235
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->initialParam()V

    .line 244
    return-void

    .line 171
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "imgFlag":Landroid/widget/ImageView;
    .end local v4    # "imgLogo":Landroid/widget/ImageView;
    .end local v5    # "longest":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "width":I
    :cond_100
    const-string v8, "buzzebees.market"

    const-string v9, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "width":I
    :cond_109
    move v2, v7

    .line 199
    goto/16 :goto_73

    .line 214
    .end local v2    # "height":I
    .restart local v3    # "imgFlag":Landroid/widget/ImageView;
    .restart local v5    # "longest":I
    :cond_10c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1525635597652592"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_123

    .line 215
    const v8, 0x7f0202b7

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 216
    :cond_123
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "517155661760483"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    .line 217
    const v8, 0x7f0202b9

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 219
    :cond_13a
    const v8, 0x7f0202ba

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 226
    .restart local v4    # "imgLogo":Landroid/widget/ImageView;
    :cond_141
    const v8, 0x7f0202bb

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_ee
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 299
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 300
    const-string v0, "buzzebees.market"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 303
    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 304
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 248
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1d

    .line 249
    const v1, 0x7f0c02cb

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 250
    .local v0, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    .line 251
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doMyPointClose(Landroid/view/View;)V

    .line 252
    const/4 v1, 0x1

    .line 257
    .end local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :goto_17
    return v1

    .line 255
    .restart local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_17

    .line 257
    .end local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_17
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 279
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 281
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 282
    const-string v0, "buzzebees.market"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 293
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 294
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 325
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 269
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 271
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPoints()V

    .line 273
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 274
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    const-string v0, "buzzebees.market"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 314
    const-string v0, "paramNFCTag"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 315
    const-string v0, "paramCampaignID"

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string v0, "paramFromList"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramFromList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    const-string v0, "doRedeeming"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    const-string v0, "isContinueUrl"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->isContinueUrl:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 263
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 264
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 288
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method
