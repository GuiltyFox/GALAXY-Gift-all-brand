.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CampaignDetailGiftActivity.java"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field final synthetic h:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2242
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->h:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    .line 2243
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2244
    const v0, 0x7f10010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 2245
    const v0, 0x7f1000d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->b:Landroid/widget/LinearLayout;

    .line 2246
    const v0, 0x7f10010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->c:Landroid/widget/ImageView;

    .line 2247
    const v0, 0x7f10010f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->d:Landroid/widget/TextView;

    .line 2248
    const v0, 0x7f100110

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->e:Landroid/widget/TextView;

    .line 2249
    const v0, 0x7f100112

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->f:Landroid/widget/TextView;

    .line 2250
    const v0, 0x7f100111

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter$CampaignViewHolder;->g:Landroid/widget/TextView;

    .line 2251
    return-void
.end method
