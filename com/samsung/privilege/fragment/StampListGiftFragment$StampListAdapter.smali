.class public Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "StampListGiftFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/StampAgency;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/samsung/privilege/fragment/StampListGiftFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/StampListGiftFragment;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/StampAgency;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    iput-object p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 410
    iput-object p2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->a:Ljava/util/List;

    .line 411
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;
    .registers 6

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 428
    new-instance v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;-><init>(Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;Landroid/view/View;)V

    .line 429
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;I)V
    .registers 8

    .prologue
    .line 434
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-static {v0, p2}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->d(Lcom/samsung/privilege/fragment/StampListGiftFragment;I)I

    .line 435
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/StampAgency;

    .line 437
    iget-object v1, p1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/StampAgency;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget v1, v0, Lcom/bzbs/bean/StampAgency;->currentQuantity:I

    if-lez v1, :cond_ca

    .line 441
    iget v1, v0, Lcom/bzbs/bean/StampAgency;->currentQuantity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a1

    .line 442
    iget-object v1, p1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/bzbs/bean/StampAgency;->currentQuantity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    const v4, 0x7f090185

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :goto_4c
    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, v0, Lcom/bzbs/bean/StampAgency;->stampImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 452
    iget-object v1, p1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->b:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$1;-><init>(Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;Lcom/bzbs/bean/StampAgency;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v1, p1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$2;-><init>(Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;Lcom/bzbs/bean/StampAgency;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    const-string/jumbo v1, "Stamp List"

    const-string/jumbo v2, "View Stamp List"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/bzbs/bean/StampAgency;->agencyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void

    .line 444
    :cond_a1
    iget-object v1, p1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/bzbs/bean/StampAgency;->currentQuantity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->b:Lcom/samsung/privilege/fragment/StampListGiftFragment;

    const v4, 0x7f090186

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c

    .line 447
    :cond_ca
    iget-object v1, p1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;->f:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/StampAgency;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 486
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 405
    check-cast p1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->a(Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter$StampViewHolder;

    move-result-object v0

    return-object v0
.end method
