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
    .line 78
    const-class v0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 85
    new-instance v0, Lcom/bzbs/bean/CameraData;

    invoke-direct {v0}, Lcom/bzbs/bean/CameraData;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->f:I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g:I

    .line 90
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->h:I

    .line 91
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->i:I

    .line 92
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->j:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Lcom/samsung/privilege/control/WebViewSurvey;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 441
    const v0, 0x7f100732

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/WebViewSurvey;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    .line 443
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v0}, Lcom/samsung/privilege/control/WebViewSurvey;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 445
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 446
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 447
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 450
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 451
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 454
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 457
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 458
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 461
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 463
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_40

    .line 465
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 469
    :cond_40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_49

    .line 470
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 473
    :cond_49
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$4;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/WebViewSurvey;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 481
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$5;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/WebViewSurvey;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$6;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/WebViewSurvey;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 540
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$7;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/WebViewSurvey;->a(Lcom/samsung/privilege/control/WebViewSurvey$CallbackInitialWebView;)V

    .line 592
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$8;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/WebViewSurvey;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 616
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;

    invoke-direct {v1, p0, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$WebViewJavaScriptInterface;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/Object;)V

    const-string/jumbo v2, "WebViewJavaScriptInterface"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/WebViewSurvey;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    if-eqz p1, :cond_90

    .line 619
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/control/WebViewSurvey;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 625
    :goto_8f
    return-void

    .line 621
    :cond_90
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
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

    .line 623
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/WebViewSurvey;->loadUrl(Ljava/lang/String;)V

    goto :goto_8f
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 415
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Z)Z
    .registers 2

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->h()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .registers 4

    .prologue
    .line 313
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2a

    .line 314
    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 315
    if-eqz v0, :cond_1e

    .line 316
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 326
    :goto_1d
    return-void

    .line 318
    :cond_1e
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->i()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_1d

    .line 323
    :catch_22
    move-exception v0

    .line 324
    const-string/jumbo v0, "Can not open scancode!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Ljava/lang/String;)V

    goto :goto_1d

    .line 321
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
    .line 329
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {v0, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 330
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->c()V

    .line 331
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bzbs/bean/CameraData;->gIsModeTakePhoto:Z

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 338
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bzbs/bean/CameraData;->gIsModeTakePhoto:Z

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string/jumbo v1, "Select Picture"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 347
    return-void
.end method

.method private l()V
    .registers 7

    .prologue
    .line 350
    const v0, 0x7f100734

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 351
    const v1, 0x7f100735

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

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

    .line 354
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

    .line 355
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

    .line 356
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

    .line 357
    const v3, 0x7f100733

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 358
    invoke-static {p0}, Lcom/koushikdutta/ion/Ion;->a(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;

    move-result-object v3

    .line 359
    invoke-interface {v3, v2}, Lcom/koushikdutta/ion/builder/LoadBuilder;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    .line 360
    invoke-interface {v2, v0}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->b(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    new-instance v2, Lcom/samsung/privilege/activity/WebViewSurveyActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;Landroid/widget/TextView;)V

    .line 361
    invoke-interface {v0, v2}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->b(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    const-string/jumbo v1, "token"

    .line 369
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$M;

    const-string/jumbo v1, "questionId"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k:Ljava/lang/String;

    .line 370
    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/ion/builder/Builders$Any$M;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$M;

    const-string/jumbo v2, "temp1"

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    iget-object v1, v1, Lcom/bzbs/bean/CameraData;->gMediaFile:Ljava/io/File;

    .line 371
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

    .line 372
    invoke-interface {v0}, Lcom/koushikdutta/ion/builder/Builders$Any$M;->a()Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V

    .line 373
    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/future/ResponseFuture;->a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 412
    return-void

    .line 371
    :cond_fa
    const-string/jumbo v1, "image/png"

    goto :goto_e3
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->finish()V

    .line 807
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 7

    .prologue
    .line 426
    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 427
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 430
    const-string/jumbo v1, "_data"

    .line 431
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 432
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 434
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result-object v0

    .line 436
    :goto_21
    return-object v0

    .line 435
    :catch_22
    move-exception v0

    .line 436
    const-string/jumbo v0, ""

    goto :goto_21
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x2

    .line 229
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->c:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 232
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

    .line 235
    if-ne p2, v4, :cond_8c

    if-ne p1, v5, :cond_8c

    .line 236
    :try_start_34
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 237
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 238
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    iget-object v1, v1, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 241
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    const-string/jumbo v2, "image-path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string/jumbo v1, "aspectX"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string/jumbo v1, "aspectY"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 309
    :cond_8b
    :goto_8b
    return-void

    .line 252
    :cond_8c
    if-ne p2, v4, :cond_123

    if-ne p1, v3, :cond_123

    .line 253
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->f()Ljava/lang/String;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_c8

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 276
    :goto_9f
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    const-string/jumbo v2, "image-path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v0, "scale"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const-string/jumbo v0, "aspectX"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string/jumbo v0, "aspectY"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8b

    .line 306
    :catch_c6
    move-exception v0

    goto :goto_8b

    .line 257
    :cond_c8
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 258
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 260
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
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_102} :catch_c6

    .line 263
    :try_start_102
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 264
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 265
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 266
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_114
    .catch Ljava/io/FileNotFoundException; {:try_start_102 .. :try_end_114} :catch_119
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_114} :catch_11e
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_114} :catch_c6

    .line 273
    :goto_114
    :try_start_114
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_9f

    .line 267
    :catch_119
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_114

    .line 269
    :catch_11e
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_114

    .line 284
    :cond_123
    if-ne p2, v4, :cond_144

    if-ne p1, v6, :cond_144

    .line 285
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    const-string/jumbo v1, "image-path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->e:Lcom/bzbs/bean/CameraData;

    iget-object v2, v2, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gMediaFile:Ljava/io/File;

    .line 288
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->l()V

    goto/16 :goto_8b

    .line 289
    :cond_144
    if-ne p2, v4, :cond_8b

    const v0, 0xc0de

    if-ne p1, v0, :cond_8b

    .line 290
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->a(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_8b

    .line 292
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 293
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->a()Ljava/lang/String;

    move-result-object v0

    .line 294
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

    .line 295
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

    .line 296
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_19d

    .line 297
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/control/WebViewSurvey;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_8b

    .line 299
    :cond_19d
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/WebViewSurvey;->loadUrl(Ljava/lang/String;)V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_1a2} :catch_c6

    goto/16 :goto_8b
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->m:Z

    if-eqz v0, :cond_22

    .line 133
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    if-eqz v0, :cond_1e

    .line 134
    const-string/jumbo v0, "javascript:clickExitSurvey();"

    .line 135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_18

    .line 136
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/control/WebViewSurvey;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 146
    :goto_17
    return-void

    .line 138
    :cond_18
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->d:Lcom/samsung/privilege/control/WebViewSurvey;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/WebViewSurvey;->loadUrl(Ljava/lang/String;)V

    goto :goto_17

    .line 141
    :cond_1e
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_17

    .line 144
    :cond_22
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_17
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    .prologue
    const/16 v1, 0x17

    const/4 v3, 0x1

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_72

    .line 195
    :goto_a
    return v3

    .line 161
    :pswitch_b
    :try_start_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_33

    .line 162
    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 163
    if-eqz v0, :cond_2f

    .line 164
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

    .line 171
    :catch_27
    move-exception v0

    .line 172
    const-string/jumbo v0, "Can not browse photo!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 166
    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k()V

    goto :goto_a

    .line 169
    :cond_33
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_27

    goto :goto_a

    .line 178
    :pswitch_37
    :try_start_37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_6e

    .line 179
    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 180
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 181
    if-nez v0, :cond_4d

    if-eqz v1, :cond_6a

    .line 182
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

    .line 189
    :catch_62
    move-exception v0

    .line 190
    const-string/jumbo v0, "Can not open camera!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 184
    :cond_6a
    :try_start_6a
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->j()V

    goto :goto_a

    .line 187
    :cond_6e
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->j()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_71} :catch_62

    goto :goto_a

    .line 158
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_b
        :pswitch_37
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    .line 112
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "#6A75BA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_47

    .line 118
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 120
    const v0, 0x7f04018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->setContentView(I)V

    .line 121
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->setTheme(I)V

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->b:Landroid/os/Handler;

    .line 124
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->c:Lcom/facebook/CallbackManager;

    .line 126
    const v0, 0x7f100733

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Landroid/os/Bundle;)V

    .line 128
    return-void

    .line 114
    :catch_47
    move-exception v0

    goto :goto_17
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 151
    const-string/jumbo v0, "Post photo on profile"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 152
    const-string/jumbo v0, "Choose From Gallery"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 153
    const-string/jumbo v0, "Take Photo"

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 154
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 200
    sparse-switch p1, :sswitch_data_42

    .line 223
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 225
    :goto_7
    return-void

    .line 202
    :sswitch_8
    aget v0, p3, v1

    if-nez v0, :cond_10

    .line 203
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->j()V

    goto :goto_7

    .line 205
    :cond_10
    const-string/jumbo v0, "PERMISSION CAMERA And READ_EXTERNAL_STORAGE Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 209
    :sswitch_1b
    aget v0, p3, v1

    if-nez v0, :cond_23

    .line 210
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->k()V

    goto :goto_7

    .line 212
    :cond_23
    const-string/jumbo v0, "PERMISSION READ_EXTERNAL_STORAGE Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 216
    :sswitch_2e
    aget v0, p3, v1

    if-nez v0, :cond_36

    .line 217
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->i()V

    goto :goto_7

    .line 219
    :cond_36
    const-string/jumbo v0, "PERMISSION CAMERA Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 200
    nop

    :sswitch_data_42
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_1b
        0x12c -> :sswitch_2e
    .end sparse-switch
.end method
