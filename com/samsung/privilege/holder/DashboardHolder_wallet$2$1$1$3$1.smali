.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DashboardHolder_wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;)V
    .registers 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 408
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 411
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->a:Landroid/app/Activity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 412
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 369
    invoke-static {}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(checkCodeStatus|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 373
    :try_start_2d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 377
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->M:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->N:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->J:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->G:Landroid/widget/TextView;

    const-string/jumbo v1, "PAY SUCCESS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->c:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1$1;-><init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->d:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Check Status Paid"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_be
    return-void

    .line 392
    :cond_bf
    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->M:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 393
    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->N:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 394
    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->J:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$3;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v2, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->d:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Click Check Status Not Paid"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_134} :catch_135

    goto :goto_be

    .line 401
    :catch_135
    move-exception v0

    .line 402
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_be
.end method
