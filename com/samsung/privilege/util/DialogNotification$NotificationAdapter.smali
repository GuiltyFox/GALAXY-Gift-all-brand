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
    .line 288
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a:Ljava/util/List;

    .line 290
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bzbs/bean/MessageGCM;
    .registers 3

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 296
    :goto_8
    return-object v0

    .line 295
    :catch_9
    move-exception v0

    .line 296
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;
    .registers 6

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;-><init>(Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;Landroid/view/View;)V

    .line 308
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;I)V
    .registers 6

    .prologue
    .line 313
    invoke-static {p2}, Lcom/samsung/privilege/util/DialogNotification;->c(I)I

    .line 314
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;

    .line 316
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

    .line 317
    iget-object v2, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    iget-object v2, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 320
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
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

    .line 325
    :cond_54
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, v0, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const v2, 0x7f0202cc

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 334
    :goto_78
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->O(Landroid/content/Context;)I

    move-result v1

    if-ge p2, v1, :cond_bc

    .line 335
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->b:Landroid/widget/LinearLayout;

    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 340
    :goto_8a
    const-string/jumbo v1, "View"

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/DialogNotification;->a(Ljava/lang/String;Lcom/bzbs/bean/MessageGCM;)V

    .line 341
    return-void

    .line 326
    :cond_91
    iget-object v1, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 327
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    const v2, 0x7f02029f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_78

    .line 330
    :cond_ac
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    const v2, 0x7f0202cd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_78

    .line 337
    :cond_bc
    iget-object v1, p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->b:Landroid/widget/LinearLayout;

    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_8a
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 350
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 351
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 284
    check-cast p1, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a(Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;

    move-result-object v0

    return-object v0
.end method
