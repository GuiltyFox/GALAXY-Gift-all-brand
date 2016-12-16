.class public Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardHolder_wallet_card.java"


# static fields
.field private static g:Ljava/lang/String;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/support/v7/widget/CardView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    const v0, 0x7f1001f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->a:Landroid/view/View;

    .line 39
    const v0, 0x7f100224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->b:Landroid/view/View;

    .line 41
    const v0, 0x7f10010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->c:Landroid/support/v7/widget/CardView;

    .line 42
    const v0, 0x7f100285

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->d:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f100523

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->e:Landroid/widget/LinearLayout;

    .line 44
    const v0, 0x7f100524

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->f:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 48
    check-cast p3, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;

    .line 50
    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    if-eqz v0, :cond_ab

    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 51
    iget-object v0, p3, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->f:Landroid/widget/TextView;

    iget-object v1, p4, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p3, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :goto_1e
    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->line2_color:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->line2_color:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 58
    iget-object v0, p3, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->f:Landroid/widget/TextView;

    iget-object v1, p4, Lcom/bzbs/bean/DashboardItem;->line2_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    :cond_38
    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    if-eqz v0, :cond_b4

    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 62
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p4, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 67
    :goto_5c
    iget-object v0, p3, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->c:Landroid/support/v7/widget/CardView;

    new-instance v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card$1;

    invoke-direct {v1, p0, p4, p5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card$1;-><init>(Landroid/app/Activity;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v0, :cond_aa

    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p4, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    :cond_aa
    return-void

    .line 54
    :cond_ab
    iget-object v0, p3, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1e

    .line 64
    :cond_b4
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p4, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_5c
.end method
