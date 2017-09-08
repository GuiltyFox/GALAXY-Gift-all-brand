.class public Lcom/samsung/privilege/activity/WebViewSurveyActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WebViewSurveyActivity.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/facebook/CallbackManager;

.field private d:Lcom/samsung/privilege/control/WebViewSurvey;

.field private e:Lcom/bzbs/bean/CameraData;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const-class v0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/bzbs/bean/CameraData;

    invoke-direct {v0}, Lcom/bzbs/bean/CameraData;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->f:I

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g:I

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->h:I

    .line 93
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->i:I

    .line 94
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->j:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Lcom/samsung/privilege/control/WebViewSurvey;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 475
    const v0, 0x7f100570

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/WebViewSurvey;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    .line 477
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v0}, Lcom/samsung/privilege/control/WebViewSurvey;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 478
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 479
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 480
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 481
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 484
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 485
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 488
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 491
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 492
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 495
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 497
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_40

    .line 499
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 503
    :cond_40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_49

    .line 504
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 507
    :cond_49
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$5;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/WebViewSurvey;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/WebViewSurvey;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 521
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$7;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/WebViewSurvey;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 574
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$8;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/WebViewSurvey;->a(Lcom/samsung/privilege/control/WebViewSurvey$CallbackInitialWebView;)V

    .line 626
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$9;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/WebViewSurvey;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 650
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;

    invoke-direct {v1, p0, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/Object;)V

    const-string/jumbo v2, "WebViewJavaScriptInterface"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/WebViewSurvey;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    if-eqz p1, :cond_90

    .line 653
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/control/WebViewSurvey;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 659
    :goto_8f
    return-void

    .line 655
    :cond_90
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    sget-object v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadUrl->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/WebViewSurvey;->loadUrl(Ljava/lang/String;)V

    goto :goto_8f
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 449
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$4;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Z)Z
    .registers 2

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->h()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .registers 4

    .prologue
    .line 338
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2a

    .line 339
    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 340
    if-eqz v0, :cond_1e

    .line 341
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 351
    :goto_1d
    return-void

    .line 343
    :cond_1e
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->i()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_1d

    .line 348
    :catch_22
    move-exception v0

    .line 349
    const-string/jumbo v0, "Can not open scancode!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Ljava/lang/String;)V

    goto :goto_1d

    .line 346
    :cond_2a
    :try_start_2a
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->i()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_22

    goto :goto_1d
.end method

.method private i()V
    .registers 2

    .prologue
    .line 354
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {v0, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 355
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->c()V

    .line 356
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bzbs/bean/CameraData;->gIsModeTakePhoto:Z

    .line 361
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_11

    .line 362
    const/16 v0, 0x15

    invoke-static {p0, v0}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/app/Activity;I)V

    .line 367
    :goto_10
    return-void

    .line 364
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10
.end method

.method private k()V
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bzbs/bean/CameraData;->gIsModeTakePhoto:Z

    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_11

    .line 373
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/app/Activity;I)V

    .line 381
    :goto_10
    return-void

    .line 376
    :cond_11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 377
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string/jumbo v1, "Select Picture"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10
.end method

.method private l()V
    .registers 7

    .prologue
    .line 384
    const v0, 0x7f100572

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 385
    const v1, 0x7f100573

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/campaign/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/survey_img"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    sget-object v3, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploadImage->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sget-object v3, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "questionId->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget-object v3, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "temp1->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    iget-object v5, v5, Lcom/bzbs/bean/CameraData;->gMediaFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const v3, 0x7f100571

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    invoke-static {p0}, Lcom/koushikdutta/ion/Ion;->a(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;

    move-result-object v3

    .line 393
    invoke-interface {v3, v2}, Lcom/koushikdutta/ion/builder/LoadBuilder;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    .line 394
    invoke-interface {v2, v0}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->b(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    new-instance v2, Lcom/samsung/privilege/activity/WebViewSurveyActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Landroid/widget/TextView;)V

    .line 395
    invoke-interface {v0, v2}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->b(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    const-string/jumbo v1, "token"

    .line 403
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$M;

    const-string/jumbo v1, "questionId"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k:Ljava/lang/String;

    .line 404
    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/ion/builder/Builders$Any$M;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$M;

    const-string/jumbo v2, "temp1"

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    iget-object v1, v1, Lcom/bzbs/bean/CameraData;->gMediaFile:Ljava/io/File;

    .line 405
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_fa

    const-string/jumbo v1, "image/jpg"

    :goto_e3
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    iget-object v3, v3, Lcom/bzbs/bean/CameraData;->gMediaFile:Ljava/io/File;

    invoke-interface {v0, v2, v1, v3}, Lcom/koushikdutta/ion/builder/Builders$Any$M;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$M;

    .line 406
    invoke-interface {v0}, Lcom/koushikdutta/ion/builder/Builders$Any$M;->a()Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    .line 407
    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/future/ResponseFuture;->a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 446
    return-void

    .line 405
    :cond_fa
    const-string/jumbo v1, "image/png"

    goto :goto_e3
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->finish()V

    .line 841
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 7

    .prologue
    .line 460
    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 461
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 464
    const-string/jumbo v1, "_data"

    .line 465
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 466
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 468
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result-object v0

    .line 470
    :goto_21
    return-object v0

    .line 469
    :catch_22
    move-exception v0

    .line 470
    const-string/jumbo v0, ""

    goto :goto_21
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x1

    .line 233
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 234
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->c:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 236
    sget-object v0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult->requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    if-ne p2, v3, :cond_94

    const/16 v0, 0xa

    if-ne p1, v0, :cond_94

    .line 240
    :try_start_34
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 241
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 242
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    iget-object v1, v1, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 244
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 245
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    const-string/jumbo v2, "image-path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string/jumbo v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const-string/jumbo v1, "aspectX"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string/jumbo v1, "aspectY"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_8b} :catch_d0

    .line 314
    :cond_8b
    :goto_8b
    new-instance v0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-static {p1, p2, p3, p0, v0}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(IILandroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$Callbacks;)V

    .line 334
    return-void

    .line 256
    :cond_94
    if-ne p2, v3, :cond_12d

    const/16 v0, 0x14

    if-ne p1, v0, :cond_12d

    .line 257
    :try_start_9a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->f()Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_d2

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    .line 280
    :goto_a9
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    const-string/jumbo v2, "image-path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v0, "scale"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    const-string/jumbo v0, "aspectX"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string/jumbo v0, "aspectY"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8b

    .line 310
    :catch_d0
    move-exception v0

    goto :goto_8b

    .line 261
    :cond_d2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 262
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 264
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_10c} :catch_d0

    .line 267
    :try_start_10c
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 268
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 269
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 270
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11e
    .catch Ljava/io/FileNotFoundException; {:try_start_10c .. :try_end_11e} :catch_123
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_11e} :catch_128
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_11e} :catch_d0

    .line 277
    :goto_11e
    :try_start_11e
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a9

    .line 271
    :catch_123
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_11e

    .line 273
    :catch_128
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11e

    .line 288
    :cond_12d
    if-ne p2, v3, :cond_14e

    if-ne p1, v4, :cond_14e

    .line 289
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    const-string/jumbo v1, "image-path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    iget-object v2, v2, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gMediaFile:Ljava/io/File;

    .line 292
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->l()V

    goto/16 :goto_8b

    .line 293
    :cond_14e
    if-ne p2, v3, :cond_8b

    const v0, 0xc0de

    if-ne p1, v0, :cond_8b

    .line 294
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->a(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_8b

    .line 296
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 297
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->a()Ljava/lang/String;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "code->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:scanResult(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1a7

    .line 301
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/control/WebViewSurvey;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_8b

    .line 303
    :cond_1a7
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/WebViewSurvey;->loadUrl(Ljava/lang/String;)V
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_1ac} :catch_d0

    goto/16 :goto_8b
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->m:Z

    if-eqz v0, :cond_22

    .line 137
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    if-eqz v0, :cond_1e

    .line 138
    const-string/jumbo v0, "javascript:clickExitSurvey();"

    .line 139
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_18

    .line 140
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/control/WebViewSurvey;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 150
    :goto_17
    return-void

    .line 142
    :cond_18
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/WebViewSurvey;->loadUrl(Ljava/lang/String;)V

    goto :goto_17

    .line 145
    :cond_1e
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_17

    .line 148
    :cond_22
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_17
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    .prologue
    const/16 v1, 0x17

    const/4 v3, 0x1

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_72

    .line 199
    :goto_a
    return v3

    .line 165
    :pswitch_b
    :try_start_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_33

    .line 166
    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 167
    if-eqz v0, :cond_2f

    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_27

    goto :goto_a

    .line 175
    :catch_27
    move-exception v0

    .line 176
    const-string/jumbo v0, "Can not browse photo!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 170
    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k()V

    goto :goto_a

    .line 173
    :cond_33
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_27

    goto :goto_a

    .line 182
    :pswitch_37
    :try_start_37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_6e

    .line 183
    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 184
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 185
    if-nez v0, :cond_4d

    if-eqz v1, :cond_6a

    .line 186
    :cond_4d
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_61} :catch_62

    goto :goto_a

    .line 193
    :catch_62
    move-exception v0

    .line 194
    const-string/jumbo v0, "Can not open camera!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 188
    :cond_6a
    :try_start_6a
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->j()V

    goto :goto_a

    .line 191
    :cond_6e
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->j()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_71} :catch_62

    goto :goto_a

    .line 162
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_b
        :pswitch_37
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    .line 116
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "#6A75BA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_47

    .line 122
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 124
    const v0, 0x7f040134

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->setContentView(I)V

    .line 125
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->setTheme(I)V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->b:Landroid/os/Handler;

    .line 128
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->c:Lcom/facebook/CallbackManager;

    .line 130
    const v0, 0x7f100571

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Landroid/os/Bundle;)V

    .line 132
    return-void

    .line 118
    :catch_47
    move-exception v0

    goto :goto_17
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 155
    const-string/jumbo v0, "Post photo on profile"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 156
    const-string/jumbo v0, "Choose From Gallery"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 157
    const-string/jumbo v0, "Take Photo"

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 158
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 204
    sparse-switch p1, :sswitch_data_42

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 229
    :goto_7
    return-void

    .line 206
    :sswitch_8
    aget v0, p3, v1

    if-nez v0, :cond_10

    .line 207
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->j()V

    goto :goto_7

    .line 209
    :cond_10
    const-string/jumbo v0, "PERMISSION CAMERA And READ_EXTERNAL_STORAGE Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 213
    :sswitch_1b
    aget v0, p3, v1

    if-nez v0, :cond_23

    .line 214
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k()V

    goto :goto_7

    .line 216
    :cond_23
    const-string/jumbo v0, "PERMISSION READ_EXTERNAL_STORAGE Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 220
    :sswitch_2e
    aget v0, p3, v1

    if-nez v0, :cond_36

    .line 221
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->i()V

    goto :goto_7

    .line 223
    :cond_36
    const-string/jumbo v0, "PERMISSION CAMERA Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 204
    nop

    :sswitch_data_42
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_1b
        0x12c -> :sswitch_2e
    .end sparse-switch
.end method
