.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "StampDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity;->m()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 558
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 588
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getStampProfile|onFailure)response_code="

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

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 596
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 597
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 561
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getStampProfile|onComplete)response_code="

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

    .line 563
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 566
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 580
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0, p4, v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Ljava/lang/String;Z)V

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$10;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 584
    return-void
.end method
