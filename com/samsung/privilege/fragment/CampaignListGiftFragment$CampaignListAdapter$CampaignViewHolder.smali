.class public Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CampaignListGiftFragment.java"


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

.field final synthetic j:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 544
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->j:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    .line 545
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 547
    const v0, 0x7f1001f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->a:Landroid/view/View;

    .line 548
    const v0, 0x7f100214

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->b:Landroid/view/View;

    .line 550
    const v0, 0x7f10010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->c:Landroid/support/v7/widget/CardView;

    .line 551
    const v0, 0x7f1000ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->d:Landroid/widget/LinearLayout;

    .line 552
    const v0, 0x7f10010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->e:Landroid/widget/ImageView;

    .line 553
    const v0, 0x7f10010d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    .line 554
    const v0, 0x7f10010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    .line 555
    const v0, 0x7f100110

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    .line 556
    const v0, 0x7f10010f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->i:Landroid/widget/TextView;

    .line 557
    return-void
.end method
