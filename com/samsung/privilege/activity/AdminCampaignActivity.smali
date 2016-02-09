.class public Lcom/samsung/privilege/activity/AdminCampaignActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AdminCampaignActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;,
        Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_market"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private gAdapter:Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;

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

.field private gSDK_INT:I

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 42
    const-string v0, "AdminCampaignActivity"

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->LOGCAT:Ljava/lang/String;

    .line 43
    const-class v0, Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->gCampaignViews:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->gSDK_INT:I

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->gCampaignViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/AdminCampaignActivity;Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->gAdapter:Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->gAdapter:Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/AdminCampaignActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method private getCampaign(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 122
    const-string v0, ""

    .line 123
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1033"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?format=json&device_locale=1033"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_31
    const-string v1, "AdminCampaignActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;-><init>(Lcom/samsung/privilege/activity/AdminCampaignActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 130
    return-void

    .line 126
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?format=json&device_locale=1054"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/AdminCampaignActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/AdminCampaignActivity$2;-><init>(Lcom/samsung/privilege/activity/AdminCampaignActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->finish()V

    .line 118
    return-void
.end method

.method public doCampaignID(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    const v2, 0x7f07005e

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 112
    .local v0, "etCampaignID":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 113
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getCampaign(I)V

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->requestWindowFeature(I)Z

    .line 60
    const v7, 0x7f03001a

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->setContentView(I)V

    .line 62
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "cache_market"

    invoke-direct {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3e800000

    invoke-virtual {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 70
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 71
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->gScreenHeight:I

    .line 73
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->gScreenWidth:I

    .line 75
    iget v6, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->gScreenWidth:I

    .line 76
    .local v6, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->gScreenHeight:I

    .line 78
    .local v2, "height":I
    if-le v2, v6, :cond_8c

    .end local v2    # "height":I
    :goto_56
    div-int/lit8 v4, v2, 0x2

    .line 79
    .local v4, "longest":I
    new-instance v7, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 80
    iget-object v7, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v8, 0x7f02039f

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 81
    iget-object v7, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 82
    iget-object v7, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 85
    const v7, 0x7f07005f

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 86
    .local v3, "listCampaign":Landroid/widget/ListView;
    new-instance v7, Lcom/samsung/privilege/activity/AdminCampaignActivity$1;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity$1;-><init>(Lcom/samsung/privilege/activity/AdminCampaignActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    return-void

    .end local v3    # "listCampaign":Landroid/widget/ListView;
    .end local v4    # "longest":I
    .restart local v2    # "height":I
    :cond_8c
    move v2, v6

    .line 78
    goto :goto_56
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity;->gSDK_INT:I

    .line 107
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    return-void
.end method
