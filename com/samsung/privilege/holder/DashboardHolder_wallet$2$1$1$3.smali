.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 356
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iput-object p2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/pay_status?code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkCodeStatus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->a:Landroid/app/Activity;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v3, v3, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v3, v3, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v3, v3, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->a:Landroid/app/Activity;

    const v4, 0x7f090282

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 362
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->a:Landroid/app/Activity;

    .line 363
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 364
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 365
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->a:Landroid/app/Activity;

    .line 366
    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 367
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;-><init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;)V

    .line 368
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->d:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Check Status"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method
