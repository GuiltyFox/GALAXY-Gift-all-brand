.class public Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HistoryEWalletListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/HistoryWallet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/HistoryWallet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 461
    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->a:Ljava/util/List;

    .line 462
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bzbs/bean/HistoryWallet;
    .registers 3

    .prologue
    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/HistoryWallet;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 468
    :goto_8
    return-object v0

    .line 467
    :catch_9
    move-exception v0

    .line 468
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;
    .registers 6

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 479
    new-instance v1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;Landroid/view/View;)V

    .line 480
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;I)V
    .registers 11

    .prologue
    .line 485
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v0, p2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->d(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)I

    .line 486
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/HistoryWallet;

    .line 488
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->l(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 489
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->l(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 490
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->l(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 491
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->l(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 493
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/HistoryWallet;->merchantName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/HistoryWallet;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 497
    iget-object v2, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryWallet;->amount:D

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " THB"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 501
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMM yyyy hh:mm"

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryWallet;->timestamp:J

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 502
    iget-object v2, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    const v5, 0x7f0900a1

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v0, v0, Lcom/bzbs/bean/HistoryWallet;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 505
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/HistoryWallet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 474
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 514
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 515
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 456
    check-cast p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->a(Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;

    move-result-object v0

    return-object v0
.end method
