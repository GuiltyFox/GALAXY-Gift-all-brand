.class public Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AddMoneyCredit2Activity.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Landroid/app/ProgressDialog;

.field private j:Lcom/bzbs/bean/Campaign;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->b:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->c:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->d:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->e:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->f:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->g:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->j:Lcom/bzbs/bean/Campaign;

    .line 258
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;Lcom/bzbs/bean/Campaign;)Lcom/bzbs/bean/Campaign;
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->j:Lcom/bzbs/bean/Campaign;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->j()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->i()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Lcom/bzbs/bean/Campaign;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->j:Lcom/bzbs/bean/Campaign;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 7

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "issuer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->b:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cardId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->c:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->d:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->e:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "icon"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->f:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "list_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->g:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View Topup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet Topup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 93
    const v0, 0x7f1000be

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 100
    return-void
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->k:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?device_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&byConfig=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v1, ""

    const v2, 0x7f0900e6

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->i:Landroid/app/ProgressDialog;

    .line 136
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 137
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->V:Z

    .line 138
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 141
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 256
    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .registers 4

    .prologue
    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    const-string/jumbo v0, "2"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    const-string/jumbo v0, "3"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const-string/jumbo v0, "4"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const-string/jumbo v0, "5"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const-string/jumbo v0, "6"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const-string/jumbo v0, "7"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    const-string/jumbo v0, "8"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const-string/jumbo v0, "9"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    const-string/jumbo v0, "10"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/wheel/WheelView;

    .line 273
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/control/wheel/WheelView;->setOffset(I)V

    .line 274
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Ljava/util/List;)V

    .line 275
    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$2;-><init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;)V

    .line 287
    return-void
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .registers 7

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->j:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_2b

    .line 291
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->j:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 293
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_2b
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->finish()V

    .line 358
    return-void
.end method

.method public doCancel(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->finish()V

    .line 354
    return-void
.end method

.method public doConfirm(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 298
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 300
    const v0, 0x7f0400d8

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 302
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 304
    const v1, 0x7f100493

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 305
    const v3, 0x7f0901df

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    const-string/jumbo v4, "@Total@"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const v0, 0x7f100494

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 310
    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$3;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$3;-><init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v0, 0x7f1003a6

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 339
    new-instance v1, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$4;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$4;-><init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 346
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 347
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 349
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 350
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 65
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->setContentView(I)V

    .line 66
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->setTheme(I)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->h:Landroid/os/Handler;

    .line 71
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->g()V

    .line 72
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->h()V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 75
    return-void
.end method
