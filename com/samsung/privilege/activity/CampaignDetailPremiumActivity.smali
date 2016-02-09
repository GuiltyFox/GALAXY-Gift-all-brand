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

    .line 112
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 113
    const-string v0, "campaign.detail"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->LOGCAT:Ljava/lang/String;

    .line 114
    const-class v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->formatter:Ljava/text/NumberFormat;

    .line 120
    iput v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    .line 139
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFoundLocation:Z

    .line 143
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadingMore:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsHasData:Z

    .line 145
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListPerPage:I

    .line 155
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsPlayDetailAnimation:Z

    .line 157
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_BEAM:I

    .line 158
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    .line 159
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BUY_POINT:I

    .line 160
    const/16 v0, 0x28

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BOOKING:I

    .line 472
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadImaged:Z

    .line 1478
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    .line 1479
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->isContinueUrl:Z

    .line 2329
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    .line 2695
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCacheCampaign:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private GetProfileData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2814
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

    .line 2815
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetProfileAddressListener;)V

    invoke-static {v0, v1, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 2816
    return-void
.end method

.method private PlayAnimationFinish()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 838
    const v2, 0x7f3c000c

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 840
    .local v0, "layoutScrollView":Landroid/widget/ScrollView;
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->outToTopAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 841
    .local v1, "outToTop":Landroid/view/animation/Animation;
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 842
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 843
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 845
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 846
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 863
    iget-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsPlayDetailAnimation:Z

    if-nez v2, :cond_2b

    .line 864
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->finish()V

    .line 866
    :cond_2b
    return-void
.end method

.method private ProcessJsonPlace(Ljava/lang/String;Z)V
    .registers 15
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "loadMore"    # Z

    .prologue
    const/16 v11, 0x8

    .line 2469
    const/4 v0, 0x0

    .line 2470
    .local v0, "count_item":I
    :try_start_3
    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f3

    .line 2471
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2472
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_7f

    .line 2485
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 2490
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_1b
    if-eqz v0, :cond_21

    iget v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListPerPage:I

    if-ge v0, v8, :cond_11e

    .line 2491
    :cond_21
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsHasData:Z

    .line 2492
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getFooterViewsCount()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_d9

    move-result v8

    if-eqz v8, :cond_33

    .line 2495
    :try_start_2c
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_f6

    .line 2508
    :cond_33
    :goto_33
    :try_start_33
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v9, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;

    invoke-direct {v9, p0, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$21;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2526
    const v8, 0x7f400006

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2527
    .local v7, "tvMapMessage":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_137

    .line 2528
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v9, 0x7f0a02f7

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

    .line 2529
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2535
    :goto_71
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadingMore:Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_74} :catch_d9

    .line 2540
    .end local v7    # "tvMapMessage":Landroid/widget/TextView;
    :goto_74
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2541
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvLoadingMap:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2542
    return-void

    .line 2474
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_7f
    :try_start_7f
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2475
    .local v5, "json_place_new":Lorg/json/JSONObject;
    const-string v8, "LocationID"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2476
    .local v3, "id":Ljava/lang/String;
    new-instance v6, Lcom/samsung/privilege/bean/PlaceNewDetail;

    invoke-direct {v6, v3}, Lcom/samsung/privilege/bean/PlaceNewDetail;-><init>(Ljava/lang/String;)V

    .line 2477
    .local v6, "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    const-string v8, "Name"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    .line 2478
    const-string v8, "Latitude"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F

    .line 2479
    const-string v8, "Longitude"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F

    .line 2480
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_bb} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_bb} :catch_d9

    .line 2472
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "json_place_new":Lorg/json/JSONObject;
    .end local v6    # "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    :goto_bb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 2481
    :catch_bf
    move-exception v1

    .line 2482
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

    .line 2536
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_d9
    move-exception v1

    .line 2537
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

    .line 2487
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f3
    const/4 v0, 0x0

    goto/16 :goto_1b

    .line 2496
    :catch_f6
    move-exception v1

    .line 2497
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_f7
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->footerListView:Landroid/view/View;

    const/high16 v9, 0x7f240000

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2498
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

    .line 2502
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_11e
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsHasData:Z

    .line 2503
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v8

    if-nez v8, :cond_33

    .line 2504
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->footerListView:Landroid/view/View;

    const/high16 v9, 0x7f240000

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_33

    .line 2531
    .restart local v7    # "tvMapMessage":Landroid/widget/TextView;
    :cond_137
    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2532
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_141} :catch_d9

    goto/16 :goto_71
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvPoint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvPoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 3

    .prologue
    .line 2735
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 2

    .prologue
    .line 1478
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V
    .registers 1

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->processLikeAction()V

    return-void
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 2

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFoundLocation:Z

    return-void
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;D)V
    .registers 3

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLat:D

    return-void
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;D)V
    .registers 3

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLon:D

    return-void
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvLoadingMap:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)D
    .registers 3

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLat:D

    return-wide v0
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)D
    .registers 3

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLon:D

    return-wide v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ZDD)V
    .registers 6

    .prologue
    .line 2372
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->fetchPlaces(ZDD)V

    return-void
.end method

.method static synthetic access$21(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 2467
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->ProcessJsonPlace(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$22(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$23(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 2

    .prologue
    .line 2329
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    return-void
.end method

.method static synthetic access$24(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$25(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCacheCampaign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-void
.end method

.method static synthetic access$27(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 2

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->initialLayout(Z)V

    return-void
.end method

.method static synthetic access$28(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$29(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFoundLocation:Z

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/NFCTag;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    return-object v0
.end method

.method static synthetic access$30(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$31(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 2

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadingMore:Z

    return-void
.end method

.method static synthetic access$32(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;J)V
    .registers 3

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gLastRank:J

    return-void
.end method

.method static synthetic access$33(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)J
    .registers 3

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gLastRank:J

    return-wide v0
.end method

.method static synthetic access$34(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$35(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    return-object v0
.end method

.method static synthetic access$36(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    return-void
.end method

.method static synthetic access$37(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$38(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$39(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/ProgressBar;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_BEAM:I

    return v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1097
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V
    .registers 1

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPoints()V

    return-void
.end method

.method private bigToSmallAnimation()Landroid/view/animation/Animation;
    .registers 8

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    .line 2093
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterX:F

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterY:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2094
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2095
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2096
    return-object v0
.end method

.method private checkRedeemError(Z)Ljava/lang/String;
    .registers 15
    .param p1, "isCheckNFC"    # Z

    .prologue
    const v12, 0x7f0a0352

    const v8, 0x7f0a0350

    const v11, 0x7f0a01be

    const/4 v10, 0x2

    const/4 v9, 0x6

    .line 1236
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 1239
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v7

    if-nez v7, :cond_23

    .line 1240
    const v7, 0x7f0a0302

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1400
    :goto_22
    return-object v7

    .line 1265
    :cond_23
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_2f

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_d4

    .line 1266
    :cond_2f
    iget-boolean v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramFromList:Z

    if-eqz v7, :cond_bd

    .line 1268
    :try_start_33
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xa

    if-lt v7, v8, :cond_93

    .line 1269
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "nfc"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NfcManager;

    .line 1270
    .local v3, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v3}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1272
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_7d

    .line 1273
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1274
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_5f

    .line 1276
    const v7, 0x7f0a0350

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1278
    :cond_5f
    const v7, 0x7f0a0347

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1281
    :cond_67
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_75

    .line 1283
    const v7, 0x7f0a0351

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1285
    :cond_75
    const v7, 0x7f0a01bf

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1289
    :cond_7d
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_8b

    .line 1291
    const v7, 0x7f0a0352

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1293
    :cond_8b
    const v7, 0x7f0a01be

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1297
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v3    # "manager":Landroid/nfc/NfcManager;
    :cond_93
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_a1

    .line 1299
    const v7, 0x7f0a0350

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1301
    :cond_a1
    const v7, 0x7f0a01be

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_a7} :catch_aa

    move-result-object v7

    goto/16 :goto_22

    .line 1304
    :catch_aa
    move-exception v2

    .line 1305
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_b7

    .line 1307
    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1309
    :cond_b7
    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1313
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_bd
    if-eqz p1, :cond_d4

    .line 1314
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_cb

    .line 1316
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1318
    :cond_cb
    const v7, 0x7f0a0347

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1324
    :cond_d4
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_e3

    .line 1325
    if-eqz p1, :cond_e3

    .line 1327
    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1332
    :cond_e3
    if-nez p1, :cond_fb

    .line 1333
    :try_start_e5
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-nez v7, :cond_115

    .line 1334
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eqz v7, :cond_115

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_115

    .line 1337
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    goto/16 :goto_22

    .line 1341
    :cond_fb
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eqz v7, :cond_115

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_115

    .line 1344
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_10b} :catch_10d

    goto/16 :goto_22

    .line 1347
    :catch_10d
    move-exception v2

    .line 1348
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.RedeemMedia)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_115
    :try_start_115
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-wide v7, v7, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_183

    .line 1355
    new-instance v4, Ljava/util/Date;

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-wide v7, v7, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v9, 0x6270

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1356
    .local v4, "nextRedeemDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1370
    .local v1, "currentDate":Ljava/util/Date;
    invoke-virtual {v1, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_183

    .line 1373
    const v7, 0x7f0a02f6

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1374
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

    iget-wide v9, v9, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v11, 0x6270

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1375
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

    .line 1378
    .end local v1    # "currentDate":Ljava/util/Date;
    .end local v4    # "nextRedeemDate":Ljava/util/Date;
    .end local v5    # "strNextRedeemDate":Ljava/lang/String;
    .end local v6    # "str_nextredeemdate":Ljava/lang/String;
    :catch_17b
    move-exception v2

    .line 1379
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.NextRedeemDate > 0)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_183
    :try_start_183
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    if-lez v7, :cond_1a4

    .line 1384
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemCount:I

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v8, v8, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    if-lt v7, v8, :cond_1a4

    .line 1385
    const v7, 0x7f0a0303

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_199} :catch_19c

    move-result-object v7

    goto/16 :goto_22

    .line 1388
    :catch_19c
    move-exception v2

    .line 1389
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.RedeemCount >= paramCampaign.RedeemMostPerPerson)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1a4
    :try_start_1a4
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    if-lt v7, v8, :cond_1bf

    .line 1394
    const v7, 0x7f0a0304

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1b4} :catch_1b7

    move-result-object v7

    goto/16 :goto_22

    .line 1396
    :catch_1b7
    move-exception v2

    .line 1397
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.ItemCountSold >= paramCampaign.Quantity)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1bf
    const-string v7, ""

    goto/16 :goto_22
.end method

.method private doInitialBranch()V
    .registers 7

    .prologue
    .line 2654
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 2655
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    .line 2657
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2658
    .local v0, "arrTemps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    array-length v4, v0

    if-lt v1, v4, :cond_44

    .line 2665
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    .line 2666
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_57

    .line 2667
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2672
    .end local v0    # "arrTemps":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_43
    :goto_43
    return-void

    .line 2659
    .restart local v0    # "arrTemps":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_44
    aget-object v3, v0, v1

    .line 2660
    .local v3, "str":Ljava/lang/String;
    new-instance v2, Lcom/samsung/privilege/bean/PlaceNewDetail;

    const-string v4, ""

    invoke-direct {v2, v4}, Lcom/samsung/privilege/bean/PlaceNewDetail;-><init>(Ljava/lang/String;)V

    .line 2661
    .local v2, "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    iput-object v3, v2, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    .line 2662
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2658
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 2669
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
    .line 2332
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    if-eqz v0, :cond_c

    .line 2333
    const-string v0, "campaign.detail"

    const-string v1, "if (gFetching == true) {// do nothing..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    :goto_b
    return-void

    .line 2335
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    .line 2336
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

    .line 2338
    if-nez p1, :cond_35

    .line 2339
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$17;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$17;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2350
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
    .line 2373
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    if-eqz v0, :cond_c

    .line 2374
    const-string v0, "campaign.detail"

    const-string v1, "if (gFetching == true) {// do nothing..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    :goto_b
    return-void

    .line 2376
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFetching:Z

    .line 2377
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

    .line 2379
    if-nez p1, :cond_49

    .line 2380
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$19;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$19;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2391
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
    .line 2736
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 2737
    return-void
.end method

.method private getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "pNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 2698
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

    .line 2699
    .local v1, "catch_campaign":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 2701
    :try_start_1f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2702
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    new-instance v0, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v0, v3}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    .line 2704
    .local v0, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 2706
    new-instance v6, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$22;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$22;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2713
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCacheCampaign:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_35} :catch_96

    .line 2720
    .end local v0    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 2721
    .local v4, "token":Ljava/lang/String;
    if-eqz v4, :cond_95

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    .line 2722
    new-instance v6, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$23;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$23;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2729
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

    .line 2730
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

    .line 2731
    new-instance v6, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;

    invoke-direct {v6, p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ILcom/samsung/privilege/bean/NFCTag;)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 2733
    .end local v5    # "url":Ljava/lang/String;
    :cond_95
    return-void

    .line 2714
    .end local v4    # "token":Ljava/lang/String;
    :catch_96
    move-exception v2

    .line 2716
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
    .line 2132
    const-string v0, "campaign.detail"

    const-string v1, "public void getLocation() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    .line 2222
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$14;->start()V

    .line 2223
    return-void
.end method

.method private getPoints()V
    .registers 3

    .prologue
    .line 869
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    .line 895
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 896
    return-void
.end method

.method private goBooking(Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 7
    .param p1, "pCampain"    # Lcom/samsung/privilege/bean/CampaignView;

    .prologue
    .line 1658
    if-eqz p1, :cond_9a

    .line 1659
    iget-object v3, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    if-eqz v3, :cond_9a

    iget-object v3, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1661
    :try_start_10
    iget-object v2, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_c1

    .line 1664
    .local v2, "url":Ljava/lang/String;
    :try_start_12
    const-string v3, "<uid>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1665
    new-instance v0, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1666
    .local v0, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v3, "<deviceId>"

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_32} :catch_c3

    move-result-object v2

    .line 1671
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

    .line 1672
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1674
    :cond_52
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 1675
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

    .line 1680
    :goto_7f
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1681
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1682
    const-string v3, "enable_webview_back"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1683
    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BOOKING:I

    invoke-virtual {p0, v1, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1689
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_9a
    :goto_9a
    return-void

    .line 1677
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

    .line 1684
    .end local v2    # "url":Ljava/lang/String;
    :catch_c1
    move-exception v3

    goto :goto_9a

    .line 1667
    .restart local v2    # "url":Ljava/lang/String;
    :catch_c3
    move-exception v3

    goto/16 :goto_33
.end method

.method private goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 14
    .param p1, "pCampain"    # Lcom/samsung/privilege/bean/CampaignView;

    .prologue
    .line 1605
    if-eqz p1, :cond_3a

    .line 1606
    iget-object v8, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    if-eqz v8, :cond_3a

    iget-object v8, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 1608
    :try_start_10
    iget-object v7, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    .line 1610
    .local v7, "url":Ljava/lang/String;
    const-string v8, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_22

    const-string v8, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 1611
    :cond_22
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1612
    .local v3, "arrTemp":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-lt v8, v9, :cond_7b

    .line 1613
    const/4 v8, 0x1

    aget-object v1, v3, v8
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_79

    .line 1616
    .local v1, "android_ns":Ljava/lang/String;
    :try_start_2f
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1617
    .local v0, "LaunchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_3a} :catch_5a

    .line 1655
    .end local v0    # "LaunchIntent":Landroid/content/Intent;
    .end local v1    # "android_ns":Ljava/lang/String;
    .end local v3    # "arrTemp":[Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-void

    .line 1618
    .restart local v1    # "android_ns":Ljava/lang/String;
    .restart local v3    # "arrTemp":[Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_3b
    move-exception v5

    .line 1619
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

    .line 1621
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_5a
    move-exception v2

    .line 1622
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

    .line 1650
    .end local v1    # "android_ns":Ljava/lang/String;
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v3    # "arrTemp":[Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catch_79
    move-exception v8

    goto :goto_3a

    .line 1625
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

    .line 1629
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

    .line 1630
    new-instance v4, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1631
    .local v4, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v8, "<deviceId>"

    invoke-virtual {v4}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_aa} :catch_134

    move-result-object v7

    .line 1636
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

    .line 1637
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1639
    :cond_ca
    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 1640
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

    .line 1645
    :goto_f7
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1647
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "url"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1648
    iget v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BUY_POINT:I

    invoke-virtual {p0, v6, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3a

    .line 1642
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

    .line 1632
    :catch_134
    move-exception v8

    goto/16 :goto_ab
.end method

.method private inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2107
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2109
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2110
    .local v0, "inFromBottom":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2111
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2112
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2114
    return-object v9
.end method

.method private inFromTopAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 820
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 821
    .local v0, "inFromTop":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 822
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 823
    return-object v0
.end method

.method private initialFont()V
    .registers 30

    .prologue
    .line 368
    const v27, 0x7f07029f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 369
    .local v4, "layoutCenter":Landroid/widget/RelativeLayout;
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 370
    const v27, 0x7f0702b9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 371
    .local v6, "layoutToolBottom":Landroid/widget/LinearLayout;
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    const v27, 0x7f07005b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 374
    .local v16, "tvHeaderCaption":Landroid/widget/TextView;
    const v27, 0x7f07012a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 375
    .local v19, "tvPoint":Landroid/widget/TextView;
    const v27, 0x7f07029e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 376
    .local v21, "tvPointP":Landroid/widget/TextView;
    const v27, 0x7f070129

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 378
    .local v20, "tvPointCaption":Landroid/widget/TextView;
    const v27, 0x7f0702a4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 379
    .local v18, "tvPeriodCaption":Landroid/widget/TextView;
    const v27, 0x7f0702a5

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 381
    .local v17, "tvPeriod":Landroid/widget/TextView;
    const v27, 0x7f0702b4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 382
    .local v12, "tvCampaignName":Landroid/widget/TextView;
    const v27, 0x7f0700a6

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 384
    .local v11, "tvCampaignDesc":Landroid/widget/TextView;
    const v27, 0x7f0702c0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 385
    .local v26, "tvTabMenuDetail":Landroid/widget/TextView;
    const v27, 0x7f0702c2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 386
    .local v25, "tvTabMenuCondition":Landroid/widget/TextView;
    const v27, 0x7f0702c4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 387
    .local v24, "tvTabMenuBranch":Landroid/widget/TextView;
    const v27, 0x7f0702c6

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 388
    .local v14, "tvDetail":Landroid/widget/TextView;
    const v27, 0x7f070131

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 389
    .local v13, "tvCondition":Landroid/widget/TextView;
    const v27, 0x7f0702c9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 391
    .local v7, "tvBranchTemp":Landroid/widget/TextView;
    const v27, 0x7f0702af

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 392
    .local v9, "tvButtonLike":Landroid/widget/TextView;
    const v27, 0x7f0702ac

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 393
    .local v8, "tvButtonComment":Landroid/widget/TextView;
    const v27, 0x7f0702a9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 395
    .local v10, "tvButtonShare":Landroid/widget/TextView;
    const v27, 0x7f0700be

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 396
    .local v15, "tvError":Landroid/widget/TextView;
    const v27, 0x7f070102

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 397
    .local v22, "tvRedeem":Landroid/widget/TextView;
    const v27, 0x7f0702bb

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 400
    .local v23, "tvRedeemWarning":Landroid/widget/TextView;
    :try_start_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTextSize(F)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v27

    const/high16 v28, 0x40800000

    sub-float v27, v27, v28

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v27

    const-string v28, "fonts/kit55p.ttf"

    invoke-static/range {v27 .. v28}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 453
    .local v3, "font_kit55p":Landroid/graphics/Typeface;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 454
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 455
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_373
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_373} :catch_3a8

    .line 460
    .end local v3    # "font_kit55p":Landroid/graphics/Typeface;
    :goto_373
    const v27, 0x7f07029b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 461
    .local v5, "layoutMyPoint":Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v27

    if-eqz v27, :cond_38e

    .line 462
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 470
    :goto_38d
    return-void

    .line 464
    :cond_38e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_3a0

    .line 465
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_38d

    .line 467
    :cond_3a0
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_38d

    .line 456
    .end local v5    # "layoutMyPoint":Landroid/widget/RelativeLayout;
    :catch_3a8
    move-exception v27

    goto :goto_373
.end method

.method private initialLayout(Z)V
    .registers 57
    .param p1, "isFromCache"    # Z

    .prologue
    .line 475
    const v3, 0x7f07005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    .line 476
    .local v46, "tvHeaderCaption":Landroid/widget/TextView;
    const v3, 0x7f0702b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 477
    .local v42, "tvCampaignName":Landroid/widget/TextView;
    const v3, 0x7f0700a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 478
    .local v41, "tvCampaignDesc":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v3, "###,###,###.##"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 485
    .local v17, "formatterHasDigi":Ljava/text/NumberFormat;
    const v3, 0x7f0702b6

    :try_start_4e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 486
    .local v47, "tvLine3":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5cb

    .line 487
    const v3, 0x7f0a026a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_76} :catch_5ed

    .line 501
    .end local v47    # "tvLine3":Landroid/widget/TextView;
    :goto_76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_92

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_670

    .line 503
    :cond_92
    const v3, 0x7f0702b7

    :try_start_95
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    .line 504
    .local v48, "tvLine4":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->OriginalPrice:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v28

    .line 505
    .local v28, "original_price":D
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " THB"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPaintFlags(I)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_e1} :catch_99c

    .line 512
    .end local v28    # "original_price":D
    .end local v48    # "tvLine4":Landroid/widget/TextView;
    :goto_e1
    const v3, 0x7f0702b8

    :try_start_e4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 513
    .local v49, "tvLine5":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v28

    .line 514
    .restart local v28    # "original_price":D
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " THB"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_125} :catch_999

    .line 525
    .end local v28    # "original_price":D
    .end local v49    # "tvLine5":Landroid/widget/TextView;
    :goto_125
    const v3, 0x7f0702c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    .line 526
    .local v44, "tvDetail":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    const-string v6, "<br>"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_694

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    :goto_14d
    const v3, 0x7f070131

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 533
    .local v43, "tvCondition":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    const-string v6, "<br>"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6a1

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :goto_175
    const v3, 0x7f0702af

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 540
    .local v40, "tvButtonLike":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v6, v6, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    invoke-static {v6}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " Likes"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    const v3, 0x7f0702ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 543
    .local v39, "tvButtonComment":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v6, v6, Lcom/samsung/privilege/bean/CampaignView;->Buzz:I

    invoke-static {v6}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " Comments"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    const v3, 0x7f0702ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 546
    .local v18, "imgButtonLike":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-eqz v3, :cond_6ae

    .line 547
    const v3, 0x7f020362

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 554
    :goto_1ea
    const v3, 0x7f070102

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/TextView;

    .line 555
    .local v51, "tvRedeem":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b8

    .line 556
    const v3, 0x7f0a02f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :goto_211
    const/16 v21, 0x1

    .line 562
    .local v21, "isChangeCaption":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-nez v3, :cond_6c8

    .line 563
    const/16 v21, 0x1

    .line 570
    :goto_22b
    if-eqz v21, :cond_24e

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    if-eqz v3, :cond_24e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24e

    .line 572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_24e
    const v3, 0x7f0702b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 577
    .local v27, "layoutToolBottom":Landroid/widget/LinearLayout;
    const v3, 0x7f0702ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 578
    .local v22, "layoutButtonRedeem":Landroid/widget/LinearLayout;
    const v3, 0x7f0702bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    .line 579
    .local v25, "layoutError":Landroid/widget/RelativeLayout;
    const v3, 0x7f0702a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 580
    .local v23, "layoutButtonShare":Landroid/widget/LinearLayout;
    const v3, 0x7f0702bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 581
    .local v52, "tvRedeemWarning":Landroid/widget/TextView;
    const v3, 0x7f0700be

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/TextView;

    .line 582
    .local v45, "tvError":Landroid/widget/TextView;
    if-eqz p1, :cond_6e6

    .line 583
    const/16 v3, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 636
    :goto_2a0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    if-eqz v3, :cond_2d6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d6

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "N/A"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d6

    .line 638
    const/16 v3, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 639
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 643
    :cond_2d6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "402705486466922"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_990

    .line 644
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 649
    :goto_2ec
    const v3, 0x7f07012a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvPoint:Landroid/widget/TextView;

    .line 650
    new-instance v16, Ljava/text/DecimalFormat;

    const-string v3, "#,###,###"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 651
    .local v16, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v31

    .line 652
    .local v31, "points":J
    const-wide/16 v9, 0x0

    cmp-long v3, v31, v9

    if-lez v3, :cond_321

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvPoint:Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :cond_321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 657
    .local v15, "cal":Ljava/util/Calendar;
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v53

    .line 659
    .local v53, "tz":Ljava/util/TimeZone;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "dd MMM yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v3, v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v9, v9, Lcom/samsung/privilege/bean/CampaignView;->StartDate:Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/privilege/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {v53 .. v53}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v37

    .line 660
    .local v37, "strStartDate":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "dd MMM yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v3, v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v9, v9, Lcom/samsung/privilege/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/privilege/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {v53 .. v53}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    .line 662
    .local v33, "strExpireDate":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 663
    .local v30, "period":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "1109"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_480

    .line 664
    const-string v3, "Jan"

    const v6, 0x7f0a0360

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 665
    const-string v3, "Feb"

    const v6, 0x7f0a0361

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 666
    const-string v3, "Mar"

    const v6, 0x7f0a0362

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 667
    const-string v3, "Apr"

    const v6, 0x7f0a0363

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 668
    const-string v3, "May"

    const v6, 0x7f0a0364

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 669
    const-string v3, "Jun"

    const v6, 0x7f0a0365

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 670
    const-string v3, "Jul"

    const v6, 0x7f0a0366

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 671
    const-string v3, "Aug"

    const v6, 0x7f0a0367

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 672
    const-string v3, "Sep"

    const v6, 0x7f0a0368

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 673
    const-string v3, "Oct"

    const v6, 0x7f0a0369

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 674
    const-string v3, "Nov"

    const v6, 0x7f0a036a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 675
    const-string v3, "Dec"

    const v6, 0x7f0a036b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 677
    :cond_480
    const v3, 0x7f0702a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    .line 678
    .local v50, "tvPeriod":Landroid/widget/TextView;
    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/agency/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/picture"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, "img_campaign_agency":Ljava/lang/String;
    const-string v3, "https"

    const-string v6, "http"

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 682
    if-eqz v4, :cond_4e0

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e0

    .line 683
    const v3, 0x7f0702b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 684
    .local v5, "imgAgency":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v6, 0x0

    const v7, 0x7f02039f

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 687
    .end local v5    # "imgAgency":Landroid/widget/ImageView;
    :cond_4e0
    sget-object v54, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    .line 688
    .local v54, "urlPrefix":Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f9

    .line 689
    const/4 v3, 0x0

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v54

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v54

    .line 692
    :cond_4f9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadImaged:Z

    if-nez v3, :cond_5a5

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v3}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlThumb()Ljava/lang/String;

    move-result-object v7

    .line 694
    .local v7, "img_campaign_thumbnail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v3}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v20

    .line 696
    .local v20, "img_campaign_large":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x6

    if-lt v3, v6, :cond_568

    .line 697
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "?type=thumbnail"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 698
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "?type=large"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 701
    :cond_568
    const v3, 0x7f0701c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 702
    .local v8, "imgCampaignThumb":Landroid/widget/ImageView;
    const v3, 0x7f0702b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 704
    .local v19, "imgCampaignBig":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    const v10, 0x7f02039f

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 705
    const/4 v3, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v12, 0x0

    const v13, 0x7f02039f

    const/4 v14, 0x0

    move-object/from16 v10, v20

    move-object/from16 v11, v19

    invoke-virtual/range {v9 .. v14}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 707
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gIsLoadImaged:Z

    .line 710
    .end local v7    # "img_campaign_thumbnail":Ljava/lang/String;
    .end local v8    # "imgCampaignThumb":Landroid/widget/ImageView;
    .end local v19    # "imgCampaignBig":Landroid/widget/ImageView;
    .end local v20    # "img_campaign_large":Ljava/lang/String;
    :cond_5a5
    const v3, 0x7f07029f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    .line 711
    .local v24, "layoutCenter":Landroid/widget/RelativeLayout;
    const v3, 0x7f0702a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ScrollView;

    .line 712
    .local v26, "layoutScrollView":Landroid/widget/ScrollView;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 713
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 715
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doInitialBranch()V

    .line 716
    return-void

    .line 488
    .end local v4    # "img_campaign_agency":Ljava/lang/String;
    .end local v15    # "cal":Ljava/util/Calendar;
    .end local v16    # "formatter":Ljava/text/DecimalFormat;
    .end local v18    # "imgButtonLike":Landroid/widget/ImageView;
    .end local v21    # "isChangeCaption":Z
    .end local v22    # "layoutButtonRedeem":Landroid/widget/LinearLayout;
    .end local v23    # "layoutButtonShare":Landroid/widget/LinearLayout;
    .end local v24    # "layoutCenter":Landroid/widget/RelativeLayout;
    .end local v25    # "layoutError":Landroid/widget/RelativeLayout;
    .end local v26    # "layoutScrollView":Landroid/widget/ScrollView;
    .end local v27    # "layoutToolBottom":Landroid/widget/LinearLayout;
    .end local v30    # "period":Ljava/lang/String;
    .end local v31    # "points":J
    .end local v33    # "strExpireDate":Ljava/lang/String;
    .end local v37    # "strStartDate":Ljava/lang/String;
    .end local v39    # "tvButtonComment":Landroid/widget/TextView;
    .end local v40    # "tvButtonLike":Landroid/widget/TextView;
    .end local v43    # "tvCondition":Landroid/widget/TextView;
    .end local v44    # "tvDetail":Landroid/widget/TextView;
    .end local v45    # "tvError":Landroid/widget/TextView;
    .end local v50    # "tvPeriod":Landroid/widget/TextView;
    .end local v51    # "tvRedeem":Landroid/widget/TextView;
    .end local v52    # "tvRedeemWarning":Landroid/widget/TextView;
    .end local v53    # "tz":Ljava/util/TimeZone;
    .end local v54    # "urlPrefix":Ljava/lang/String;
    .restart local v47    # "tvLine3":Landroid/widget/TextView;
    :cond_5cb
    :try_start_5cb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f0

    .line 489
    const v3, 0x7f0a0269

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    .line 497
    .end local v47    # "tvLine3":Landroid/widget/TextView;
    :catch_5ed
    move-exception v3

    goto/16 :goto_76

    .line 490
    .restart local v47    # "tvLine3":Landroid/widget/TextView;
    :cond_5f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_645

    .line 491
    :cond_60c
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v9, v9, Lcom/samsung/privilege/bean/CampaignView;->Discount:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    .line 492
    :cond_645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "7"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_667

    .line 493
    const v3, 0x7f0a026c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    .line 495
    :cond_667
    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_66e
    .catch Ljava/lang/Exception; {:try_start_5cb .. :try_end_66e} :catch_5ed

    goto/16 :goto_76

    .line 519
    .end local v47    # "tvLine3":Landroid/widget/TextView;
    :cond_670
    const v3, 0x7f0702b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    .line 520
    .restart local v48    # "tvLine4":Landroid/widget/TextView;
    const v3, 0x7f0702b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 521
    .restart local v49    # "tvLine5":Landroid/widget/TextView;
    const/4 v3, 0x4

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    const/4 v3, 0x4

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_125

    .line 529
    .end local v48    # "tvLine4":Landroid/widget/TextView;
    .end local v49    # "tvLine5":Landroid/widget/TextView;
    .restart local v44    # "tvDetail":Landroid/widget/TextView;
    :cond_694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14d

    .line 536
    .restart local v43    # "tvCondition":Landroid/widget/TextView;
    :cond_6a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_175

    .line 550
    .restart local v18    # "imgButtonLike":Landroid/widget/ImageView;
    .restart local v39    # "tvButtonComment":Landroid/widget/TextView;
    .restart local v40    # "tvButtonLike":Landroid/widget/TextView;
    :cond_6ae
    const v3, 0x7f020361

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1ea

    .line 558
    .restart local v51    # "tvRedeem":Landroid/widget/TextView;
    :cond_6b8
    const v3, 0x7f0a02f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_211

    .line 564
    .restart local v21    # "isChangeCaption":Z
    :cond_6c8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-eqz v3, :cond_6e2

    .line 565
    const/16 v21, 0x0

    .line 566
    goto/16 :goto_22b

    .line 567
    :cond_6e2
    const/16 v21, 0x1

    goto/16 :goto_22b

    .line 586
    .restart local v22    # "layoutButtonRedeem":Landroid/widget/LinearLayout;
    .restart local v23    # "layoutButtonShare":Landroid/widget/LinearLayout;
    .restart local v25    # "layoutError":Landroid/widget/RelativeLayout;
    .restart local v27    # "layoutToolBottom":Landroid/widget/LinearLayout;
    .restart local v45    # "tvError":Landroid/widget/TextView;
    .restart local v52    # "tvRedeemWarning":Landroid/widget/TextView;
    :cond_6e6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->checkRedeemError(Z)Ljava/lang/String;

    move-result-object v36

    .line 587
    .local v36, "strRedeemError":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_724

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    sget v6, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    sget v6, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_724

    .line 589
    :cond_71b
    const v3, 0x7f0a0313

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 592
    :cond_724
    if-eqz v36, :cond_75a

    const-string v3, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75a

    .line 593
    const/16 v3, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 596
    const/16 v3, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 633
    :goto_752
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2a0

    .line 599
    :cond_75a
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 600
    const/16 v3, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v3, v9, v11

    if-lez v3, :cond_8db

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    .line 605
    .local v34, "strPoint":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0x7f0a035d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 606
    .local v35, "strPointUnit":Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c5

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0x7f0a035e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 610
    :cond_7c5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7db

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    if-nez v3, :cond_80a

    .line 611
    :cond_7db
    new-instance v3, Ljava/lang/StringBuilder;

    const v6, 0x7f0a0309

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 613
    :cond_80a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    const/16 v6, 0x3c

    if-ne v3, v6, :cond_856

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    const v6, 0x7f0a02fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a0309

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 616
    :cond_856
    new-instance v3, Ljava/lang/StringBuilder;

    const v6, 0x7f0a02fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v6, v6, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a02fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a02fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 617
    .local v38, "strWarning":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a0309

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 621
    .end local v34    # "strPoint":Ljava/lang/String;
    .end local v35    # "strPointUnit":Ljava/lang/String;
    .end local v38    # "strWarning":Ljava/lang/String;
    :cond_8db
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    if-nez v3, :cond_921

    .line 622
    :cond_8f1
    new-instance v3, Ljava/lang/StringBuilder;

    const v6, 0x7f0a0309

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " 0 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a035e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 624
    :cond_921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    const/16 v6, 0x3c

    if-ne v3, v6, :cond_93b

    .line 625
    const v3, 0x7f0a02fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 627
    :cond_93b
    new-instance v3, Ljava/lang/StringBuilder;

    const v6, 0x7f0a02fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v6, v6, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a02fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a02fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 628
    .restart local v38    # "strWarning":Ljava/lang/String;
    move-object/from16 v0, v52

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_752

    .line 646
    .end local v36    # "strRedeemError":Ljava/lang/String;
    .end local v38    # "strWarning":Ljava/lang/String;
    :cond_990
    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2ec

    .line 515
    .end local v18    # "imgButtonLike":Landroid/widget/ImageView;
    .end local v21    # "isChangeCaption":Z
    .end local v22    # "layoutButtonRedeem":Landroid/widget/LinearLayout;
    .end local v23    # "layoutButtonShare":Landroid/widget/LinearLayout;
    .end local v25    # "layoutError":Landroid/widget/RelativeLayout;
    .end local v27    # "layoutToolBottom":Landroid/widget/LinearLayout;
    .end local v39    # "tvButtonComment":Landroid/widget/TextView;
    .end local v40    # "tvButtonLike":Landroid/widget/TextView;
    .end local v43    # "tvCondition":Landroid/widget/TextView;
    .end local v44    # "tvDetail":Landroid/widget/TextView;
    .end local v45    # "tvError":Landroid/widget/TextView;
    .end local v51    # "tvRedeem":Landroid/widget/TextView;
    .end local v52    # "tvRedeemWarning":Landroid/widget/TextView;
    :catch_999
    move-exception v3

    goto/16 :goto_125

    .line 507
    :catch_99c
    move-exception v3

    goto/16 :goto_e1
.end method

.method private initialParam()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    .line 343
    const-string v1, "nfc_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/NFCTag;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 345
    iput-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramFromList:Z

    .line 347
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    if-lez v1, :cond_63

    .line 348
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v1, :cond_4a

    .line 349
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramFromList:Z

    .line 350
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-direct {p0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 351
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 365
    :cond_49
    :goto_49
    return-void

    .line 353
    :cond_4a
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    invoke-direct {p0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 354
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_49

    .line 357
    :cond_63
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 358
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    if-eqz v1, :cond_49

    .line 359
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->initialLayout(Z)V

    .line 361
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v1, v1, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 362
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_49
.end method

.method private outToBottomAnimationSet()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2118
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2120
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2121
    .local v0, "outToBottom":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2122
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2123
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2125
    return-object v9
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2100
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2101
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2102
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2103
    return-object v0
.end method

.method private outToTopAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 831
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 832
    .local v0, "outToTop":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 833
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 834
    return-object v0
.end method

.method private processLikeAction()V
    .registers 2

    .prologue
    .line 1180
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$5;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1207
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    const-string v0, "buzzebees.market"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 330
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 331
    const-string v0, "paramNFCTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCTag;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 332
    const-string v0, "paramCampaignID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    .line 333
    const-string v0, "paramFromList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramFromList:Z

    .line 335
    const-string v0, "doRedeeming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    .line 336
    const-string v0, "isContinueUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->isContinueUrl:Z

    .line 338
    :cond_43
    return-void
.end method

.method private showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1210
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_44

    .line 1211
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1213
    .local v1, "dialogInfo":Landroid/app/Dialog;
    const v3, 0x7f0300dc

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1214
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1216
    const v3, 0x7f460003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1217
    .local v2, "tvMessage":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1218
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1219
    const v3, 0x7f460004

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1221
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$6;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1233
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

    .line 1692
    const-string v6, ""

    const v7, 0x7f0a018d

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7, v9, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1695
    :try_start_10
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1696
    .local v3, "mMessageView":Landroid/widget/TextView;
    if-eqz v3, :cond_2d

    .line 1697
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1698
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_105

    .line 1704
    .end local v3    # "mMessageView":Landroid/widget/TextView;
    :cond_2d
    :goto_2d
    if-eqz p1, :cond_104

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_104

    .line 1705
    new-instance v2, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1706
    .local v2, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1710
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

    .line 1712
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 1713
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1714
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

    .line 1715
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

    .line 1718
    .end local v1    # "date":Ljava/util/Date;
    :cond_f4
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1719
    .local v4, "params":Lcom/loopj/android/http/RequestParams;
    new-instance v6, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v9, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/bean/CampaignView;ZZ)V

    invoke-static {v5, v4, v6}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1721
    .end local v0    # "carrier":Ljava/lang/String;
    .end local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v4    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v5    # "url":Ljava/lang/String;
    :cond_104
    return-void

    .line 1700
    :catch_105
    move-exception v6

    goto/16 :goto_2d
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1105
    return-void
.end method

.method private smallToBig1Animation()Landroid/view/animation/Animation;
    .registers 8

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 2086
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterX:F

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterY:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2087
    .local v0, "smallToBig":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2088
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2089
    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->finish()V

    .line 1109
    return-void
.end method

.method public doComment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1112
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1113
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1114
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V

    .line 1115
    return-void
.end method

.method public doGetDirections(Lcom/samsung/privilege/bean/PlaceNewDetail;)V
    .registers 11
    .param p1, "pCurrentPlaceNewDetail"    # Lcom/samsung/privilege/bean/PlaceNewDetail;

    .prologue
    .line 2675
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

    .line 2676
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

    .line 2678
    if-eqz p1, :cond_82

    .line 2681
    iget v6, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F

    float-to-double v1, v6

    .line 2682
    .local v1, "latitude_daddr":D
    iget v6, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F

    float-to-double v3, v6

    .line 2687
    .local v3, "longitude_daddr":D
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://maps.google.com/maps?daddr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2688
    .local v5, "uri":Ljava/lang/String;
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uri="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2690
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "com.google.android.apps.maps"

    const-string v7, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2691
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V

    .line 2693
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "latitude_daddr":D
    .end local v3    # "longitude_daddr":D
    .end local v5    # "uri":Ljava/lang/String;
    :cond_82
    return-void
.end method

.method public doHome(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1966
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->PlayAnimationFinish()V

    .line 1967
    return-void
.end method

.method public doLike(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1120
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$4;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1138
    return-void
.end method

.method public doLikeAnimation(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 1905
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1906
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-nez v2, :cond_38

    .line 1907
    const v2, 0x7f0702ad

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1909
    .local v0, "layoutLike":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1910
    .local v1, "likeClickAnimation1":Landroid/view/animation/Animation;
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1911
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1912
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1914
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1915
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1962
    .end local v0    # "layoutLike":Landroid/widget/LinearLayout;
    .end local v1    # "likeClickAnimation1":Landroid/view/animation/Animation;
    :goto_37
    return-void

    .line 1956
    :cond_38
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->processLikeAction()V

    .line 1957
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doLike(Landroid/view/View;)V

    goto :goto_37

    .line 1960
    :cond_40
    const v2, 0x7f0a0302

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

    .line 1970
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1971
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1972
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1973
    .local v1, "height":I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1974
    .local v7, "width":I
    int-to-float v8, v7

    div-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterX:F

    .line 1975
    int-to-float v8, v1

    div-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCenterY:F

    .line 1977
    const/high16 v8, 0x7f3d0000

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1978
    .local v4, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    const v8, 0x7f3d0001

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1979
    .local v2, "imagePopupMyPoint":Landroid/widget/ImageView;
    const v8, 0x7f3d0002

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1981
    .local v3, "layoutButton":Landroid/widget/LinearLayout;
    const v8, 0x7f3d0005

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1982
    .local v6, "tvClose":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1983
    const-string v8, "Close"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1997
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1054"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 1998
    const v8, 0x7f020355

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2007
    :goto_62
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$11;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$11;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2014
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->smallToBig1Animation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 2015
    .local v5, "smallToBig1":Landroid/view/animation/Animation;
    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2016
    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2017
    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2018
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2019
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2021
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12;

    invoke-direct {v8, p0, v3, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$12;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2045
    return-void

    .line 1999
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

    .line 2000
    const v8, 0x7f020353

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 2001
    :cond_a0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1109"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 2002
    const v8, 0x7f020354

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 2004
    :cond_b7
    const v8, 0x7f020352

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62
.end method

.method public doMyPointClose(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2048
    const/high16 v4, 0x7f3d0000

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2049
    .local v3, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    const v4, 0x7f3d0001

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2050
    .local v1, "imagePopupMyPoint":Landroid/widget/ImageView;
    const v4, 0x7f3d0002

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2052
    .local v2, "layoutButton":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->bigToSmallAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2053
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2054
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2055
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2056
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2058
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$13;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2083
    return-void
.end method

.method public doRedeem(Landroid/view/View;)V
    .registers 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1493
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v12, "8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v11, v11, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-nez v11, :cond_18

    .line 1494
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V

    .line 1602
    :goto_17
    return-void

    .line 1498
    :cond_18
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v12, "7"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 1499
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->goBooking(Lcom/samsung/privilege/bean/CampaignView;)V

    goto :goto_17

    .line 1503
    :cond_2a
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Delivered:Z

    if-eqz v11, :cond_d2

    .line 1504
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

    .line 1505
    :cond_8a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1506
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0a025e

    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a025f

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a00b2

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$8;

    invoke-direct {v13, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$8;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 1512
    const v12, 0x7f0a00b3

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$9;

    invoke-direct {v13, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$9;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1517
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1518
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_17

    .line 1523
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_d2
    iget-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    if-eqz v11, :cond_df

    .line 1524
    const-string v11, "campaign.detail"

    const-string v12, "if (doRedeeming == true) {"

    invoke-static {v11, v12}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 1526
    :cond_df
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    .line 1527
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->checkRedeemError(Z)Ljava/lang/String;

    move-result-object v8

    .line 1529
    .local v8, "strRedeemError":Ljava/lang/String;
    if-eqz v8, :cond_fa

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_fa

    .line 1530
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-direct {p0, v11, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 1532
    :cond_fa
    new-instance v3, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 1534
    .local v3, "cd":Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
    invoke-virtual {v3}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;->isConnectingToInternet()Z

    move-result v11

    if-nez v11, :cond_113

    .line 1535
    const-string v11, "No internet connection!"

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V

    .line 1536
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    goto/16 :goto_17

    .line 1538
    :cond_113
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1540
    .local v9, "token":Ljava/lang/String;
    if-eqz v9, :cond_2fd

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2fd

    .line 1542
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    if-eqz v11, :cond_147

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_147

    .line 1543
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v13, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v14, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-static {p0, v11, v12, v13, v14}, Lcom/samsung/privilege/util/DialogUtil;->showDialogContinueUrl(Landroid/app/Activity;Landroid/os/Handler;Lcom/samsung/privilege/bean/CampaignView;Lcom/bitmapfun/util/ImageFetcher;Lcom/samsung/privilege/bean/NFCTag;)V

    .line 1544
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    goto/16 :goto_17

    .line 1546
    :cond_147
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->isContinueUrl:Z

    .line 1548
    new-instance v5, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1549
    .local v5, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1553
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

    .line 1554
    .local v10, "url":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v11, :cond_202

    .line 1555
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-boolean v11, v11, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v11, :cond_297

    .line 1556
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "&nfc=write_back"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1560
    :goto_1a9
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-boolean v11, v11, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v11, :cond_2ac

    .line 1561
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "&redeem_media=nfc_write_back"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1565
    :goto_1c2
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v11, v11, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    if-eqz v11, :cond_202

    .line 1566
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

    .line 1567
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

    .line 1570
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

    .line 1571
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_27f

    .line 1572
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1573
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

    .line 1574
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

    .line 1577
    .end local v4    # "date":Ljava/util/Date;
    :cond_27f
    new-instance v7, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v7}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1578
    .local v7, "params":Lcom/loopj/android/http/RequestParams;
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v12, "3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c1

    .line 1579
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V

    goto/16 :goto_17

    .line 1558
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

    .line 1563
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

    .line 1581
    .restart local v7    # "params":Lcom/loopj/android/http/RequestParams;
    :cond_2c1
    const-string v11, ""

    const v12, 0x7f0a018d

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {p0, v11, v12, v13, v14}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1584
    :try_start_2d2
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gDialog:Landroid/app/ProgressDialog;

    const v12, 0x102000b

    invoke-virtual {v11, v12}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1585
    .local v6, "mMessageView":Landroid/widget/TextView;
    if-eqz v6, :cond_2ef

    .line 1586
    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1587
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_2ef
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2ef} :catch_302

    .line 1593
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

    .line 1597
    .end local v2    # "carrier":Ljava/lang/String;
    .end local v5    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v7    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v10    # "url":Ljava/lang/String;
    :cond_2fd
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    goto/16 :goto_17

    .line 1589
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
    .line 1482
    invoke-static {p0}, Lcom/samsung/privilege/util/DialogBooking;->showDialogBooking(Landroid/content/Context;)V

    .line 1483
    return-void
.end method

.method public doShare(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1409
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1410
    const v4, 0x7f0a0332

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1476
    :goto_1b
    return-void

    .line 1412
    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1413
    .local v1, "params":Landroid/os/Bundle;
    const-string v4, "app_id"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string v4, "to"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v4, "name"

    const v5, 0x7f0a030b

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
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

    .line 1417
    const-string v4, "link"

    const-string v5, "http://play.google.com/store/apps/details?id=com.samsung.privilege"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v4, "caption"

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v4, "description"

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 1430
    .local v2, "session":Lcom/facebook/Session;
    if-nez v2, :cond_82

    .line 1431
    invoke-static {p0, v7}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    goto :goto_1b

    .line 1433
    :cond_82
    new-instance v0, Lcom/facebook/widget/WebDialog$Builder;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    const-string v5, "feed"

    invoke-direct {v0, p0, v4, v5, v1}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1434
    .local v0, "builder":Lcom/facebook/widget/WebDialog$Builder;
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$7;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$7;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v0, v4}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 1472
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v3

    .line 1473
    .local v3, "webDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v3}, Lcom/facebook/widget/WebDialog;->show()V

    goto/16 :goto_1b
.end method

.method public doTabMenuBranch(Landroid/view/View;)V
    .registers 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0200b8

    const/16 v12, 0x8

    const/16 v10, 0xaf

    .line 796
    const v9, 0x7f0702bf

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 797
    .local v5, "layoutTabMenuDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c1

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 798
    .local v4, "layoutTabMenuCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c3

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 799
    .local v3, "layoutTabMenuBranch":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c0

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 800
    .local v8, "tvTabMenuDetail":Landroid/widget/TextView;
    const v9, 0x7f0702c2

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 801
    .local v7, "tvTabMenuCondition":Landroid/widget/TextView;
    const v9, 0x7f0702c4

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 802
    .local v6, "tvTabMenuBranch":Landroid/widget/TextView;
    const v9, 0x7f0702c5

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 803
    .local v2, "layoutContentDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c7

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 804
    .local v1, "layoutContentCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c8

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 806
    .local v0, "layoutContentBranch":Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 807
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 808
    const v9, 0x7f0200b9

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 810
    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 811
    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 812
    const/16 v9, 0x23

    const/16 v10, 0x1f

    const/16 v11, 0x20

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 814
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 815
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 816
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 817
    return-void
.end method

.method public doTabMenuCondition(Landroid/view/View;)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0200b8

    const/16 v13, 0x8

    const/16 v12, 0xaf

    .line 772
    const v9, 0x7f0702bf

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 773
    .local v5, "layoutTabMenuDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c1

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 774
    .local v4, "layoutTabMenuCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c3

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 775
    .local v3, "layoutTabMenuBranch":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c0

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 776
    .local v8, "tvTabMenuDetail":Landroid/widget/TextView;
    const v9, 0x7f0702c2

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 777
    .local v7, "tvTabMenuCondition":Landroid/widget/TextView;
    const v9, 0x7f0702c4

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 778
    .local v6, "tvTabMenuBranch":Landroid/widget/TextView;
    const v9, 0x7f0702c5

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 779
    .local v2, "layoutContentDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c7

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 780
    .local v1, "layoutContentCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c8

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 782
    .local v0, "layoutContentBranch":Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 783
    const v9, 0x7f0200b9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 784
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 786
    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 787
    const/16 v9, 0x23

    const/16 v10, 0x1f

    const/16 v11, 0x20

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 788
    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 790
    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 791
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 792
    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 793
    return-void
.end method

.method public doTabMenuDetail(Landroid/view/View;)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0200b8

    const/16 v13, 0x8

    const/16 v12, 0xaf

    .line 748
    const v9, 0x7f0702bf

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 749
    .local v5, "layoutTabMenuDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c1

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 750
    .local v4, "layoutTabMenuCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c3

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 751
    .local v3, "layoutTabMenuBranch":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c0

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 752
    .local v8, "tvTabMenuDetail":Landroid/widget/TextView;
    const v9, 0x7f0702c2

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 753
    .local v7, "tvTabMenuCondition":Landroid/widget/TextView;
    const v9, 0x7f0702c4

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 754
    .local v6, "tvTabMenuBranch":Landroid/widget/TextView;
    const v9, 0x7f0702c5

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 755
    .local v2, "layoutContentDetail":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c7

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 756
    .local v1, "layoutContentCondition":Landroid/widget/RelativeLayout;
    const v9, 0x7f0702c8

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 758
    .local v0, "layoutContentBranch":Landroid/widget/RelativeLayout;
    const v9, 0x7f0200b9

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 759
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 760
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 762
    const/16 v9, 0x23

    const/16 v10, 0x1f

    const/16 v11, 0x20

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 763
    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 766
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 767
    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 768
    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 769
    return-void
.end method

.method public getLocationByGPS()V
    .registers 9

    .prologue
    .line 2227
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$15;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2236
    new-instance v0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    .line 2239
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->canGetLocation()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2240
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLat:D

    .line 2241
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLon:D

    .line 2243
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

    .line 2244
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

    .line 2245
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLat:D

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLon:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->fetchPlaces(ZDD)V

    .line 2247
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->stopUsingGPS()V

    .line 2276
    :goto_63
    return-void

    .line 2252
    :cond_64
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->showSettingsAlert()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_63

    .line 2254
    :catch_6a
    move-exception v6

    .line 2255
    .local v6, "e":Ljava/lang/Exception;
    const v0, 0x7f0a0319

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2256
    .local v7, "error":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2257
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

    .line 2259
    :cond_9b
    invoke-direct {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V

    .line 2261
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

    .line 720
    if-ne p2, v3, :cond_70

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_BEAM:I

    if-ne p1, v2, :cond_70

    .line 721
    const-string v2, "NextNFCTag"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCTag;

    .line 722
    .local v0, "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    if-eqz v0, :cond_29

    .line 723
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Status"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 724
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Status(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    .line 745
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_29
    :goto_29
    return-void

    .line 725
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

    .line 726
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, v4, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_29

    .line 727
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

    .line 728
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_CheckIn(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_29

    .line 729
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

    .line 730
    invoke-static {v0, p0}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto :goto_29

    .line 733
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_70
    if-ne p2, v3, :cond_8d

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    if-ne p1, v2, :cond_8d

    .line 734
    const-string v2, "bzbs_return_url"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "return_url":Ljava/lang/String;
    if-eqz v1, :cond_29

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 736
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->isContinueUrl:Z

    .line 737
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showRedeem(Ljava/lang/String;)V

    goto :goto_29

    .line 739
    .end local v1    # "return_url":Ljava/lang/String;
    :cond_8d
    if-ne p2, v3, :cond_93

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BUY_POINT:I

    if-eq p1, v2, :cond_29

    .line 741
    :cond_93
    if-ne p2, v3, :cond_29

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_WEBVIEW_BOOKING:I

    if-ne p1, v2, :cond_29

    .line 742
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPoints()V

    .line 743
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
    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    if-eqz p1, :cond_107

    .line 168
    const-string v8, "buzzebees.market"

    const-string v9, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_c
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->requestWindowFeature(I)Z

    .line 174
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 182
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 185
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 186
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 188
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "cache_gift"

    invoke-direct {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3e800000

    invoke-virtual {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 190
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 191
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 192
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gScreenHeight:I

    .line 193
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gScreenWidth:I

    .line 195
    iget v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gScreenWidth:I

    .line 196
    .local v7, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gScreenHeight:I

    .line 198
    .local v2, "height":I
    if-le v2, v7, :cond_110

    .end local v2    # "height":I
    :goto_73
    div-int/lit8 v5, v2, 0x2

    .line 199
    .local v5, "longest":I
    new-instance v8, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 200
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v9, 0x7f02039f

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 201
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 202
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 205
    const v8, 0x7f0300b1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->setContentView(I)V

    .line 207
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;

    .line 208
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;

    .line 210
    const v8, 0x7f070031

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 211
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "768830479847872"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_113

    .line 212
    const v8, 0x7f0202b6

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    :goto_d5
    const v8, 0x7f07005a

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 222
    .local v4, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_148

    .line 223
    const v8, 0x7f0202ba

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    :goto_ee
    const v8, 0x7f0702ca

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gListBranch:Landroid/widget/ListView;

    .line 233
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->initialFont()V

    .line 234
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->initialParam()V

    .line 242
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v9, "GIFT_CAMPAIGN_DETAIL"

    invoke-virtual {v8, v9}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 243
    return-void

    .line 170
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "imgFlag":Landroid/widget/ImageView;
    .end local v4    # "imgLogo":Landroid/widget/ImageView;
    .end local v5    # "longest":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "width":I
    :cond_107
    const-string v8, "buzzebees.market"

    const-string v9, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "width":I
    :cond_110
    move v2, v7

    .line 198
    goto/16 :goto_73

    .line 213
    .end local v2    # "height":I
    .restart local v3    # "imgFlag":Landroid/widget/ImageView;
    .restart local v5    # "longest":I
    :cond_113
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1525635597652592"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12a

    .line 214
    const v8, 0x7f0202b5

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 215
    :cond_12a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "517155661760483"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_141

    .line 216
    const v8, 0x7f0202b7

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 218
    :cond_141
    const v8, 0x7f0202b8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 225
    .restart local v4    # "imgLogo":Landroid/widget/ImageView;
    :cond_148
    const v8, 0x7f0202b9

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_ee
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 299
    const-string v0, "buzzebees.market"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 302
    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 303
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 247
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1d

    .line 248
    const v1, 0x7f0702cb

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 249
    .local v0, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    .line 250
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doMyPointClose(Landroid/view/View;)V

    .line 251
    const/4 v1, 0x1

    .line 256
    .end local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :goto_17
    return v1

    .line 254
    .restart local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_17

    .line 256
    .end local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_17
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 278
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 280
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 281
    const-string v0, "buzzebees.market"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 292
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 293
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 324
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 268
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 270
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPoints()V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 273
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    const-string v0, "buzzebees.market"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 313
    const-string v0, "paramNFCTag"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 314
    const-string v0, "paramCampaignID"

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaignID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    const-string v0, "paramFromList"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramFromList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    const-string v0, "doRedeeming"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeeming:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    const-string v0, "isContinueUrl"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->isContinueUrl:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 262
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 263
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 286
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 287
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method
