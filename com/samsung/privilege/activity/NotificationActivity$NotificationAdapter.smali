.class public Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;",
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

.field final synthetic b:Lcom/samsung/privilege/activity/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/NotificationActivity;Ljava/util/List;)V
    .registers 3
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
    .line 253
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->b:Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 254
    iput-object p2, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->a:Ljava/util/List;

    .line 255
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;
    .registers 6

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 264
    new-instance v1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;-><init>(Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;Landroid/view/View;)V

    .line 265
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;I)V
    .registers 6

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->b:Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-static {v0, p2}, Lcom/samsung/privilege/activity/NotificationActivity;->a(Lcom/samsung/privilege/activity/NotificationActivity;I)I

    .line 271
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;

    .line 273
    iget-object v1, p1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->b:Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/NotificationActivity;->d(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 274
    iget-object v1, p1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->b:Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/NotificationActivity;->d(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    iget-object v1, p1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v2, "campaign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 280
    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->b:Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 286
    :goto_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->b:Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/NotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v0

    if-ge p2, v0, :cond_7c

    .line 287
    iget-object v0, p1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 291
    :goto_6b
    return-void

    .line 282
    :cond_6c
    iget-object v0, p1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v0, p1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_57

    .line 289
    :cond_7c
    iget-object v0, p1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_6b
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 301
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 249
    check-cast p1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->a(Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;

    move-result-object v0

    return-object v0
.end method
