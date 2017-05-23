.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CampaignDetailGiftActivity.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2138
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    .line 2139
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2140
    const v0, 0x7f10008e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter$CampaignImageViewHolder;->a:Landroid/widget/ImageView;

    .line 2141
    return-void
.end method
