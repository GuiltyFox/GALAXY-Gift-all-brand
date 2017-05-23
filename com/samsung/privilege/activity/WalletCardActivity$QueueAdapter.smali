.class public Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Place;",
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
            "Lcom/bzbs/bean/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3201
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 3202
    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a:Ljava/util/List;

    .line 3203
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bzbs/bean/Place;
    .registers 3

    .prologue
    .line 3207
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Place;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 3209
    :goto_8
    return-object v0

    .line 3208
    :catch_9
    move-exception v0

    .line 3209
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;
    .registers 6

    .prologue
    .line 3219
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3220
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;Landroid/view/View;)V

    .line 3221
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;I)V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 3226
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Place;

    .line 3228
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->t(Lcom/samsung/privilege/activity/WalletCardActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13c

    .line 3229
    if-eqz p2, :cond_1d

    if-eq p2, v3, :cond_1d

    const/4 v1, 0x2

    if-ne p2, v1, :cond_130

    .line 3230
    :cond_1d
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3231
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3247
    :goto_27
    :try_start_27
    iget-object v1, v0, Lcom/bzbs/bean/Place;->mQueueItem:Lcom/bzbs/bean/QueueItem;

    if-eqz v1, :cond_168

    .line 3248
    iget-object v1, v0, Lcom/bzbs/bean/Place;->mQueueItem:Lcom/bzbs/bean/QueueItem;

    iget-boolean v1, v1, Lcom/bzbs/bean/QueueItem;->Cancelled:Z

    if-nez v1, :cond_158

    .line 3249
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/bzbs/bean/Place;->mQueueItem:Lcom/bzbs/bean/QueueItem;

    iget-object v3, v3, Lcom/bzbs/bean/QueueItem;->Prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bzbs/bean/Place;->mQueueItem:Lcom/bzbs/bean/QueueItem;

    iget-object v3, v3, Lcom/bzbs/bean/QueueItem;->Queue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3250
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->f:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_55} :catch_160

    .line 3261
    :goto_55
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->j:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Place;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3262
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->k:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Place;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3264
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###.#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3265
    iget v2, v0, Lcom/bzbs/bean/Place;->distance:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 3266
    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " KM."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3268
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const-string/jumbo v2, "https://stgstoragebuzzebees.blob.core.windows.net/dashboard/393217ea-bd02-44f7-aa21-56d9cf35ff39"

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 3270
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->d:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;Lcom/bzbs/bean/Place;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3287
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3288
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v3, v4

    .line 3289
    :goto_bc
    iget-object v1, v0, Lcom/bzbs/bean/Place;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_170

    .line 3290
    iget-object v1, v0, Lcom/bzbs/bean/Place;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/Place_Service;

    .line 3292
    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v2, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 3293
    const v5, 0x7f0400e4

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 3294
    const v2, 0x7f1004b6

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "truecoffeeservices/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v1, v1, Lcom/bzbs/bean/Place_Service;->id:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "_white"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3296
    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 3297
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3299
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3289
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_bc

    .line 3233
    :cond_130
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3234
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_27

    .line 3237
    :cond_13c
    if-eqz p2, :cond_140

    if-ne p2, v3, :cond_14c

    .line 3238
    :cond_140
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3239
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_27

    .line 3241
    :cond_14c
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3242
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->b:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_27

    .line 3252
    :cond_158
    :try_start_158
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->f:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15e} :catch_160

    goto/16 :goto_55

    .line 3257
    :catch_160
    move-exception v1

    .line 3258
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_55

    .line 3255
    :cond_168
    :try_start_168
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;->f:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16e} :catch_160

    goto/16 :goto_55

    .line 3302
    :cond_170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "View Queue"

    iget-object v0, v0, Lcom/bzbs/bean/Place;->name:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 3303
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3215
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 3312
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 3313
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 3197
    check-cast p1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a(Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 3197
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter$QueueViewHolder;

    move-result-object v0

    return-object v0
.end method
