.class public Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/HistoryWallet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/util/List;)V
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
    .line 2484
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2485
    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    .line 2486
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;
    .registers 6

    .prologue
    .line 2502
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2503
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;Landroid/view/View;)V

    .line 2504
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;I)V
    .registers 11

    .prologue
    .line 2509
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/HistoryWallet;

    .line 2511
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/HistoryWallet;->merchantName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2513
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm"

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryWallet;->timestamp:J

    const-wide/16 v6, 0x6270

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2514
    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v5, 0x7f0901e0

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2515
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy"

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryWallet;->timestamp:J

    const-wide/16 v6, 0x6270

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2516
    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v5, 0x7f0900ad

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2518
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2519
    iget-object v1, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_195

    iget-object v1, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_195

    .line 2520
    iget v1, v0, Lcom/bzbs/bean/HistoryWallet;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_177

    .line 2521
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const v2, 0x7f020166

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2522
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2537
    :goto_ca
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,##0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2538
    iget-object v2, v0, Lcom/bzbs/bean/HistoryWallet;->type:Ljava/lang/String;

    const-string/jumbo v3, "topup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 2539
    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bzbs/bean/HistoryWallet;->issuerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2540
    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryWallet;->amount:D

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v4, 0x7f0901b1

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2541
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2546
    :goto_11e
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->h:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;Lcom/bzbs/bean/HistoryWallet;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2566
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, v0, Lcom/bzbs/bean/HistoryWallet;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 2568
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->o(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1d3

    .line 2569
    iget-object v0, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2595
    :goto_176
    return-void

    .line 2523
    :cond_177
    iget v1, v0, Lcom/bzbs/bean/HistoryWallet;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18c

    .line 2524
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const v2, 0x7f020167

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2525
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_ca

    .line 2527
    :cond_18c
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_ca

    .line 2532
    :cond_195
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_ca

    .line 2543
    :cond_19e
    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryWallet;->amount:D

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v4, 0x7f0901b1

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11e

    .line 2571
    :cond_1d3
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->o(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2572
    iget-object v0, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2574
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v1, 0x7f05003d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2575
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$2;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2591
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 2592
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2593
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_176
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
    .line 2497
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2498
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 2604
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 2605
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 2480
    check-cast p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 2480
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;

    move-result-object v0

    return-object v0
.end method
