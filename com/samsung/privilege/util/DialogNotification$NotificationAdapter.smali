.class public Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DialogNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/MessageGCM;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/MessageGCM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a:Ljava/util/List;

    .line 295
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bzbs/bean/MessageGCM;
    .registers 3

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 301
    :goto_8
    return-object v0

    .line 300
    :catch_9
    move-exception v0

    .line 301
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;
    .registers 6

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 312
    new-instance v1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;-><init>(Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;Landroid/view/View;)V

    .line 313
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;I)V
    .registers 6

    .prologue
    .line 318
    invoke-static {p2}, Lcom/samsung/privilege/util/DialogNotification;->c(I)I

    .line 319
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;

    .line 321
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->i()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 322
    iget-object v2, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 323
    iget-object v2, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 325
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "campaign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "ads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 330
    :cond_54
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, v0, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const v2, 0x7f0202d8

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 339
    :goto_78
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v1

    if-ge p2, v1, :cond_bc

    .line 340
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->b:Landroid/widget/LinearLayout;

    const v2, 0x7f020078

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 345
    :goto_8a
    const-string/jumbo v1, "View"

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/DialogNotification;->a(Ljava/lang/String;Lcom/bzbs/bean/MessageGCM;)V

    .line 346
    return-void

    .line 331
    :cond_91
    iget-object v1, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 332
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    const v2, 0x7f0202ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_78

    .line 335
    :cond_ac
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    const v2, 0x7f0202d9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_78

    .line 342
    :cond_bc
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->b:Landroid/widget/LinearLayout;

    const v2, 0x7f020077

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_8a
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 356
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 289
    check-cast p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a(Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;

    move-result-object v0

    return-object v0
.end method
