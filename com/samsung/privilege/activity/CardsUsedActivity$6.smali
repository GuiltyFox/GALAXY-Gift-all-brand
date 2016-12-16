.class Lcom/samsung/privilege/activity/CardsUsedActivity$6;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "CardsUsedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 2

    .prologue
    .line 560
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 632
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 635
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 636
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 563
    sget-object v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->a:Ljava/lang/String;

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

    .line 564
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 567
    :try_start_2b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 568
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 572
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->k(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->k(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->h(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->n(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->l(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 579
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->m(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 580
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->n(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "PAY SUCCESS"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    new-instance v1, Lcom/bzbs/bean/HistoryCardsList;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/HistoryCardsList;-><init>(Lorg/json/JSONObject;)V

    .line 582
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->i(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v1, 0x7f100518

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 586
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v2, 0x7f100519

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 588
    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/bean/HistoryCardsList;

    iget-object v2, v2, Lcom/bzbs/bean/HistoryCardsList;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->o(Lcom/samsung/privilege/activity/CardsUsedActivity;)Ljava/text/DecimalFormat;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/HistoryCardsList;

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryCardsList;->Amount:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v3, 0x7f090389

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v1, 0x7f10014c

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 593
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$6$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$6$1;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity$6;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Check Status Paid"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :goto_17d
    return-void

    .line 614
    :cond_17e
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->h(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->n(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->n(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Click Check Status Not Paid"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1cd
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_1cd} :catch_1ce

    goto :goto_17d

    .line 625
    :catch_1ce
    move-exception v0

    .line 626
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17d
.end method
