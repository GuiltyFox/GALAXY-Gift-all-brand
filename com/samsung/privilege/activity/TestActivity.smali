.class public Lcom/samsung/privilege/activity/TestActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/TestActivity$GetPointsListener;,
        Lcom/samsung/privilege/activity/TestActivity$TestAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_gift"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 32
    const-string v0, "test"

    iput-object v0, p0, Lcom/samsung/privilege/activity/TestActivity;->LOGCAT:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/TestActivity;->requestWindowFeature(I)Z

    .line 45
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "cache_gift"

    invoke-direct {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3e800000

    invoke-virtual {v0, v7, v8}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 50
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lcom/samsung/privilege/activity/TestActivity;->gScreenHeight:I

    .line 53
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/samsung/privilege/activity/TestActivity;->gScreenWidth:I

    .line 55
    iget v6, p0, Lcom/samsung/privilege/activity/TestActivity;->gScreenWidth:I

    .line 56
    .local v6, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/TestActivity;->gScreenHeight:I

    .line 58
    .local v2, "height":I
    if-le v2, v6, :cond_9e

    .end local v2    # "height":I
    :goto_49
    div-int/lit8 v3, v2, 0x2

    .line 59
    .local v3, "longest":I
    new-instance v7, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/samsung/privilege/activity/TestActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 60
    iget-object v7, p0, Lcom/samsung/privilege/activity/TestActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v8, 0x7f0203a7

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 61
    iget-object v7, p0, Lcom/samsung/privilege/activity/TestActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 62
    iget-object v7, p0, Lcom/samsung/privilege/activity/TestActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 65
    const v7, 0x7f0300a7

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/TestActivity;->setContentView(I)V

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "api/profile/me/point?token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "url":Ljava/lang/String;
    new-instance v7, Lcom/samsung/privilege/activity/TestActivity$GetPointsListener;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/TestActivity$GetPointsListener;-><init>(Lcom/samsung/privilege/activity/TestActivity;)V

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 69
    return-void

    .end local v3    # "longest":I
    .end local v5    # "url":Ljava/lang/String;
    .restart local v2    # "height":I
    :cond_9e
    move v2, v6

    .line 58
    goto :goto_49
.end method
