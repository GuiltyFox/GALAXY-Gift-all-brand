.class public Lcom/samsung/privilege/activity/AddMoneyActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AddMoneyActivity.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;

.field private f:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/AddMoneyActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->b:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->c:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/AddMoneyActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/AddMoneyActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/privilege/activity/AddMoneyActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "issuer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->b:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "issuer_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->c:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cardId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->d:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet Select Payment Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 125
    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_62

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_61
    return-void

    .line 130
    :cond_62
    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61
.end method

.method private h()V
    .registers 6

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/config/samsunggift_topup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/samsung/privilege/activity/AddMoneyActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkWalletCardConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v1, ""

    const v2, 0x7f090281

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->f:Landroid/app/ProgressDialog;

    .line 138
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 139
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 140
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 143
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/AddMoneyActivity$3;-><init>(Lcom/samsung/privilege/activity/AddMoneyActivity;)V

    .line 144
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 251
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->finish()V

    .line 377
    return-void
.end method

.method public doCancel(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->finish()V

    .line 373
    return-void
.end method

.method public doConfirm(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/topup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    sget-object v0, Lcom/samsung/privilege/activity/AddMoneyActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 265
    const-string/jumbo v0, "cardId"

    iget-object v3, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 266
    sget-object v0, Lcom/samsung/privilege/activity/AddMoneyActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cardId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 270
    const v0, 0x7f09039e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 369
    :goto_80
    return-void

    .line 274
    :cond_81
    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 275
    sget-object v3, Lcom/samsung/privilege/activity/AddMoneyActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v0, ""

    const v3, 0x7f090281

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->f:Landroid/app/ProgressDialog;

    .line 281
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 282
    invoke-virtual {v0, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 283
    invoke-virtual {v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 287
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/AddMoneyActivity$4;-><init>(Lcom/samsung/privilege/activity/AddMoneyActivity;)V

    .line 288
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto :goto_80
.end method

.method public doScanBarcode(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 254
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {v0, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 255
    const-class v1, Lcom/samsung/privilege/activity/CaptureActivityPortrait;

    invoke-virtual {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->a(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 256
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->c()V

    .line 257
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->a(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_29

    .line 100
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 101
    const-string/jumbo v0, "Cancelled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->finish()V

    .line 116
    :goto_1d
    return-void

    .line 105
    :cond_1e
    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->e:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/privilege/activity/AddMoneyActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity$2;-><init>(Lcom/samsung/privilege/activity/AddMoneyActivity;Lcom/google/zxing/integration/android/IntentResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d

    .line 114
    :cond_29
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 62
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->setContentView(I)V

    .line 63
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->setTheme(I)V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->e:Landroid/os/Handler;

    .line 67
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 69
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->g()V

    .line 71
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 76
    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/AddMoneyActivity$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->h()V

    .line 92
    return-void
.end method
