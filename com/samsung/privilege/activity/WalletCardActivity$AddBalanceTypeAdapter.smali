.class public Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/AddBalanceType;",
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
            "Lcom/bzbs/bean/AddBalanceType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 1580
    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->a:Ljava/util/List;

    .line 1581
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;
    .registers 6

    .prologue
    .line 1597
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1598
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;Landroid/view/View;)V

    .line 1599
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;I)V
    .registers 6

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/AddBalanceType;

    .line 1606
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/AddBalanceType;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/bzbs/bean/AddBalanceType;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1609
    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1611
    iget-object v1, p1, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;Lcom/bzbs/bean/AddBalanceType;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1630
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 1639
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1640
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 1575
    check-cast p1, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->a(Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 1575
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/WalletCardActivity$AddBalanceTypeAdapter$AddBalanceTypeViewHolder;

    move-result-object v0

    return-object v0
.end method
