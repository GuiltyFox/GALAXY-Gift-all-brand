.class public Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CardsUsedActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/HistoryCardsList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/HistoryCardsList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 783
    iput-object p2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->a:Ljava/util/List;

    .line 784
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bzbs/bean/HistoryCardsList;
    .registers 3

    .prologue
    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/HistoryCardsList;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 790
    :goto_8
    return-object v0

    .line 789
    :catch_9
    move-exception v0

    .line 790
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;
    .registers 6

    .prologue
    .line 800
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 801
    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;Landroid/view/View;)V

    .line 802
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;I)V
    .registers 11

    .prologue
    .line 807
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/HistoryCardsList;

    .line 809
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/bzbs/bean/HistoryCardsList;->MerchantName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bzbs/bean/HistoryCardsList;->branchName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 811
    iget-object v2, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryCardsList;->Amount:D

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v4, 0x7f090373

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 814
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 816
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "hh:mm"

    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryCardsList;->Timestamp:J

    const-wide/16 v6, 0x6270

    sub-long/2addr v4, v6

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

    .line 817
    iget-object v3, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v6, 0x7f090397

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd/MM/yy"

    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, Lcom/bzbs/bean/HistoryCardsList;->Timestamp:J

    const-wide/16 v6, 0x6270

    sub-long/2addr v4, v6

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

    .line 820
    iget-object v2, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v5, 0x7f09038a

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    iget-object v1, v0, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_16c

    iget-object v1, v0, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16c

    .line 823
    iget v1, v0, Lcom/bzbs/bean/HistoryCardsList;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_141

    .line 829
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    const v2, 0x7f020279

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 830
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 850
    :goto_129
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v0, v0, Lcom/bzbs/bean/HistoryCardsList;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 851
    return-void

    .line 831
    :cond_141
    iget v1, v0, Lcom/bzbs/bean/HistoryCardsList;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_155

    .line 837
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    const v2, 0x7f02027a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 838
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_129

    .line 840
    :cond_155
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 841
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_129

    .line 845
    :cond_16c
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 846
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v1, p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_129
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 860
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 861
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 778
    check-cast p1, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->a(Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 778
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter$HistoryViewHolder;

    move-result-object v0

    return-object v0
.end method
