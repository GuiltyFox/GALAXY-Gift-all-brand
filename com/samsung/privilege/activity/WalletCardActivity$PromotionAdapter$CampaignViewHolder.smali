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
    .line 2239
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->j:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    .line 2240
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2242
    const v0, 0x7f1001f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->a:Landroid/view/View;

    .line 2243
    const v0, 0x7f100224

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->b:Landroid/view/View;

    .line 2245
    const v0, 0x7f10010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->c:Landroid/support/v7/widget/CardView;

    .line 2246
    const v0, 0x7f1000ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->d:Landroid/widget/LinearLayout;

    .line 2247
    const v0, 0x7f10010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->e:Landroid/widget/ImageView;

    .line 2248
    const v0, 0x7f10010d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    .line 2249
    const v0, 0x7f10010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    .line 2250
    const v0, 0x7f100110

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    .line 2251
    const v0, 0x7f10010f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter$CampaignViewHolder;->i:Landroid/widget/TextView;

    .line 2252
    return-void
.end method
