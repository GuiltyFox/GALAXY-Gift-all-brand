.class Lcom/samsung/privilege/activity/HistoryActivity$4$7;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity$4;->a(Landroid/view/View;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/Purchasing;

.field final synthetic b:Lcom/samsung/privilege/activity/HistoryActivity$4;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$4;Lcom/bzbs/bean/Purchasing;)V
    .registers 3

    .prologue
    .line 362
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->a:Lcom/bzbs/bean/Purchasing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    .prologue
    const/4 v7, 0x1

    .line 364
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/redeem/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->a:Lcom/bzbs/bean/Purchasing;

    iget-object v1, v1, Lcom/bzbs/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/use"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Use URL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 372
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v2, v2, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v3, v3, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v5, v5, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v6, 0x7f090281

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v7, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 373
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v3, v3, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    .line 374
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 375
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 376
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$7;->b:Lcom/samsung/privilege/activity/HistoryActivity$4;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    .line 378
    invoke-virtual {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 379
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/HistoryActivity$4$7$1;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4$7;)V

    .line 380
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 443
    return-void
.end method
