.class public Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WalletCardActivity.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/support/v7/widget/CardView;

.field d:Landroid/widget/LinearLayout;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field final synthetic j:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 3295
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->j:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    .line 3296
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3298
    const v0, 0x7f100223

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->a:Landroid/view/View;

    .line 3299
    const v0, 0x7f100259

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->b:Landroid/view/View;

    .line 3301
    const v0, 0x7f100116

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->c:Landroid/support/v7/widget/CardView;

    .line 3302
    const v0, 0x7f1000d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->d:Landroid/widget/LinearLayout;

    .line 3303
    const v0, 0x7f100118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->e:Landroid/widget/ImageView;

    .line 3304
    const v0, 0x7f100119

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    .line 3305
    const v0, 0x7f10011a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    .line 3306
    const v0, 0x7f10011c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    .line 3307
    const v0, 0x7f10011b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->i:Landroid/widget/TextView;

    .line 3308
    return-void
.end method
