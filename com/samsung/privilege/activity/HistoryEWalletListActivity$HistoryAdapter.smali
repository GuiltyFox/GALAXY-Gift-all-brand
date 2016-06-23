.class public Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HistoryEWalletListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field histories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/HistoryWallet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
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
    .line 458
    .local p2, "persons":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/HistoryWallet;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 459
    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->histories:Ljava/util/List;

    .line 460
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
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
    .line 471
    .local p1, "new_items":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/bean/HistoryWallet;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 472
    return-void
.end method

.method public getItem(I)Lcom/bzbs/bean/HistoryWallet;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/HistoryWallet;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 466
    :goto_8
    return-object v1

    .line 465
    :catch_9
    move-exception v0

    .line 466
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 513
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 454
    check-cast p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->onBindViewHolder(Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;I)V
    .registers 15
    .param p1, "holder"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 483
    iget-object v5, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # setter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->pastVisiblesItems:I
    invoke-static {v5, p2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$602(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)I

    .line 484
    iget-object v5, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->histories:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/bean/HistoryWallet;

    .line 486
    .local v2, "history":Lcom/bzbs/bean/HistoryWallet;
    iget-object v5, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->textAgency:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mFont:Landroid/graphics/Typeface;
    invoke-static {v6}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$1400(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 487
    iget-object v5, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->textName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mFont:Landroid/graphics/Typeface;
    invoke-static {v6}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$1400(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 488
    iget-object v5, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->textPoint:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mFont:Landroid/graphics/Typeface;
    invoke-static {v6}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$1400(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 489
    iget-object v5, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->textRedeemDate:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mFont:Landroid/graphics/Typeface;
    invoke-static {v6}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->access$1400(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 491
    iget-object v5, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->textAgency:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/bzbs/bean/HistoryWallet;->merchantName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v5, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->textName:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/bzbs/bean/HistoryWallet;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v5, "###,###,###.##"

    invoke-direct {v1, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "formatter":Ljava/text/NumberFormat;
    iget-object v5, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->textPoint:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v2, Lcom/bzbs/bean/HistoryWallet;->amount:D

    invoke-virtual {v1, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " THB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 498
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 499
    .local v4, "tz":Ljava/util/TimeZone;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "dd MMM yyyy hh:mm"

    iget-object v7, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v2, Lcom/bzbs/bean/HistoryWallet;->timestamp:J

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v10, v7

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "strRedeemDate":Ljava/lang/String;
    iget-object v5, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->textRedeemDate:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    const v8, 0x7f0901a4

    invoke-virtual {v7, v8}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v5, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, v2, Lcom/bzbs/bean/HistoryWallet;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;->imageCampaign:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 503
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 476
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040031

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 477
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;Landroid/view/View;)V

    .line 478
    .local v0, "pvh":Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter$HistoryViewHolder;
    return-object v0
.end method
