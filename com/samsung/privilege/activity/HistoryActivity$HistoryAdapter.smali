.class public Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Purchasing;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/samsung/privilege/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Purchasing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 843
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 844
    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->a:Ljava/util/List;

    .line 845
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bzbs/bean/Purchasing;
    .registers 3

    .prologue
    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Purchasing;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 851
    :goto_8
    return-object v0

    .line 850
    :catch_9
    move-exception v0

    .line 851
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;
    .registers 6

    .prologue
    .line 861
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 862
    new-instance v1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;Landroid/view/View;)V

    .line 863
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;I)V
    .registers 11

    .prologue
    .line 868
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0, p2}, Lcom/samsung/privilege/activity/HistoryActivity;->d(Lcom/samsung/privilege/activity/HistoryActivity;I)I

    .line 869
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Purchasing;

    .line 871
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Purchasing;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Purchasing;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-wide v2, v0, Lcom/bzbs/bean/Purchasing;->PointPerUnit:J

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_de

    .line 874
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/bzbs/bean/Purchasing;->PointPerUnit:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    const v4, 0x7f090341

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    :goto_4b
    iget-object v1, v0, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 880
    iget-boolean v1, v0, Lcom/bzbs/bean/Purchasing;->IsUsed:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_108

    .line 881
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    const v2, 0x7f020380

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 885
    :goto_63
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    :goto_69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 891
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 893
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd/MM/yy"

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, Lcom/bzbs/bean/Purchasing;->RedeemDate:J

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

    .line 894
    iget-object v2, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    const v5, 0x7f0901a8

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

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

    .line 896
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v0, v0, Lcom/bzbs/bean/Purchasing;->FullImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v1, 0x7f0202d2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 897
    return-void

    .line 876
    :cond_de
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/bzbs/bean/Purchasing;->PointPerUnit:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->b:Lcom/samsung/privilege/activity/HistoryActivity;

    const v4, 0x7f09033c

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4b

    .line 883
    :cond_108
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    const v2, 0x7f02030d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_63

    .line 887
    :cond_112
    iget-object v1, p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_69
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Purchasing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 856
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 857
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 906
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 907
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 839
    check-cast p1, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->a(Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 839
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter$HistoryViewHolder;

    move-result-object v0

    return-object v0
.end method
