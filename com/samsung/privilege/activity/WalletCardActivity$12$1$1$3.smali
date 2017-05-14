.class Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/pay_status?code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

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

    .line 1163
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v5, 0x7f090283

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1164
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    .line 1165
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1166
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1167
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    .line 1168
    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1169
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;)V

    .line 1170
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1243
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Check Status"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1247
    return-void
.end method
