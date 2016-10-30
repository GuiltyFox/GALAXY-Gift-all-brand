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
    .line 1331
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 1332
    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    .line 1333
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;
    .registers 6

    .prologue
    .line 1349
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1350
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;Landroid/view/View;)V

    .line 1351
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;I)V
    .registers 11

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/HistoryWallet;

    .line 1358
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/HistoryWallet;->merchantName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 1361
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH:mm"

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryWallet;->timestamp:J

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1362
    iget-object v3, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v6, 0x7f090397

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMM yyyy"

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 1364
    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v5, 0x7f0901a8

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

    .line 1366
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1367
    iget-object v1, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_1a6

    iget-object v1, v0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a6

    .line 1368
    iget v1, v0, Lcom/bzbs/bean/HistoryWallet;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_188

    .line 1369
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const v2, 0x7f020279

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1370
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1385
    :goto_db
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,##0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1386
    iget-object v2, v0, Lcom/bzbs/bean/HistoryWallet;->type:Ljava/lang/String;

    const-string/jumbo v3, "topup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 1387
    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bzbs/bean/HistoryWallet;->issuerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1388
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

    const v4, 0x7f090373

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1394
    :goto_12f
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->h:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;Lcom/bzbs/bean/HistoryWallet;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1414
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

    .line 1416
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->i(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

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

    if-ltz v1, :cond_1e4

    .line 1417
    iget-object v0, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1443
    :goto_187
    return-void

    .line 1371
    :cond_188
    iget v1, v0, Lcom/bzbs/bean/HistoryWallet;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19d

    .line 1372
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const v2, 0x7f02027a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1373
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_db

    .line 1375
    :cond_19d
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_db

    .line 1380
    :cond_1a6
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_db

    .line 1391
    :cond_1af
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

    const v4, 0x7f090373

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12f

    .line 1419
    :cond_1e4
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->i(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

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

    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1420
    iget-object v0, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1422
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v1, 0x7f050050

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1423
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$2;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1439
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 1440
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1441
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_187
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
    .line 1344
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1345
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 1452
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1453
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 1327
    check-cast p1, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a(Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 1327
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter$HistoryViewHolder;

    move-result-object v0

    return-object v0
.end method
