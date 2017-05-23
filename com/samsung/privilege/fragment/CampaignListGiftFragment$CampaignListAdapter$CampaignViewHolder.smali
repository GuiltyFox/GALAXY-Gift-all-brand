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
    .line 573
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->j:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    .line 574
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 576
    const v0, 0x7f1001f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->a:Landroid/view/View;

    .line 577
    const v0, 0x7f100228

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->b:Landroid/view/View;

    .line 579
    const v0, 0x7f10010f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->c:Landroid/support/v7/widget/CardView;

    .line 580
    const v0, 0x7f1000d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->d:Landroid/widget/LinearLayout;

    .line 581
    const v0, 0x7f100111

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->e:Landroid/widget/ImageView;

    .line 582
    const v0, 0x7f100112

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    .line 583
    const v0, 0x7f100113

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    .line 584
    const v0, 0x7f100115

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->h:Landroid/widget/TextView;

    .line 585
    const v0, 0x7f100114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter$CampaignViewHolder;->i:Landroid/widget/TextView;

    .line 586
    return-void
.end method
