.class public Lcom/samsung/privilege/activity/InAppsFragment;
.super Landroid/support/v4/app/Fragment;
.source "InAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;,
        Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_gift"

.field private static LOGCAT:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private gAdapter:Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;

.field private gContext:Landroid/content/Context;

.field private gInAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/InAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gridInApps:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, "inapps"

    sput-object v0, Lcom/samsung/privilege/activity/InAppsFragment;->LOGCAT:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gInAppItems:Ljava/util/ArrayList;

    .line 57
    const-class v0, Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private ProcessJsonInApp(Ljava/lang/String;)V
    .registers 10
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 291
    :try_start_6
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 293
    .local v3, "jsonArray":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gInAppItems:Ljava/util/ArrayList;

    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_24

    .line 307
    iget-object v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/samsung/privilege/activity/InAppsFragment$3;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/InAppsFragment$3;-><init>(Lcom/samsung/privilege/activity/InAppsFragment;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_23} :catch_53

    .line 324
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_23
    :goto_23
    return-void

    .line 297
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_24
    :try_start_24
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 298
    .local v4, "json_inapp":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gInAppItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_36

    .line 299
    new-instance v2, Lcom/samsung/privilege/bean/InAppItem;

    invoke-direct {v2, v4}, Lcom/samsung/privilege/bean/InAppItem;-><init>(Lorg/json/JSONObject;)V

    .line 300
    .local v2, "inAppItem":Lcom/samsung/privilege/bean/InAppItem;
    iget-object v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gInAppItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_36} :catch_39

    .line 295
    .end local v2    # "inAppItem":Lcom/samsung/privilege/bean/InAppItem;
    .end local v4    # "json_inapp":Lorg/json/JSONObject;
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 302
    :catch_39
    move-exception v0

    .line 303
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3a
    sget-object v5, Lcom/samsung/privilege/activity/InAppsFragment;->LOGCAT:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetCampaignListener|onComplete|for|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_52} :catch_53

    goto :goto_36

    .line 319
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_53
    move-exception v0

    .line 320
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v5, Lcom/samsung/privilege/activity/InAppsFragment;->LOGCAT:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetCampaignListener|onComplete|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/privilege/activity/InAppsFragment;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/InAppsFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/InAppsFragment;->ProcessJsonInApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/InAppsFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/InAppsFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/InAppsFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/InAppsFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gInAppItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/InAppsFragment;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/InAppsFragment;Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gAdapter:Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;

    return-void
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/InAppsFragment;)Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gridInApps:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/InAppsFragment;)Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gAdapter:Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;

    return-object v0
.end method

.method private getSamsungGift()V
    .registers 5

    .prologue
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/config/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/privilege/AppSetting;->INAPP_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lcom/samsung/privilege/activity/InAppsFragment;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/InAppsFragment$GetSamsungGiftListener;-><init>(Lcom/samsung/privilege/activity/InAppsFragment;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 247
    sget-object v0, Lcom/samsung/privilege/activity/InAppsFragment;->LOGCAT:Ljava/lang/String;

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 251
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/InAppsFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/InAppsFragment$2;-><init>(Lcom/samsung/privilege/activity/InAppsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    invoke-direct {p0}, Lcom/samsung/privilege/activity/InAppsFragment;->getSamsungGift()V

    .line 155
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    iput-object p1, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/InAppsFragment;->setRetainInstance(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 77
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 79
    :cond_18
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "cache_gift"

    invoke-direct {v0, v5, v6}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/high16 v6, 0x3e800000

    invoke-virtual {v0, v5, v6}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 85
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gScreenHeight:I

    .line 88
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gScreenWidth:I

    .line 89
    iget v4, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gScreenWidth:I

    .line 90
    .local v4, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gScreenHeight:I

    .line 91
    .local v2, "height":I
    if-le v2, v4, :cond_83

    .end local v2    # "height":I
    :goto_55
    div-int/lit8 v3, v2, 0x2

    .line 92
    .local v3, "longest":I
    new-instance v5, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 93
    iget-object v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v6, 0x7f0203a7

    invoke-virtual {v5, v6}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 94
    iget-object v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 95
    iget-object v5, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 97
    if-eqz p1, :cond_82

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/InAppsFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 102
    :cond_82
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_83
    move v2, v4

    .line 91
    goto :goto_55
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const v1, 0x7f0300f4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0c034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gridInApps:Landroid/widget/GridView;

    .line 112
    iget-object v1, p0, Lcom/samsung/privilege/activity/InAppsFragment;->gridInApps:Landroid/widget/GridView;

    new-instance v2, Lcom/samsung/privilege/activity/InAppsFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/InAppsFragment$1;-><init>(Lcom/samsung/privilege/activity/InAppsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 224
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 215
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 232
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 192
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 198
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 199
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 177
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 182
    const-string v1, "samsunggift_inapp"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "catch_samsunggift":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 184
    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/InAppsFragment;->ProcessJsonInApp(Ljava/lang/String;)V

    .line 187
    :cond_18
    iget-object v1, p0, Lcom/samsung/privilege/activity/InAppsFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 188
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    sget-object v0, Lcom/samsung/privilege/activity/InAppsFragment;->LOGCAT:Ljava/lang/String;

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 173
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 207
    return-void
.end method
