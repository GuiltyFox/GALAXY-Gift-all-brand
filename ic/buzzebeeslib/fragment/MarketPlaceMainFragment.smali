.class public Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;
.super Landroid/support/v4/app/Fragment;
.source "MarketPlaceMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;,
        Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;,
        Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;,
        Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_market"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private RC_WEBVIEW_SHOPPING_BASKET:I

.field private gAdapterCategoryDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

.field private gAdapterTypeDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;

.field private gCampaignCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignCategory;",
            ">;"
        }
    .end annotation
.end field

.field private gCampaignTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignType;",
            ">;"
        }
    .end annotation
.end field

.field private gCurrentFilterCategory:Ljava/lang/String;

.field private gCurrentFilterCenter:Ljava/lang/String;

.field private gCurrentFilterMode:Ljava/lang/String;

.field private gCurrentFilterPlace:Ljava/lang/String;

.field private gCurrentFilterSponsor:Ljava/lang/String;

.field private gCurrentLat:D

.field private gCurrentLon:D

.field private gEtMenuSearch:Landroid/widget/EditText;

.field private gGridCategory:Landroid/widget/GridView;

.field private gGridType:Landroid/widget/GridView;

.field private gImgAnimation:Landroid/view/animation/AnimationSet;

.field private gImgBadge:Landroid/widget/ImageView;

.field private gImgCash1:Landroid/widget/ImageView;

.field private gImgCash2:Landroid/widget/ImageView;

.field private gImgCash3:Landroid/widget/ImageView;

.field private gImgCash4:Landroid/widget/ImageView;

.field private gImgComma1:Landroid/widget/ImageView;

.field private gImgMenuSearchCancel:Landroid/widget/ImageView;

.field private gIsLoadCampaignCategory:Z

.field private gIsMenuExpanded:Z

.field private gLayoutBadge:Landroid/widget/RelativeLayout;

.field private gLayoutBadgeAlert:Landroid/widget/RelativeLayout;

.field private gLayoutButtonPost:Landroid/widget/RelativeLayout;

.field private gLayoutMenuDynamic:Landroid/widget/RelativeLayout;

.field private gLayoutNewbie:Landroid/widget/RelativeLayout;

.field private gLayoutPoints:Landroid/widget/RelativeLayout;

.field private gLayoutRoot:Landroid/widget/LinearLayout;

.field private gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

.field private gSDK_INT:I

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

.field private gTvBadge:Landroid/widget/TextView;

.field private gTvBadgePoint:Landroid/widget/TextView;

.field private gps:Lic/buzzebeeslib/util/GPSTracker;

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mLeak:Landroid/view/View;

.field private myZoomInAnimation:Landroid/view/animation/Animation;

.field private myZoomOutAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-class v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 69
    const-string v0, "buzzebees.market"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->LOGCAT:Ljava/lang/String;

    .line 71
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->RC_WEBVIEW_SHOPPING_BASKET:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignTypes:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    .line 87
    const-string v0, "all"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gIsLoadCampaignCategory:Z

    .line 114
    iput v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gSDK_INT:I

    .line 944
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    .line 67
    return-void
.end method

.method private PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 10
    .param p1, "pBadgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/badge/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/picture?type=large"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "imgUrl":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_badge_default_512:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1029
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTvBadge:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lic/buzzebeeslib/bean/BadgeAlert;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTvBadgePoint:Landroid/widget/TextView;

    iget v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->points:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1033
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lic/buzzebeeslib/R$anim;->badge_zoom_in:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomInAnimation:Landroid/view/animation/Animation;

    .line 1034
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lic/buzzebeeslib/R$anim;->badge_zoom_out:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;

    .line 1036
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$11;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1094
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$12;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$12;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1118
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1121
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgAnimation:Landroid/view/animation/AnimationSet;

    .line 1122
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1123
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1124
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1126
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 1127
    .local v6, "slideIn":Landroid/view/animation/Animation;
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1128
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1129
    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1130
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1131
    return-void
.end method

.method private ProcessJsonCampaignCategory(Ljava/lang/String;)V
    .registers 13
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 506
    :try_start_0
    sget-object v8, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "response_text "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 509
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignTypes:Ljava/util/ArrayList;

    .line 510
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    .line 511
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_32

    .line 548
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->setCampaignCategoryUI()V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_31} :catch_e1

    .line 553
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_31
    return-void

    .line 513
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_32
    :try_start_32
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 515
    .local v6, "json_category":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-static {v6, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cat"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 516
    const-string v8, "subitems"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 517
    .local v5, "jsonArrayCat":Lorg/json/JSONArray;
    sget-object v8, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "jsonArrayCat "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_6a} :catch_c7

    .line 519
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_6b
    :try_start_6b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v3, v8, :cond_74

    .line 511
    .end local v3    # "j":I
    .end local v5    # "jsonArrayCat":Lorg/json/JSONArray;
    .end local v6    # "json_category":Lorg/json/JSONObject;
    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 520
    .restart local v3    # "j":I
    .restart local v5    # "jsonArrayCat":Lorg/json/JSONArray;
    .restart local v6    # "json_category":Lorg/json/JSONObject;
    :cond_74
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 522
    .local v7, "json_subitems":Lorg/json/JSONObject;
    new-instance v0, Lic/buzzebeeslib/bean/CampaignCategory;

    invoke-direct {v0}, Lic/buzzebeeslib/bean/CampaignCategory;-><init>()V

    .line 523
    .local v0, "category":Lic/buzzebeeslib/bean/CampaignCategory;
    const-string v8, "id"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lic/buzzebeeslib/bean/CampaignCategory;->ID:Ljava/lang/String;

    .line 524
    const-string v8, "name"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    .line 525
    const-string v8, "mode"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Mode:Ljava/lang/String;

    .line 526
    const-string v8, "cat"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    .line 527
    const-string v8, "count"

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Count:I

    .line 528
    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_aa} :catch_ad

    .line 519
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 530
    .end local v0    # "category":Lic/buzzebeeslib/bean/CampaignCategory;
    .end local v7    # "json_subitems":Lorg/json/JSONObject;
    :catch_ad
    move-exception v1

    .line 531
    .local v1, "e":Lorg/json/JSONException;
    :try_start_ae
    sget-object v8, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(CATCH)json.toString(2): "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catch Lorg/json/JSONException; {:try_start_ae .. :try_end_c6} :catch_c7

    goto :goto_71

    .line 536
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "j":I
    .end local v5    # "jsonArrayCat":Lorg/json/JSONArray;
    .end local v6    # "json_category":Lorg/json/JSONObject;
    :catch_c7
    move-exception v1

    .line 537
    .restart local v1    # "e":Lorg/json/JSONException;
    :try_start_c8
    sget-object v8, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(GetCampaignCategoryListener|onComplete|for|JSONException):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catch Lorg/json/JSONException; {:try_start_c8 .. :try_end_e0} :catch_e1

    goto :goto_71

    .line 550
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_e1
    move-exception v8

    goto/16 :goto_31

    .line 534
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "json_category":Lorg/json/JSONObject;
    :cond_e4
    :try_start_e4
    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignTypes:Ljava/util/ArrayList;

    new-instance v9, Lic/buzzebeeslib/bean/CampaignType;

    invoke-direct {v9, v6}, Lic/buzzebeeslib/bean/CampaignType;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catch Lorg/json/JSONException; {:try_start_e4 .. :try_end_ee} :catch_c7

    goto :goto_71
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gIsMenuExpanded:Z

    return v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V
    .registers 1

    .prologue
    .line 422
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V

    return-void
.end method

.method static synthetic access$10(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V
    .registers 1

    .prologue
    .line 587
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->resetFilter()V

    return-void
.end method

.method static synthetic access$11(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 832
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doFilterSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V
    .registers 1

    .prologue
    .line 809
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doGotoPurchasingList()V

    return-void
.end method

.method static synthetic access$19()Ljava/lang/String;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    return-object v0
.end method

.method static synthetic access$20(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->RC_WEBVIEW_SHOPPING_BASKET:I

    return v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutMenuDynamic:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutPoints:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$23(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 944
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$24(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 945
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgCash1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$25(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 946
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgCash2:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 947
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgCash3:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$27(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 948
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgCash4:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$28(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 949
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgComma1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$29(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V
    .registers 1

    .prologue
    .line 391
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->showRightMenu()V

    return-void
.end method

.method static synthetic access$30(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadgeAlert:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$31(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 983
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$32(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/LinearLayout;)V
    .registers 2

    .prologue
    .line 982
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$33(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 983
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$34(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 987
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$35(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 984
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTvBadge:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$36(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 986
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTvBadgePoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$37(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 985
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$38(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 985
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$39(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 982
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->ProcessJsonCampaignCategory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$40(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 2

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V

    return-void
.end method

.method static synthetic access$41(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 989
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$42(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 1140
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 872
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doOpenByCat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V
    .registers 1

    .prologue
    .line 900
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doFilterNearBy()V

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 853
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doFilterByType(Ljava/lang/String;)V

    return-void
.end method

.method private doFilterByLatLon(DD)V
    .registers 20
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    .line 816
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->resetFilter()V

    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 819
    const-string v2, "nearby"

    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 821
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v12

    .line 823
    .local v12, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v12, :cond_49

    .line 824
    invoke-virtual {v12}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    .line 825
    .local v13, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v14, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->fragment_tab:I

    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    const-string v3, ""

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    const-string v5, ""

    const-wide/16 v6, -0x1

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v10, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v11, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    invoke-direct/range {v2 .. v11}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 826
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 829
    .end local v13    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_49
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V

    .line 830
    return-void
.end method

.method private doFilterByType(Ljava/lang/String;)V
    .registers 15
    .param p1, "pType"    # Ljava/lang/String;

    .prologue
    .line 854
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->resetFilter()V

    .line 856
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 857
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 858
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 859
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "doFilterHot"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    .line 863
    .local v10, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v10, :cond_3b

    .line 864
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v11

    .line 865
    .local v11, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v12, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->fragment_tab:I

    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    const-string v1, ""

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    const-string v3, ""

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 866
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 869
    .end local v11    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_3b
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V

    .line 870
    return-void
.end method

.method private doFilterNearBy()V
    .registers 4

    .prologue
    .line 901
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 905
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getLocation()V

    .line 906
    return-void

    .line 902
    :cond_d
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/CampaignCategory;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private doFilterSearch(Ljava/lang/String;)V
    .registers 15
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 834
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->resetFilter()V

    .line 836
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 837
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 838
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 839
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "doFilterSearch"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    .line 844
    .local v10, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v10, :cond_3c

    .line 845
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v11

    .line 846
    .local v11, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v12, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->fragment_tab:I

    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    const-string v3, ""

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 847
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 850
    .end local v11    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_3c
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V

    .line 851
    return-void
.end method

.method private doGotoPurchasingList()V
    .registers 4

    .prologue
    .line 810
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V

    .line 811
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 812
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 813
    return-void
.end method

.method private doOpenByCat(Ljava/lang/String;)V
    .registers 16
    .param p1, "pCat"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gAdapterCategoryDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    if-eqz v0, :cond_47

    .line 874
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->resetFilter()V

    .line 876
    const/4 v10, 0x0

    .line 877
    .local v10, "category":Lic/buzzebeeslib/bean/CampaignCategory;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gAdapterCategoryDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v13, v0, :cond_48

    .line 884
    :goto_13
    if-eqz v10, :cond_47

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, v10, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 886
    iget-object v0, v10, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 888
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v11

    .line 890
    .local v11, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v11, :cond_47

    .line 891
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v12

    .line 892
    .local v12, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    const-string v1, ""

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    iget-object v3, v10, Lic/buzzebeeslib/bean/CampaignCategory;->Name:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    iget-object v7, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    iget-object v8, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    .line 893
    sget v0, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->fragment_tab:I

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 894
    invoke-virtual {v12}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 898
    .end local v10    # "category":Lic/buzzebeeslib/bean/CampaignCategory;
    .end local v11    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v12    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v13    # "i":I
    :cond_47
    return-void

    .line 878
    .restart local v10    # "category":Lic/buzzebeeslib/bean/CampaignCategory;
    .restart local v13    # "i":I
    :cond_48
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gAdapterCategoryDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/CampaignCategory;

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignCategory;->Cat:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 879
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gAdapterCategoryDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "category":Lic/buzzebeeslib/bean/CampaignCategory;
    check-cast v10, Lic/buzzebeeslib/bean/CampaignCategory;

    .line 880
    .restart local v10    # "category":Lic/buzzebeeslib/bean/CampaignCategory;
    goto :goto_13

    .line 877
    :cond_65
    add-int/lit8 v13, v13, 0x1

    goto :goto_9
.end method

.method private getLocation()V
    .registers 5

    .prologue
    .line 570
    new-instance v0, Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lic/buzzebeeslib/util/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    .line 572
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->canGetLocation()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 573
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentLat:D

    .line 574
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentLon:D

    .line 576
    iget-wide v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentLat:D

    iget-wide v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentLon:D

    invoke-direct {p0, v0, v1, v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->doFilterByLatLon(DD)V

    .line 578
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->stopUsingGPS()V

    .line 585
    :goto_33
    return-void

    .line 583
    :cond_34
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/GPSTracker;->showSettingsAlert()V

    goto :goto_33
.end method

.method private hideRightMenu()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 423
    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gIsMenuExpanded:Z

    .line 425
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->outToRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 426
    .local v0, "outToRight":Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 427
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 428
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 429
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutMenuDynamic:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 431
    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$7;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$7;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 447
    return-void
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1134
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1135
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1136
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1137
    return-object v0
.end method

.method private loadCampaignCategory()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaigncat/full_menu_ads?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "url":Ljava/lang/String;
    const-string v1, "buzzebees.markets"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(loadCampaignCategory)url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;

    invoke-direct {v1, p0, v4}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$GetCampaignCategoryListener;)V

    invoke-static {v0, v1, v4}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method private loadCampaignCategoryCatch()V
    .registers 4

    .prologue
    .line 450
    const-string v1, "campaign_category_all"

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "catch_campaign_category_all":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 452
    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->ProcessJsonCampaignCategory(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->loadCampaignCategory()V

    .line 457
    :goto_18
    return-void

    .line 455
    :cond_19
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->loadCampaignCategory()V

    goto :goto_18
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1141
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1142
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1143
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1144
    return-object v0
.end method

.method private outToRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1148
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1149
    .local v0, "outtoRight":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1150
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1151
    return-object v0
.end method

.method private playPoint(I)V
    .registers 4
    .param p1, "points"    # I

    .prologue
    .line 952
    sget-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    if-nez v0, :cond_13

    .line 953
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    .line 955
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$9;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$9;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 975
    :cond_13
    return-void
.end method

.method private resetFilter()V
    .registers 4

    .prologue
    .line 588
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1e

    .line 592
    const-string v1, ""

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 593
    const-string v1, ""

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 594
    const-string v1, ""

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 595
    const-string v1, ""

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 596
    const-string v1, ""

    iput-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 597
    return-void

    .line 589
    :cond_1e
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/CampaignCategory;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lic/buzzebeeslib/bean/CampaignCategory;->IsSelected:Z

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setCampaignCategoryUI()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 556
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignTypes:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gAdapterTypeDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;

    .line 557
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gAdapterCategoryDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    .line 558
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gCampaignCategories.size() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5b

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gIsLoadCampaignCategory:Z

    .line 561
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gGridType:Landroid/widget/GridView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gAdapterTypeDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 562
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gGridCategory:Landroid/widget/GridView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gAdapterCategoryDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 567
    :goto_5a
    return-void

    .line 564
    :cond_5b
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gGridType:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 565
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gGridCategory:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_5a
.end method

.method private showRightMenu()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 392
    const/4 v1, 0x1

    iput-boolean v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gIsMenuExpanded:Z

    .line 394
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 395
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 396
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 397
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 399
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutMenuDynamic:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 401
    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$6;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$6;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 418
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gAdapterTypeDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3TypeDynamicAdapter;->notifyDataSetChanged()V

    .line 419
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gAdapterCategoryDynamic:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$MarketPlace3CategoryDynamicAdapter;->notifyDataSetChanged()V

    .line 420
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 600
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$8;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$8;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    return-void
.end method


# virtual methods
.method public checkMenuIsShow()Z
    .registers 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gIsMenuExpanded:Z

    if-eqz v0, :cond_9

    .line 384
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V

    .line 385
    const/4 v0, 0x1

    .line 387
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public doResetTextSearch()V
    .registers 3

    .prologue
    .line 1208
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;

    if-eqz v0, :cond_12

    .line 1209
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->resetFilter()V

    .line 1211
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    const-string v0, "all"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1214
    :cond_12
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 296
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 297
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    .line 300
    .local v13, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v13, :cond_5b

    .line 301
    const-string v11, ""

    .line 303
    .local v11, "cat":Ljava/lang/String;
    :try_start_12
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    .line 304
    .local v10, "args":Landroid/os/Bundle;
    if-eqz v10, :cond_1e

    .line 305
    const-string v0, "cat"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_5c

    move-result-object v11

    .line 311
    .end local v10    # "args":Landroid/os/Bundle;
    :cond_1e
    :goto_1e
    if-eqz v11, :cond_28

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 314
    :cond_28
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v14

    .line 315
    .local v14, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 316
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-wide/16 v4, -0x1

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    iget-object v9, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    .line 317
    sget v0, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->fragment_tab:I

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-virtual {v14, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 322
    :goto_58
    invoke-virtual {v14}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 325
    .end local v11    # "cat":Ljava/lang/String;
    .end local v14    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_5b
    return-void

    .line 307
    .restart local v11    # "cat":Ljava/lang/String;
    :catch_5c
    move-exception v12

    .line 308
    .local v12, "e":Ljava/lang/Exception;
    const-string v11, ""

    goto :goto_1e

    .line 319
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v14    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_60
    new-instance v0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-wide/16 v4, -0x1

    const-string v6, ""

    const-string v7, "all"

    const-string v8, ""

    const-string v9, ""

    invoke-direct/range {v0 .. v9}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    .line 320
    sget v0, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->fragment_tab:I

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-virtual {v14, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_58
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 329
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 330
    iget v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->RC_WEBVIEW_SHOPPING_BASKET:I

    if-ne p1, v0, :cond_12

    .line 336
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutMenuDynamic:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 337
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V

    .line 340
    :cond_12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->setRetainInstance(Z)V

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mHandler:Landroid/os/Handler;

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gSDK_INT:I

    .line 127
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 149
    sget v14, Lic/buzzebeeslib/R$layout;->bz_market_place_fragment:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    .line 152
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 153
    .local v11, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 155
    new-instance v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "cache_market"

    invoke-direct {v2, v14, v15}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    .local v2, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/high16 v15, 0x3e800000

    invoke-virtual {v2, v14, v15}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 157
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 158
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 159
    iget v14, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iput v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gScreenHeight:I

    .line 160
    iget v14, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gScreenWidth:I

    .line 162
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gScreenWidth:I

    .line 163
    .local v13, "width":I
    move-object/from16 v0, p0

    iget v6, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gScreenHeight:I

    .line 165
    .local v6, "height":I
    if-le v6, v13, :cond_249

    .end local v6    # "height":I
    :goto_6c
    div-int/lit8 v10, v6, 0x2

    .line 166
    .local v10, "longest":I
    new-instance v14, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v10}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v15, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v14, v15}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v15

    invoke-virtual {v14, v15, v2}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    iget v14, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gScreenWidth:I

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->marketPlace_3_fragment_tab_menu_dynamic:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutMenuDynamic:Landroid/widget/RelativeLayout;

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMarketPlace3FragmentTab;->layoutButtonPost:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutButtonPost:Landroid/widget/RelativeLayout;

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->gridType:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gGridType:Landroid/widget/GridView;

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->gridCategory:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gGridCategory:Landroid/widget/GridView;

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->layoutPoints:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutPoints:Landroid/widget/RelativeLayout;

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMarketPlace3Fragment;->layoutBadgeAlert:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadgeAlert:Landroid/widget/RelativeLayout;

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutButtonPost:Landroid/widget/RelativeLayout;

    new-instance v15, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$ClickMarketFilterListener;)V

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->etMenuSearch:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;

    new-instance v15, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->imgMenuSearchCancel:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgMenuSearchCancel:Landroid/widget/ImageView;

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gImgMenuSearchCancel:Landroid/widget/ImageView;

    new-instance v15, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$2;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->layoutMenuPurchases:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 230
    .local v7, "layoutMenuPurchases":Landroid/widget/LinearLayout;
    new-instance v14, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$3;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    const-string v15, "fonts/DSNSKW_.TTF"

    invoke-static {v14, v15}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 238
    .local v5, "font_HEADER":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    const-string v15, "fonts/kit55p.ttf"

    invoke-static {v14, v15}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 241
    .local v4, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 243
    .local v12, "tvPageHeader":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->etMenuSearch:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->layoutMenuRoot:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 246
    .local v8, "layoutMenuRoot":Landroid/widget/LinearLayout;
    new-instance v14, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$4;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gEtMenuSearch:Landroid/widget/EditText;

    invoke-virtual {v14, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->tvMenuPurchases:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->tvMenuShoppingBasket:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->tvMenuCategory:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 259
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    if-eqz v14, :cond_217

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_217

    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutButtonPost:Landroid/widget/RelativeLayout;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 265
    :cond_217
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gIsLoadCampaignCategory:Z

    if-nez v14, :cond_24c

    .line 266
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->loadCampaignCategoryCatch()V

    .line 271
    :goto_220
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    sget v15, Lic/buzzebeeslib/R$idMenuDynamic;->layoutMenuShoppingBasket:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 273
    .local v9, "layoutMenuShoppingBasket":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lic/buzzebeeslib/LibUserLogin;->GetIsShowShoppingBasket(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_250

    .line 274
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    :goto_23a
    new-instance v14, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$5;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    return-object v14

    .end local v4    # "font":Landroid/graphics/Typeface;
    .end local v5    # "font_HEADER":Landroid/graphics/Typeface;
    .end local v7    # "layoutMenuPurchases":Landroid/widget/LinearLayout;
    .end local v8    # "layoutMenuRoot":Landroid/widget/LinearLayout;
    .end local v9    # "layoutMenuShoppingBasket":Landroid/widget/LinearLayout;
    .end local v10    # "longest":I
    .end local v12    # "tvPageHeader":Landroid/widget/TextView;
    .restart local v6    # "height":I
    :cond_249
    move v6, v13

    .line 165
    goto/16 :goto_6c

    .line 268
    .end local v6    # "height":I
    .restart local v4    # "font":Landroid/graphics/Typeface;
    .restart local v5    # "font_HEADER":Landroid/graphics/Typeface;
    .restart local v7    # "layoutMenuPurchases":Landroid/widget/LinearLayout;
    .restart local v8    # "layoutMenuRoot":Landroid/widget/LinearLayout;
    .restart local v10    # "longest":I
    .restart local v12    # "tvPageHeader":Landroid/widget/TextView;
    :cond_24c
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->setCampaignCategoryUI()V

    goto :goto_220

    .line 276
    .restart local v9    # "layoutMenuShoppingBasket":Landroid/widget/LinearLayout;
    :cond_250
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_23a
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1159
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 1160
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 1163
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 1165
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    .line 1166
    iput-boolean v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gIsMenuExpanded:Z

    .line 1167
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutButtonPost:Landroid/widget/RelativeLayout;

    .line 1169
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCampaignCategories:Ljava/util/ArrayList;

    .line 1171
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterMode:Ljava/lang/String;

    .line 1173
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mHandler:Landroid/os/Handler;

    .line 1175
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gps:Lic/buzzebeeslib/util/GPSTracker;

    .line 1177
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCategory:Ljava/lang/String;

    .line 1178
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterCenter:Ljava/lang/String;

    .line 1179
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterSponsor:Ljava/lang/String;

    .line 1180
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentFilterPlace:Ljava/lang/String;

    .line 1182
    iput-boolean v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gIsLoadCampaignCategory:Z

    .line 1184
    iput-wide v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentLat:D

    .line 1185
    iput-wide v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gCurrentLon:D

    .line 1187
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutPoints:Landroid/widget/RelativeLayout;

    .line 1188
    iput-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutBadgeAlert:Landroid/widget/RelativeLayout;

    .line 1190
    iput v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gScreenWidth:I

    .line 1191
    iput v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gScreenHeight:I

    .line 1192
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 1196
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 1197
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1199
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy|getActivity() != null"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/support/v4/app/Fragment;I)V

    .line 1204
    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mLeak:Landroid/view/View;

    .line 1205
    return-void

    .line 1202
    :cond_20
    sget-object v0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy|getActivity() == null"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 141
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 142
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 143
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gSDK_INT:I

    .line 134
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 135
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 136
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 365
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 366
    return-void
.end method

.method public playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 4
    .param p1, "badgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    .line 993
    sget-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    if-nez v0, :cond_13

    .line 994
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    .line 996
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$10;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;Lic/buzzebeeslib/bean/BadgeAlert;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1023
    :cond_13
    return-void
.end method

.method public playPointsAndBadge()V
    .registers 7

    .prologue
    .line 915
    const-string v3, "buzzebees.market"

    const-string v4, "private void playPointsAndBadge() {"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :try_start_7
    sget-object v3, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_43

    sget-boolean v3, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    if-nez v3, :cond_43

    .line 919
    const-string v3, "buzzebees.market"

    const-string v4, "while ((AppSetting.QUEUE_POINTS.size() > 0) && (AnimationPoint.IS_PLAYING == false)) {"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    sget-object v3, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 921
    .local v2, "points":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->playPoint(I)V

    .line 922
    const-string v3, "buzzebees.market"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "playPoint("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_43} :catch_7a

    .line 930
    .end local v2    # "points":Ljava/lang/Integer;
    :cond_43
    :goto_43
    :try_start_43
    sget-object v3, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_79

    .line 931
    const-string v3, "buzzebees.market"

    const-string v4, "while (AppSetting.QUEUE_BADGEALERTS.size() > 0) {"

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    sget-object v3, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/BadgeAlert;

    .line 933
    .local v0, "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V

    .line 934
    const-string v3, "buzzebees.market"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "playBadge("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lic/buzzebeeslib/bean/BadgeAlert;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_79} :catch_94

    .line 940
    .end local v0    # "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    :cond_79
    :goto_79
    return-void

    .line 925
    :catch_7a
    move-exception v1

    .line 926
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "buzzebees.market"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|playPointsAndBadge|QUEUE_POINTS):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 937
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_94
    move-exception v1

    .line 938
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "buzzebees.market"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|playPointsAndBadge|QUEUE_BADGEALERTS):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79
.end method

.method public updatePoint(J)V
    .registers 4
    .param p1, "points"    # J

    .prologue
    .line 909
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    if-eqz v0, :cond_9

    .line 910
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gTabFragment:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-virtual {v0, p1, p2}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->setPointUI(J)V

    .line 912
    :cond_9
    return-void
.end method
